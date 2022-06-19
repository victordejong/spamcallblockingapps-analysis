package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dly.class */
public final class dly implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f14702a;

    /* renamed from: b */
    private final /* synthetic */ long f14703b;

    /* renamed from: c */
    private final /* synthetic */ long f14704c;

    /* renamed from: d */
    private final /* synthetic */ dlt f14705d;

    public dly(dlt dltVar, int i, long j, long j2) {
        this.f14705d = dltVar;
        this.f14702a = i;
        this.f14703b = j;
        this.f14704c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        dluVar = this.f14705d.f14694b;
        dluVar.m9183a(this.f14702a, this.f14703b, this.f14704c);
    }
}
