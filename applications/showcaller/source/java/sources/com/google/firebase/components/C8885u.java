package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.components.u */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/u.class */
public class C8885u<T> implements AbstractC9247b<Set<T>> {

    /* renamed from: b */
    private volatile Set<T> f38848b = null;

    /* renamed from: a */
    private volatile Set<AbstractC9247b<T>> f38847a = Collections.newSetFromMap(new ConcurrentHashMap());

    C8885u(Collection<AbstractC9247b<T>> collection) {
        this.f38847a.addAll(collection);
    }

    /* renamed from: b */
    public static C8885u<?> m2430b(Collection<AbstractC9247b<?>> collection) {
        return new C8885u<>((Set) collection);
    }

    /* renamed from: d */
    private void m2428d() {
        synchronized (this) {
            for (AbstractC9247b<T> abstractC9247b : this.f38847a) {
                this.f38848b.add(abstractC9247b.get());
            }
            this.f38847a = null;
        }
    }

    /* renamed from: a */
    public void m2431a(AbstractC9247b<T> abstractC9247b) {
        synchronized (this) {
            if (this.f38848b == null) {
                this.f38847a.add(abstractC9247b);
            } else {
                this.f38848b.add(abstractC9247b.get());
            }
        }
    }

    /* renamed from: c */
    public Set<T> get() {
        if (this.f38848b == null) {
            synchronized (this) {
                if (this.f38848b == null) {
                    this.f38848b = Collections.newSetFromMap(new ConcurrentHashMap());
                    m2428d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f38848b);
    }
}
