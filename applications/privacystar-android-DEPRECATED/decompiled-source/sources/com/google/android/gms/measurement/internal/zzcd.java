package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcd.class */
final class zzcd implements Callable<List<zzl>> {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcd(zzbv zzbvVar, zzh zzhVar, String str, String str2) {
        this.zzaqo = zzbvVar;
        this.zzaqn = zzhVar;
        this.zzaeh = str;
        this.zzaeo = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzl> call() throws Exception {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        return zzfaVar2.zzjq().zzc(this.zzaqn.packageName, this.zzaeh, this.zzaeo);
    }
}
