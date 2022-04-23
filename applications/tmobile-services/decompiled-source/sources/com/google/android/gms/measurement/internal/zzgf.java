package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgf.class */
final class zzgf implements Callable<List<zzw>> {

    /* renamed from: f */
    private final /* synthetic */ zzn f9330f;

    /* renamed from: g */
    private final /* synthetic */ String f9331g;

    /* renamed from: h */
    private final /* synthetic */ String f9332h;

    /* renamed from: i */
    private final /* synthetic */ zzfw f9333i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgf(zzfw zzfwVar, zzn zznVar, String str, String str2) {
        this.f9333i = zzfwVar;
        this.f9330f = zznVar;
        this.f9331g = str;
        this.f9332h = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzw> call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9333i.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9333i.f9302a;
        return zzkiVar2.m11084a0().m11761j0(this.f9330f.f9725f, this.f9331g, this.f9332h);
    }
}
