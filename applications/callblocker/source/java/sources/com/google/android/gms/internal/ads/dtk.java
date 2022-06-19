package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtk.class */
public final class dtk implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f15678a;

    /* renamed from: b */
    private final /* synthetic */ int f15679b;

    /* renamed from: c */
    private final /* synthetic */ int f15680c;

    /* renamed from: d */
    private final /* synthetic */ float f15681d;

    /* renamed from: e */
    private final /* synthetic */ dtd f15682e;

    public dtk(dtd dtdVar, int i, int i2, int i3, float f) {
        this.f15682e = dtdVar;
        this.f15678a = i;
        this.f15679b = i2;
        this.f15680c = i3;
        this.f15681d = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15682e.f15664b;
        dteVar.mo8634a(this.f15678a, this.f15679b, this.f15680c, this.f15681d);
    }
}
