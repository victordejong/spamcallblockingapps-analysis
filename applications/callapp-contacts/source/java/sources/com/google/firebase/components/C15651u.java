package com.google.firebase.components;

import com.google.firebase.p391d.AbstractC15728b;
/* renamed from: com.google.firebase.components.u */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/u.class */
public final class C15651u<T> implements AbstractC15728b<T> {

    /* renamed from: a */
    private static final Object f56063a = new Object();

    /* renamed from: b */
    private volatile Object f56064b;

    /* renamed from: c */
    private volatile AbstractC15728b<T> f56065c;

    public C15651u(AbstractC15728b<T> abstractC15728b) {
        this.f56064b = f56063a;
        this.f56065c = abstractC15728b;
    }

    C15651u(T t) {
        this.f56064b = f56063a;
        this.f56064b = t;
    }

    @Override // com.google.firebase.p391d.AbstractC15728b
    /* renamed from: a */
    public final T mo8476a() {
        Object obj = this.f56064b;
        Object obj2 = f56063a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f56064b;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f56065c.mo8476a();
                    this.f56064b = t;
                    this.f56065c = null;
                }
            }
        }
        return (T) t;
    }
}
