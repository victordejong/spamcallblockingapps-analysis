package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fa.class */
public final class fa<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f27992a;

    /* renamed from: b  reason: collision with root package name */
    public final eap f27993b;

    /* renamed from: c  reason: collision with root package name */
    public final zzap f27994c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f27995d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(zzap zzapVar) {
        this.f27995d = false;
        this.f27992a = null;
        this.f27993b = null;
        this.f27994c = zzapVar;
    }

    private fa(T t, eap eapVar) {
        this.f27995d = false;
        this.f27992a = t;
        this.f27993b = eapVar;
        this.f27994c = null;
    }

    public static <T> fa<T> a(T t, eap eapVar) {
        return new fa<>(t, eapVar);
    }

    public final boolean a() {
        return this.f27994c == null;
    }
}
