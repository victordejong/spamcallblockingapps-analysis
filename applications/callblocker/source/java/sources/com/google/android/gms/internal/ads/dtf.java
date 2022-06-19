package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtf.class */
public final class dtf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f15665a;

    /* renamed from: b */
    private final /* synthetic */ long f15666b;

    /* renamed from: c */
    private final /* synthetic */ long f15667c;

    /* renamed from: d */
    private final /* synthetic */ dtd f15668d;

    public dtf(dtd dtdVar, String str, long j, long j2) {
        this.f15668d = dtdVar;
        this.f15665a = str;
        this.f15666b = j;
        this.f15667c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15668d.f15664b;
        dteVar.mo8629a(this.f15665a, this.f15666b, this.f15667c);
    }
}
