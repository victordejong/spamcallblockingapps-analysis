package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dow.class */
public final class dow implements Runnable {

    /* renamed from: a */
    private final dts f15223a;

    /* renamed from: b */
    private final ecj f15224b;

    /* renamed from: c */
    private final Runnable f15225c;

    public dow(dts dtsVar, ecj ecjVar, Runnable runnable) {
        this.f15223a = dtsVar;
        this.f15224b = ecjVar;
        this.f15225c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15223a.m8593h();
        if (this.f15224b.f16285c == null) {
            this.f15223a.mo6862a((dts) this.f15224b.f16283a);
        } else {
            this.f15223a.m8602a(this.f15224b.f16285c);
        }
        if (this.f15224b.f16286d) {
            this.f15223a.m8600b("intermediate-response");
        } else {
            this.f15223a.m8598c("done");
        }
        if (this.f15225c != null) {
            this.f15225c.run();
        }
    }
}
