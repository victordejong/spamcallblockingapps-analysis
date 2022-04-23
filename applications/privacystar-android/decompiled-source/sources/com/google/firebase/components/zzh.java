package com.google.firebase.components;

import android.support.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
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
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzh.class */
class zzh implements Publisher, Subscriber {
    @GuardedBy("this")
    private final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> zza = new HashMap();
    @GuardedBy("this")
    private Queue<Event<?>> zzb = new ArrayDeque();
    private final Executor zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(Executor executor) {
        this.zzc = executor;
    }

    private Set<Map.Entry<EventHandler<Object>, Executor>> zza(Event<?> event) {
        synchronized (this) {
            ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.zza.get(event.getType());
            if (concurrentHashMap == null) {
                return Collections.emptySet();
            }
            return concurrentHashMap.entrySet();
        }
    }

    @Override // com.google.firebase.events.Publisher
    public void publish(Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            if (this.zzb != null) {
                this.zzb.add(event);
                return;
            }
            for (Map.Entry<EventHandler<Object>, Executor> entry : zza(event)) {
                entry.getValue().execute(zzi.zza(entry, event));
            }
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        subscribe(cls, this.zzc, eventHandler);
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        synchronized (this) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(eventHandler);
            Preconditions.checkNotNull(executor);
            if (!this.zza.containsKey(cls)) {
                this.zza.put(cls, new ConcurrentHashMap<>());
            }
            this.zza.get(cls).put(eventHandler, executor);
        }
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void unsubscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        synchronized (this) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(eventHandler);
            if (this.zza.containsKey(cls)) {
                ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.zza.get(cls);
                concurrentHashMap.remove(eventHandler);
                if (concurrentHashMap.isEmpty()) {
                    this.zza.remove(cls);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza() {
        Queue<Event<?>> queue;
        synchronized (this) {
            if (this.zzb != null) {
                queue = this.zzb;
                this.zzb = null;
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
}
