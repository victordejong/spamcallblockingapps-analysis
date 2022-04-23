package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgd.class */
final class zzgd implements Callable<List<zzkt>> {

    /* renamed from: f */
    private final /* synthetic */ zzn f9322f;

    /* renamed from: g */
    private final /* synthetic */ String f9323g;

    /* renamed from: h */
    private final /* synthetic */ String f9324h;

    /* renamed from: i */
    private final /* synthetic */ zzfw f9325i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgd(zzfw zzfwVar, zzn zznVar, String str, String str2) {
        this.f9325i = zzfwVar;
        this.f9322f = zznVar;
        this.f9323g = str;
        this.f9324h = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkt> call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9325i.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9325i.f9302a;
        return zzkiVar2.m11084a0().m11787J(this.f9322f.f9725f, this.f9323g, this.f9324h);
    }
}
