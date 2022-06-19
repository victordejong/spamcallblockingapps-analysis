package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15728b;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.components.v */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/v.class */
public final class C15652v<T> implements AbstractC15728b<Set<T>> {

    /* renamed from: b */
    private volatile Set<T> f56067b = null;

    /* renamed from: a */
    private volatile Set<AbstractC15728b<T>> f56066a = Collections.newSetFromMap(new ConcurrentHashMap());

    C15652v(Collection<AbstractC15728b<T>> collection) {
        this.f56066a.addAll(collection);
    }

    /* renamed from: a */
    public static C15652v<?> m8500a(Collection<AbstractC15728b<?>> collection) {
        return new C15652v<>((Set) collection);
    }

    /* renamed from: b */
    public Set<T> mo8476a() {
        if (this.f56067b == null) {
            synchronized (this) {
                if (this.f56067b == null) {
                    this.f56067b = Collections.newSetFromMap(new ConcurrentHashMap());
                    m8498c();
                }
            }
        }
        return Collections.unmodifiableSet(this.f56067b);
    }

    /* renamed from: c */
    private void m8498c() {
        synchronized (this) {
            for (AbstractC15728b<T> abstractC15728b : this.f56066a) {
                this.f56067b.add(abstractC15728b.mo8476a());
            }
            this.f56066a = null;
        }
    }

    /* renamed from: a */
    public final void m8501a(AbstractC15728b<T> abstractC15728b) {
        synchronized (this) {
            if (this.f56067b == null) {
                this.f56066a.add(abstractC15728b);
            } else {
                this.f56067b.add(abstractC15728b.mo8476a());
            }
        }
    }
}
