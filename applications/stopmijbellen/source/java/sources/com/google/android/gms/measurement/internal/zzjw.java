package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjw.class */
public final class zzjw extends zzal {
    public final /* synthetic */ zzjx zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjw(zzjx zzjxVar, zzgp zzgpVar) {
        super(zzgpVar);
        this.zza = zzjxVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzal
    public final void zza() {
        zzjx zzjxVar = this.zza;
        zzjxVar.zzc.zzg();
        zzjxVar.zzd(false, false, zzjxVar.zzc.zzs.zzay().elapsedRealtime());
        zzjxVar.zzc.zzs.zzB().zzc(zzjxVar.zzc.zzs.zzay().elapsedRealtime());
    }
}
