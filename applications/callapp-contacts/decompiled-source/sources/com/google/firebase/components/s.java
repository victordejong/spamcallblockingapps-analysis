package com.google.firebase.components;

import com.google.firebase.b.a;
import com.google.firebase.b.b;
import com.google.firebase.b.c;
import com.google.firebase.b.d;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/s.class */
class s implements c, d {

    /* renamed from: c  reason: collision with root package name */
    private final Executor f32280c;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<b<Object>, Executor>> f32279b = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    Queue<a<?>> f32278a = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Executor executor) {
        this.f32280c = executor;
    }

    private Set<Map.Entry<b<Object>, Executor>> b(a<?> aVar) {
        synchronized (this) {
            ConcurrentHashMap<b<Object>, Executor> concurrentHashMap = this.f32279b.get(aVar.f32214a);
            if (concurrentHashMap == null) {
                return Collections.emptySet();
            }
            return concurrentHashMap.entrySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a<?> aVar) {
        z.a(aVar);
        synchronized (this) {
            Queue<a<?>> queue = this.f32278a;
            if (queue != null) {
                queue.add(aVar);
                return;
            }
            for (Map.Entry<b<Object>, Executor> entry : b(aVar)) {
                entry.getValue().execute(t.a(entry, aVar));
            }
        }
    }

    @Override // com.google.firebase.b.d
    public final <T> void a(Class<T> cls, b<? super T> bVar) {
        a(cls, this.f32280c, bVar);
    }

    @Override // com.google.firebase.b.d
    public final <T> void a(Class<T> cls, Executor executor, b<? super T> bVar) {
        synchronized (this) {
            z.a(cls);
            z.a(bVar);
            z.a(executor);
            if (!this.f32279b.containsKey(cls)) {
                this.f32279b.put(cls, new ConcurrentHashMap<>());
            }
            this.f32279b.get(cls).put(bVar, executor);
        }
    }
}
