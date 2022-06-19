package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zx.class */
final /* synthetic */ class RunnableC2079zx implements Runnable {

    /* renamed from: b */
    private final by f9449b;

    /* renamed from: c */
    private final Runnable f9450c;

    RunnableC2079zx(by byVar, Runnable runnable) {
        this.f9449b = byVar;
        this.f9450c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2073zo.f9414e.execute(new Runnable(this.f9449b, this.f9450c) { // from class: com.google.android.gms.internal.ads.ay

            /* renamed from: b */
            private final by f6103b;

            /* renamed from: c */
            private final Runnable f6104c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6103b = byVar;
                this.f6104c = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6103b.z6(this.f6104c);
            }
        });
    }
}
