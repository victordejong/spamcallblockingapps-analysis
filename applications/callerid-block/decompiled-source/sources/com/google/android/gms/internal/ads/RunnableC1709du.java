package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.du */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/du.class */
final /* synthetic */ class RunnableC1709du implements Runnable {

    /* renamed from: b */
    private final eu f6372b;

    /* renamed from: c */
    private final int f6373c;

    /* renamed from: d */
    private final int f6374d;

    /* renamed from: e */
    private final boolean f6375e;

    /* renamed from: f */
    private final boolean f6376f;

    RunnableC1709du(eu euVar, int i, int i2, boolean z, boolean z2) {
        this.f6372b = euVar;
        this.f6373c = i;
        this.f6374d = i2;
        this.f6375e = z;
        this.f6376f = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6372b.D6(this.f6373c, this.f6374d, this.f6375e, this.f6376f);
    }
}
