package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xj0.class */
final class xj0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ boolean f32066d;

    /* renamed from: e */
    final /* synthetic */ zzcip f32067e;

    public xj0(zzcip zzcipVar, boolean z) {
        this.f32067e = zzcipVar;
        this.f32066d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32067e.m8029r("windowVisibilityChanged", "isVisible", String.valueOf(this.f32066d));
    }
}
