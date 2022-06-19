package com.google.firebase.components;

import com.google.firebase.p161a.AbstractC4855b;
import com.google.firebase.p161a.AbstractC4856c;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p161a.C4854a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/o.class */
public class C4900o implements AbstractC4856c, AbstractC4857d {

    /* renamed from: a */
    private final Map<Class<?>, ConcurrentHashMap<AbstractC4855b<Object>, Executor>> f21000a = new HashMap();

    /* renamed from: b */
    private Queue<C4854a<?>> f21001b = new ArrayDeque();

    /* renamed from: c */
    private final Executor f21002c;

    public C4900o(Executor executor) {
        this.f21002c = executor;
    }

    /* renamed from: b */
    private Set<Map.Entry<AbstractC4855b<Object>, Executor>> m2061b(C4854a<?> c4854a) {
        Set<Map.Entry<AbstractC4855b<Object>, Executor>> emptySet;
        synchronized (this) {
            ConcurrentHashMap<AbstractC4855b<Object>, Executor> concurrentHashMap = this.f21000a.get(c4854a.m2184a());
            emptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
        }
        return emptySet;
    }

    /* renamed from: a */
    public void m2066a() {
        Queue<C4854a<?>> queue = null;
        synchronized (this) {
            if (this.f21001b != null) {
                queue = this.f21001b;
                this.f21001b = null;
            }
        }
        if (queue != null) {
            for (C4854a<?> c4854a : queue) {
                m2065a(c4854a);
            }
        }
    }

    /* renamed from: a */
    public void m2065a(C4854a<?> c4854a) {
        C4903r.m2058a(c4854a);
        synchronized (this) {
            if (this.f21001b != null) {
                this.f21001b.add(c4854a);
                return;
            }
            for (Map.Entry<AbstractC4855b<Object>, Executor> entry : m2061b(c4854a)) {
                entry.getValue().execute(RunnableC4901p.m2060a(entry, c4854a));
            }
        }
    }

    @Override // com.google.firebase.p161a.AbstractC4857d
    /* renamed from: a */
    public <T> void mo2064a(Class<T> cls, AbstractC4855b<? super T> abstractC4855b) {
        mo2063a(cls, this.f21002c, abstractC4855b);
    }

    @Override // com.google.firebase.p161a.AbstractC4857d
    /* renamed from: a */
    public <T> void mo2063a(Class<T> cls, Executor executor, AbstractC4855b<? super T> abstractC4855b) {
        synchronized (this) {
            C4903r.m2058a(cls);
            C4903r.m2058a(abstractC4855b);
            C4903r.m2058a(executor);
            if (!this.f21000a.containsKey(cls)) {
                this.f21000a.put(cls, new ConcurrentHashMap<>());
            }
            this.f21000a.get(cls).put(abstractC4855b, executor);
        }
    }
}
