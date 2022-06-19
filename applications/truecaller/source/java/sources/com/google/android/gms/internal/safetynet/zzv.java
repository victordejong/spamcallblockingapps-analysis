package com.google.android.gms.internal.safetynet;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.safetynet.zzk;
import com.google.android.gms.safetynet.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzv.class */
public final class zzv extends zze {
    private final /* synthetic */ zzk.zze zzaj;

    public zzv(zzk.zze zzeVar) {
        this.zzaj = zzeVar;
    }

    @Override // com.google.android.gms.internal.safetynet.zze, com.google.android.gms.internal.safetynet.zzg
    public final void zza(Status status, zzf zzfVar) {
        this.zzaj.setResult((zzk.zze) new zzk.zzh(status, zzfVar));
    }
}
