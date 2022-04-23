package com.google.android.gms.ads.internal.util;
/* renamed from: com.google.android.gms.ads.internal.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/a.class */
final class RunnableC1408a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC1457z f5554b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1408a(AbstractC1457z zVar) {
        this.f5554b = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5554b.f5654b = Thread.currentThread();
        this.f5554b.m8700a();
    }
}
