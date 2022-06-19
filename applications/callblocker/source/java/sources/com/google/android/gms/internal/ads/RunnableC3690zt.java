package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zt.class */
final class RunnableC3690zt implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f17718a;

    /* renamed from: b */
    private final /* synthetic */ C3687zq f17719b;

    public RunnableC3690zt(C3687zq c3687zq, boolean z) {
        this.f17719b = c3687zq;
        this.f17718a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17719b.m6672b("windowVisibilityChanged", "isVisible", String.valueOf(this.f17718a));
    }
}
