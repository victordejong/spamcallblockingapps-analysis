package com.google.firebase.components;

import com.google.firebase.p163c.AbstractC4877a;
/* renamed from: com.google.firebase.components.q */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/q.class */
public class C4902q<T> implements AbstractC4877a<T> {

    /* renamed from: a */
    private static final Object f21005a = new Object();

    /* renamed from: b */
    private volatile Object f21006b = f21005a;

    /* renamed from: c */
    private volatile AbstractC4877a<T> f21007c;

    public C4902q(AbstractC4877a<T> abstractC4877a) {
        this.f21007c = abstractC4877a;
    }

    @Override // com.google.firebase.p163c.AbstractC4877a
    /* renamed from: a */
    public T mo2059a() {
        Object obj = this.f21006b;
        T t = obj;
        if (obj == f21005a) {
            synchronized (this) {
                Object obj2 = this.f21006b;
                t = obj2;
                if (obj2 == f21005a) {
                    t = this.f21007c.mo2059a();
                    this.f21006b = t;
                    this.f21007c = null;
                }
            }
        }
        return (T) t;
    }
}
