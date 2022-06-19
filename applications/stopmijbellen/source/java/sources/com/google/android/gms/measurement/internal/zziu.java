package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziu.class */
public final class zziu extends zzal {
    public final /* synthetic */ zzjk zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziu(zzjk zzjkVar, zzgp zzgpVar) {
        super(zzgpVar);
        this.zza = zzjkVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzal
    public final void zza() {
        zzjk zzjkVar = this.zza;
        zzjkVar.zzg();
        if (!zzjkVar.zzh()) {
            return;
        }
        zzjkVar.zzs.zzau().zzk().zza("Inactivity, disconnecting from the service");
        zzjkVar.zzF();
    }
}
