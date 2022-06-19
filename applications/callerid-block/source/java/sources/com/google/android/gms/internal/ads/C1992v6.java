package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.v6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v6.class */
public final class C1992v6<T> {

    /* renamed from: a */
    public final T f8868a;

    /* renamed from: b */
    public final dn2 f8869b;

    /* renamed from: c */
    public final zzal f8870c;

    /* renamed from: d */
    public boolean f8871d;

    private C1992v6(zzal zzalVar) {
        this.f8871d = false;
        this.f8868a = null;
        this.f8869b = null;
        this.f8870c = zzalVar;
    }

    private C1992v6(T t, dn2 dn2Var) {
        this.f8871d = false;
        this.f8868a = t;
        this.f8869b = dn2Var;
        this.f8870c = null;
    }

    /* renamed from: a */
    public static <T> C1992v6<T> m5311a(T t, dn2 dn2Var) {
        return new C1992v6<>(t, dn2Var);
    }

    /* renamed from: b */
    public static <T> C1992v6<T> m5310b(zzal zzalVar) {
        return new C1992v6<>(zzalVar);
    }

    /* renamed from: c */
    public final boolean m5309c() {
        return this.f8870c == null;
    }
}
