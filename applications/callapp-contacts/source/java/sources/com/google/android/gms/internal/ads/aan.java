package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aan.class */
final /* synthetic */ class aan implements Runnable {

    /* renamed from: a */
    private final zzbbz f39713a;

    private aan(zzbbz zzbbzVar) {
        this.f39713a = zzbbzVar;
    }

    /* renamed from: a */
    public static Runnable m18949a(zzbbz zzbbzVar) {
        return new aan(zzbbzVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39713a.mo13839b();
    }
}
