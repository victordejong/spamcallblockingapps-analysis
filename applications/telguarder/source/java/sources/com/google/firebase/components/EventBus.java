package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/EventBus.class */
public class EventBus implements Subscriber, Publisher {
    private final Executor defaultExecutor;
    private final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> handlerMap = new HashMap();
    private Queue<Event<?>> pendingEvents = new ArrayDeque();

    public EventBus(Executor executor) {
        this.defaultExecutor = executor;
    }

    private Set<Map.Entry<EventHandler<Object>, Executor>> getHandlers(Event<?> event) {
        Set<Map.Entry<EventHandler<Object>, Executor>> emptySet;
        synchronized (this) {
            ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.handlerMap.get(event.getType());
            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
        }
        return emptySet;
    }

    public void enablePublishingAndFlushPending() {
        Queue<Event<?>> queue;
        synchronized (this) {
            queue = this.pendingEvents;
            if (queue != null) {
                this.pendingEvents = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (Event<?> event : queue) {
                publish(event);
            }
        }
    }

    @Override // com.google.firebase.events.Publisher
    public void publish(Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            Queue<Event<?>> queue = this.pendingEvents;
            if (queue != null) {
                queue.add(event);
                return;
            }
            for (Map.Entry<EventHandler<Object>, Executor> entry : getHandlers(event)) {
                entry.getValue().execute(EventBus$$Lambda$1.lambdaFactory$(entry, event));
            }
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        subscribe(cls, this.defaultExecutor, eventHandler);
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        synchronized (this) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(eventHandler);
            Preconditions.checkNotNull(executor);
            if (!this.handlerMap.containsKey(cls)) {
                this.handlerMap.put(cls, new ConcurrentHashMap<>());
            }
            this.handlerMap.get(cls).put(eventHandler, executor);
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void unsubscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        synchronized (this) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(eventHandler);
            if (!this.handlerMap.containsKey(cls)) {
                return;
            }
            ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.handlerMap.get(cls);
            concurrentHashMap.remove(eventHandler);
            if (concurrentHashMap.isEmpty()) {
                this.handlerMap.remove(cls);
            }
        }
    }
}
