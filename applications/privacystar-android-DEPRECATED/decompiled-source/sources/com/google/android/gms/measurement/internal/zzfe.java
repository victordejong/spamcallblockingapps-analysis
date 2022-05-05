package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final class zzfe implements Callable<String> {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzfa zzaty;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfe(zzfa zzfaVar, zzh zzhVar) {
        this.zzaty = zzfaVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzg zzg = this.zzaty.zzgq().zzbd(this.zzaqn.packageName) ? this.zzaty.zzg(this.zzaqn) : this.zzaty.zzjq().zzbl(this.zzaqn.packageName);
        if (zzg != null) {
            return zzg.getAppInstanceId();
        }
        this.zzaty.zzgo().zzjg().zzbx("App info was null when attempting to get app instance id");
        return null;
    }
}
