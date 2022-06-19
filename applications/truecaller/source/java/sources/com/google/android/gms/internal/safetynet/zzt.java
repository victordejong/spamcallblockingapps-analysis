package com.google.android.gms.internal.safetynet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.safetynet.zzk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzt.class */
public final class zzt extends zze {
    private final /* synthetic */ zzk.zzc zzah;

    public zzt(zzk.zzc zzcVar) {
        this.zzah = zzcVar;
    }

    @Override // com.google.android.gms.internal.safetynet.zze, com.google.android.gms.internal.safetynet.zzg
    public final void zza(Status status, boolean z) {
        this.zzah.setResult((zzk.zzc) new zzk.zzj(status, z));
    }
}
