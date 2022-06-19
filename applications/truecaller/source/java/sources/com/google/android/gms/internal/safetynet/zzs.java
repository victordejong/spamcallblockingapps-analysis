package com.google.android.gms.internal.safetynet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.safetynet.zzk;
import com.google.android.gms.safetynet.zza;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzs.class */
public final class zzs extends zze {
    private final /* synthetic */ zzk.zzb zzag;

    public zzs(zzk.zzb zzbVar) {
        this.zzag = zzbVar;
    }

    @Override // com.google.android.gms.internal.safetynet.zze, com.google.android.gms.internal.safetynet.zzg
    public final void zza(Status status, zza zzaVar) {
        this.zzag.setResult((zzk.zzb) new zzk.zza(status, zzaVar));
    }
}
