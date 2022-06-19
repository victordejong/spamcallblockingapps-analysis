package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajn.class */
final class ajn implements dbi<String> {

    /* renamed from: a */
    private final /* synthetic */ String f42234a;

    /* renamed from: b */
    private final /* synthetic */ ajk f42235b;

    public ajn(ajk ajkVar, String str) {
        this.f42235b = ajkVar;
        this.f42234a = str;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(String str) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        cpuVar = this.f42235b.f42214g;
        cuqVar = this.f42235b.f42213f;
        cpkVar = this.f42235b.f42211d;
        covVar = this.f42235b.f42212e;
        String str2 = this.f42234a;
        covVar2 = this.f42235b.f42212e;
        cpuVar.m17354a(cuqVar.m17210a(cpkVar, covVar, false, str2, str, covVar2.f46257d));
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        cpuVar = this.f42235b.f42214g;
        cuqVar = this.f42235b.f42213f;
        cpkVar = this.f42235b.f42211d;
        covVar = this.f42235b.f42212e;
        String str = this.f42234a;
        covVar2 = this.f42235b.f42212e;
        cpuVar.m17354a(cuqVar.m17210a(cpkVar, covVar, false, str, null, covVar2.f46257d));
    }
}
