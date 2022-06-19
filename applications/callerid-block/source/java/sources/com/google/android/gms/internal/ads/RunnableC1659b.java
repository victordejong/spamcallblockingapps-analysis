package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/b.class */
public final class RunnableC1659b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f6105b;

    /* renamed from: c */
    final /* synthetic */ long f6106c;

    /* renamed from: d */
    final /* synthetic */ AbstractC1676c1 f6107d;

    public RunnableC1659b(AbstractC1676c1 abstractC1676c1, String str, long j) {
        this.f6107d = abstractC1676c1;
        this.f6105b = str;
        this.f6106c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1717eb c1717eb;
        C1717eb c1717eb2;
        c1717eb = this.f6107d.f6231b;
        c1717eb.m7662a(this.f6105b, this.f6106c);
        c1717eb2 = this.f6107d.f6231b;
        c1717eb2.m7661b(this.f6107d.toString());
    }
}
