package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgn.class */
final class zzgn implements Callable<List<zzkt>> {

    /* renamed from: f */
    private final /* synthetic */ zzn f9352f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9353g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgn(zzfw zzfwVar, zzn zznVar) {
        this.f9353g = zzfwVar;
        this.f9352f = zznVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzkt> call() throws Exception {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9353g.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9353g.f9302a;
        return zzkiVar2.m11084a0().m11790H(this.f9352f.f9725f);
    }
}
