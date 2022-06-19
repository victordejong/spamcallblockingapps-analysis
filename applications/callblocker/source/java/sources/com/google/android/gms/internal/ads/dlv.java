package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlv.class */
public final class dlv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f14695a;

    /* renamed from: b */
    private final /* synthetic */ long f14696b;

    /* renamed from: c */
    private final /* synthetic */ long f14697c;

    /* renamed from: d */
    private final /* synthetic */ dlt f14698d;

    public dlv(dlt dltVar, String str, long j, long j2) {
        this.f14698d = dltVar;
        this.f14695a = str;
        this.f14696b = j;
        this.f14697c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        dluVar = this.f14698d.f14694b;
        dluVar.m9180a(this.f14695a, this.f14696b, this.f14697c);
    }
}
