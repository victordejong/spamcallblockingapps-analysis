package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajn.class */
final class ajn implements dbi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23432a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ajk f23433b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajn(ajk ajkVar, String str) {
        this.f23433b = ajkVar;
        this.f23432a = str;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(String str) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        cpuVar = this.f23433b.g;
        cuqVar = this.f23433b.f;
        cpkVar = this.f23433b.f23425d;
        covVar = this.f23433b.e;
        String str2 = this.f23432a;
        covVar2 = this.f23433b.e;
        cpuVar.a(cuqVar.a(cpkVar, covVar, false, str2, str, covVar2.f26186d));
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        cpuVar = this.f23433b.g;
        cuqVar = this.f23433b.f;
        cpkVar = this.f23433b.f23425d;
        covVar = this.f23433b.e;
        String str = this.f23432a;
        covVar2 = this.f23433b.e;
        cpuVar.a(cuqVar.a(cpkVar, covVar, false, str, null, covVar2.f26186d));
    }
}
