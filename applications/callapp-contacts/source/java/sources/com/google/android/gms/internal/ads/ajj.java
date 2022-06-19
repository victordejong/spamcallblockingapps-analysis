package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajj.class */
final class ajj implements dbi<String> {

    /* renamed from: a */
    private final /* synthetic */ ajk f42207a;

    public ajj(ajk ajkVar) {
        this.f42207a = ajkVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(String str) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        Context context;
        cpuVar = this.f42207a.f42214g;
        cuqVar = this.f42207a.f42213f;
        cpkVar = this.f42207a.f42211d;
        covVar = this.f42207a.f42212e;
        covVar2 = this.f42207a.f42212e;
        List<String> m17210a = cuqVar.m17210a(cpkVar, covVar, false, "", str, covVar2.f46256c);
        zzr.zzkv();
        context = this.f42207a.f42208a;
        cpuVar.m17353a(m17210a, zzj.zzbd(context) ? brp.f44573b : brp.f44572a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        cpu cpuVar;
        cuq cuqVar;
        cpk cpkVar;
        cov covVar;
        cov covVar2;
        Context context;
        cpuVar = this.f42207a.f42214g;
        cuqVar = this.f42207a.f42213f;
        cpkVar = this.f42207a.f42211d;
        covVar = this.f42207a.f42212e;
        covVar2 = this.f42207a.f42212e;
        List<String> m17210a = cuqVar.m17210a(cpkVar, covVar, false, "", "failure_click_attok", covVar2.f46256c);
        zzr.zzkv();
        context = this.f42207a.f42208a;
        cpuVar.m17353a(m17210a, zzj.zzbd(context) ? brp.f44573b : brp.f44572a);
    }
}
