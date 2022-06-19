package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.components.t */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/t.class */
public class C8884t<T> implements AbstractC9247b<T> {

    /* renamed from: a */
    private static final Object f38844a = new Object();

    /* renamed from: b */
    private volatile Object f38845b = f38844a;

    /* renamed from: c */
    private volatile AbstractC9247b<T> f38846c;

    public C8884t(AbstractC9247b<T> abstractC9247b) {
        this.f38846c = abstractC9247b;
    }

    @Override // com.google.firebase.p313k.AbstractC9247b
    public T get() {
        Object obj = this.f38845b;
        Object obj2 = f38844a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f38845b;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f38846c.get();
                    this.f38845b = t;
                    this.f38846c = null;
                }
            }
        }
        return (T) t;
    }
}
