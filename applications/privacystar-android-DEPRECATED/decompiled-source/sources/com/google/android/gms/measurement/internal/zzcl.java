package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcl.class */
final class zzcl implements Callable<List<zzfj>> {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcl(zzbv zzbvVar, zzh zzhVar) {
        this.zzaqo = zzbvVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzfj> call() throws Exception {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        return zzfaVar2.zzjq().zzbk(this.zzaqn.packageName);
    }
}
