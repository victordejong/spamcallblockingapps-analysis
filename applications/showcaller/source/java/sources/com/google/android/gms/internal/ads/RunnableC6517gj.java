package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.gj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gj.class */
public final class RunnableC6517gj implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f23359d;

    /* renamed from: e */
    final /* synthetic */ int f23360e;

    /* renamed from: f */
    final /* synthetic */ int f23361f;

    /* renamed from: g */
    final /* synthetic */ float f23362g;

    /* renamed from: h */
    final /* synthetic */ C6629jj f23363h;

    public RunnableC6517gj(C6629jj c6629jj, int i, int i2, int i3, float f) {
        this.f23363h = c6629jj;
        this.f23359d = i;
        this.f23360e = i2;
        this.f23361f = i3;
        this.f23362g = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC6666kj abstractC6666kj;
        abstractC6666kj = this.f23363h.f24892b;
        abstractC6666kj.mo11395i(this.f23359d, this.f23360e, this.f23361f, this.f23362g);
    }
}
