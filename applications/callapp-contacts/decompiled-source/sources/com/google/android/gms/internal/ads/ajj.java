package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajj.class */
final class ajj implements dbi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ajk f23421a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajj(ajk ajkVar) {
        this.f23421a = ajkVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(String str) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        Context context;
        cpuVar = this.f23421a.g;
        cuqVar = this.f23421a.f;
        cpkVar = this.f23421a.f23425d;
        covVar = this.f23421a.e;
        covVar2 = this.f23421a.e;
        List<String> a2 = cuqVar.a(cpkVar, covVar, false, "", str, covVar2.f26185c);
        zzr.zzkv();
        context = this.f23421a.f23422a;
        cpuVar.a(a2, zzj.zzbd(context) ? brp.f24957b : brp.f24956a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        Context context;
        cpuVar = this.f23421a.g;
        cuqVar = this.f23421a.f;
        cpkVar = this.f23421a.f23425d;
        covVar = this.f23421a.e;
        covVar2 = this.f23421a.e;
        List<String> a2 = cuqVar.a(cpkVar, covVar, false, "", "failure_click_attok", covVar2.f26185c);
        zzr.zzkv();
        context = this.f23421a.f23422a;
        cpuVar.a(a2, zzj.zzbd(context) ? brp.f24957b : brp.f24956a);
    }
}
