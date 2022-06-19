package com.google.android.gms.internal.safetynet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.safetynet.zzk;
import com.google.android.gms.safetynet.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzu.class */
public final class zzu extends zze {
    private final /* synthetic */ zzk.zzd zzai;

    public zzu(zzk.zzd zzdVar) {
        this.zzai = zzdVar;
    }

    @Override // com.google.android.gms.internal.safetynet.zze, com.google.android.gms.internal.safetynet.zzg
    public final void zza(Status status, zzd zzdVar) {
        this.zzai.setResult((zzk.zzd) new zzk.zzg(status, zzdVar));
    }
}
