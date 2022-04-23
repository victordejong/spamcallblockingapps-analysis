package com.google.firebase.components;

import com.google.firebase.d.b;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/u.class */
public final class u<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f32283a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f32284b;

    /* renamed from: c  reason: collision with root package name */
    private volatile b<T> f32285c;

    public u(b<T> bVar) {
        this.f32284b = f32283a;
        this.f32285c = bVar;
    }

    u(T t) {
        this.f32284b = f32283a;
        this.f32284b = t;
    }

    @Override // com.google.firebase.d.b
    public final T a() {
        Object obj = this.f32284b;
        Object obj2 = f32283a;
        T t = (T) obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f32284b;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f32285c.a();
                    this.f32284b = t;
                    this.f32285c = null;
                }
            }
        }
        return t;
    }
}
