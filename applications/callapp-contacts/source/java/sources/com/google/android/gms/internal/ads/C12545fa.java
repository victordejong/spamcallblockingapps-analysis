package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.fa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fa.class */
public final class C12545fa<T> {

    /* renamed from: a */
    public final T f49280a;

    /* renamed from: b */
    public final eap f49281b;

    /* renamed from: c */
    public final zzap f49282c;

    /* renamed from: d */
    public boolean f49283d;

    public C12545fa(zzap zzapVar) {
        this.f49283d = false;
        this.f49280a = null;
        this.f49281b = null;
        this.f49282c = zzapVar;
    }

    private C12545fa(T t, eap eapVar) {
        this.f49283d = false;
        this.f49280a = t;
        this.f49281b = eapVar;
        this.f49282c = null;
    }

    /* renamed from: a */
    public static <T> C12545fa<T> m14680a(T t, eap eapVar) {
        return new C12545fa<>(t, eapVar);
    }

    /* renamed from: a */
    public final boolean m14681a() {
        return this.f49282c == null;
    }
}
