package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aar.class */
final class aar implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f39720a;

    /* renamed from: b */
    private final /* synthetic */ zzbcb f39721b;

    public aar(zzbcb zzbcbVar, boolean z) {
        this.f39721b = zzbcbVar;
        this.f39720a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39721b.m13865a("windowVisibilityChanged", "isVisible", String.valueOf(this.f39720a));
    }
}
