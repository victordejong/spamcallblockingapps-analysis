package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzci.class */
final class zzci implements Callable<byte[]> {
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ String zzaqq;
    private final /* synthetic */ zzad zzaqr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzci(zzbv zzbvVar, zzad zzadVar, String str) {
        this.zzaqo = zzbvVar;
        this.zzaqr = zzadVar;
        this.zzaqq = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        return zzfaVar2.zza(this.zzaqr, this.zzaqq);
    }
}
