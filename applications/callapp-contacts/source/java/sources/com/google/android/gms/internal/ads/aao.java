package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aao.class */
final class aao implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzbcb f39714a;

    public aao(zzbcb zzbcbVar) {
        this.f39714a = zzbcbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39714a.m13865a("surfaceDestroyed", new String[0]);
    }
}
