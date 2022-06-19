package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hy.class */
final class RunnableC3209hy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16734a;

    /* renamed from: b */
    private final /* synthetic */ C3202hr f16735b;

    public RunnableC3209hy(C3202hr c3202hr, String str) {
        this.f16735b = c3202hr;
        this.f16734a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        act actVar;
        actVar = this.f16735b.f16721a;
        actVar.loadUrl(this.f16734a);
    }
}
