package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dss.class */
public final class dss<T> implements dsv<T> {

    /* renamed from: a */
    private static final Object f47520a = new Object();

    /* renamed from: b */
    private volatile dsv<T> f47521b;

    /* renamed from: c */
    private volatile Object f47522c = f47520a;

    private dss(dsv<T> dsvVar) {
        this.f47521b = dsvVar;
    }

    /* renamed from: a */
    public static <P extends dsv<T>, T> dsv<T> m15762a(P p) {
        return ((p instanceof dss) || (p instanceof dsj)) ? p : new dss((dsv) dso.m15767a(p));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final T mo14005a() {
        Object obj = this.f47522c;
        T t = obj;
        if (obj == f47520a) {
            dsv<T> dsvVar = this.f47521b;
            if (dsvVar == null) {
                t = this.f47522c;
            } else {
                t = dsvVar.mo14005a();
                this.f47522c = t;
                this.f47521b = null;
            }
        }
        return (T) t;
    }
}
