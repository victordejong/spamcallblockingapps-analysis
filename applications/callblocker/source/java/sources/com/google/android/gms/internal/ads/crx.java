package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crx.class */
final class crx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Runnable f13623a;

    /* renamed from: b */
    private final /* synthetic */ cru f13624b;

    public crx(cru cruVar, Runnable runnable) {
        this.f13624b = cruVar;
        this.f13623a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13624b.f13619a = false;
        this.f13623a.run();
    }
}
