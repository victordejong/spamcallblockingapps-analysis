package com.google.firebase.components;

import com.google.firebase.p389b.AbstractC15607b;
import com.google.firebase.p389b.AbstractC15608c;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p389b.C15606a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.s */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/s.class */
class C15649s implements AbstractC15608c, AbstractC15609d {

    /* renamed from: c */
    private final Executor f56060c;

    /* renamed from: b */
    private final Map<Class<?>, ConcurrentHashMap<AbstractC15607b<Object>, Executor>> f56059b = new HashMap();

    /* renamed from: a */
    Queue<C15606a<?>> f56058a = new ArrayDeque();

    public C15649s(Executor executor) {
        this.f56060c = executor;
    }

    /* renamed from: b */
    private Set<Map.Entry<AbstractC15607b<Object>, Executor>> m8503b(C15606a<?> c15606a) {
        synchronized (this) {
            ConcurrentHashMap<AbstractC15607b<Object>, Executor> concurrentHashMap = this.f56059b.get(c15606a.f55988a);
            if (concurrentHashMap == null) {
                return Collections.emptySet();
            }
            return concurrentHashMap.entrySet();
        }
    }

    /* renamed from: a */
    public void m8507a(C15606a<?> c15606a) {
        C15656z.m8492a(c15606a);
        synchronized (this) {
            Queue<C15606a<?>> queue = this.f56058a;
            if (queue != null) {
                queue.add(c15606a);
                return;
            }
            for (Map.Entry<AbstractC15607b<Object>, Executor> entry : m8503b(c15606a)) {
                entry.getValue().execute(RunnableC15650t.m8502a(entry, c15606a));
            }
        }
    }

    @Override // com.google.firebase.p389b.AbstractC15609d
    /* renamed from: a */
    public final <T> void mo8506a(Class<T> cls, AbstractC15607b<? super T> abstractC15607b) {
        mo8505a(cls, this.f56060c, abstractC15607b);
    }

    @Override // com.google.firebase.p389b.AbstractC15609d
    /* renamed from: a */
    public final <T> void mo8505a(Class<T> cls, Executor executor, AbstractC15607b<? super T> abstractC15607b) {
        synchronized (this) {
            C15656z.m8492a(cls);
            C15656z.m8492a(abstractC15607b);
            C15656z.m8492a(executor);
            if (!this.f56059b.containsKey(cls)) {
                this.f56059b.put(cls, new ConcurrentHashMap<>());
            }
            this.f56059b.get(cls).put(abstractC15607b, executor);
        }
    }
}
