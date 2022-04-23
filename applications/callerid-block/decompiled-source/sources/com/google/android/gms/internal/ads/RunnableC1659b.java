package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/b.class */
public final class RunnableC1659b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f6105b;

    /* renamed from: c */
    final /* synthetic */ long f6106c;

    /* renamed from: d */
    final /* synthetic */ AbstractC1676c1 f6107d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1659b(AbstractC1676c1 c1Var, String str, long j) {
        this.f6107d = c1Var;
        this.f6105b = str;
        this.f6106c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1717eb ebVar;
        C1717eb ebVar2;
        ebVar = this.f6107d.f6231b;
        ebVar.m7662a(this.f6105b, this.f6106c);
        ebVar2 = this.f6107d.f6231b;
        ebVar2.m7661b(this.f6107d.toString());
    }
}
