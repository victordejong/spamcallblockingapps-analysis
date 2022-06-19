package com.google.firebase.components;

import com.google.firebase.p312j.AbstractC9243b;
import com.google.firebase.p312j.AbstractC9244c;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p312j.C9242a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.s */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/s.class */
class C8883s implements AbstractC9245d, AbstractC9244c {

    /* renamed from: a */
    private final Map<Class<?>, ConcurrentHashMap<AbstractC9243b<Object>, Executor>> f38841a = new HashMap();

    /* renamed from: b */
    private Queue<C9242a<?>> f38842b = new ArrayDeque();

    /* renamed from: c */
    private final Executor f38843c;

    public C8883s(Executor executor) {
        this.f38843c = executor;
    }

    /* renamed from: d */
    private Set<Map.Entry<AbstractC9243b<Object>, Executor>> m2434d(C9242a<?> c9242a) {
        Set<Map.Entry<AbstractC9243b<Object>, Executor>> emptySet;
        synchronized (this) {
            ConcurrentHashMap<AbstractC9243b<Object>, Executor> concurrentHashMap = this.f38841a.get(c9242a.m1419b());
            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
        }
        return emptySet;
    }

    @Override // com.google.firebase.p312j.AbstractC9245d
    /* renamed from: a */
    public <T> void mo1418a(Class<T> cls, AbstractC9243b<? super T> abstractC9243b) {
        mo1417b(cls, this.f38843c, abstractC9243b);
    }

    @Override // com.google.firebase.p312j.AbstractC9245d
    /* renamed from: b */
    public <T> void mo1417b(Class<T> cls, Executor executor, AbstractC9243b<? super T> abstractC9243b) {
        synchronized (this) {
            C8889y.m2420b(cls);
            C8889y.m2420b(abstractC9243b);
            C8889y.m2420b(executor);
            if (!this.f38841a.containsKey(cls)) {
                this.f38841a.put(cls, new ConcurrentHashMap<>());
            }
            this.f38841a.get(cls).put(abstractC9243b, executor);
        }
    }

    /* renamed from: c */
    public void m2435c() {
        Queue<C9242a<?>> queue;
        synchronized (this) {
            queue = this.f38842b;
            if (queue != null) {
                this.f38842b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (C9242a<?> c9242a : queue) {
                m2432f(c9242a);
            }
        }
    }

    /* renamed from: f */
    public void m2432f(C9242a<?> c9242a) {
        C8889y.m2420b(c9242a);
        synchronized (this) {
            Queue<C9242a<?>> queue = this.f38842b;
            if (queue != null) {
                queue.add(c9242a);
                return;
            }
            for (Map.Entry<AbstractC9243b<Object>, Executor> entry : m2434d(c9242a)) {
                entry.getValue().execute(RunnableC8882r.m2436a(entry, c9242a));
            }
        }
    }
}
