package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dss.class */
public final class dss<T> implements dsv<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f27164a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile dsv<T> f27165b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Object f27166c = f27164a;

    private dss(dsv<T> dsvVar) {
        this.f27165b = dsvVar;
    }

    public static <P extends dsv<T>, T> dsv<T> a(P p) {
        return ((p instanceof dss) || (p instanceof dsj)) ? p : new dss((dsv) dso.a(p));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final T a() {
        Object obj = this.f27166c;
        T t = (T) obj;
        if (obj == f27164a) {
            dsv<T> dsvVar = this.f27165b;
            if (dsvVar == null) {
                t = (T) this.f27166c;
            } else {
                t = dsvVar.a();
                this.f27166c = t;
                this.f27165b = null;
            }
        }
        return t;
    }
}
