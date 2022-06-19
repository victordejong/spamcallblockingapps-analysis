package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzil.class */
public final class zzil extends zzal {
    final /* synthetic */ zzjb zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzil(zzjb zzjbVar, zzgg zzggVar) {
        super(zzggVar);
        this.zza = zzjbVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzal
    public final void zza() {
        zzjb zzjbVar = this.zza;
        zzjbVar.zzg();
        if (!zzjbVar.zzh()) {
            return;
        }
        zzjbVar.zzx.zzat().zzk().zza("Inactivity, disconnecting from the service");
        zzjbVar.zzF();
    }
}
