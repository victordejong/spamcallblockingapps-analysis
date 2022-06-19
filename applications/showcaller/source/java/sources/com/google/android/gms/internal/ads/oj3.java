package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oj3.class */
public final class oj3<T> implements pj3<T> {

    /* renamed from: a */
    private static final Object f27578a = new Object();

    /* renamed from: b */
    private volatile pj3<T> f27579b;

    /* renamed from: c */
    private volatile Object f27580c = f27578a;

    private oj3(pj3<T> pj3Var) {
        this.f27579b = pj3Var;
    }

    /* renamed from: a */
    public static <P extends pj3<T>, T> pj3<T> m12643a(P p) {
        if ((p instanceof oj3) || (p instanceof aj3)) {
            return p;
        }
        Objects.requireNonNull(p);
        return new oj3(p);
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final T mo8141b() {
        Object obj = this.f27580c;
        T t = obj;
        if (obj == f27578a) {
            pj3<T> pj3Var = this.f27579b;
            if (pj3Var == null) {
                t = this.f27580c;
            } else {
                t = pj3Var.mo8141b();
                this.f27580c = t;
                this.f27579b = null;
            }
        }
        return (T) t;
    }
}
