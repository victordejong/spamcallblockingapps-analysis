package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ic */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ic.class */
final /* synthetic */ class RunnableC1783ic implements Runnable {

    /* renamed from: b */
    private final pb f6797b;

    private RunnableC1783ic(pb pbVar) {
        this.f6797b = pbVar;
    }

    /* renamed from: a */
    public static Runnable m7190a(pb pbVar) {
        return new RunnableC1783ic(pbVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6797b.i();
    }
}
