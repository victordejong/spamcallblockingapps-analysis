package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hv.class */
final class RunnableC3206hv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f16726a;

    /* renamed from: b */
    private final /* synthetic */ C3202hr f16727b;

    public RunnableC3206hv(C3202hr c3202hr, String str) {
        this.f16727b = c3202hr;
        this.f16726a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        act actVar;
        actVar = this.f16727b.f16721a;
        actVar.loadData(this.f16726a, "text/html", "UTF-8");
    }
}
