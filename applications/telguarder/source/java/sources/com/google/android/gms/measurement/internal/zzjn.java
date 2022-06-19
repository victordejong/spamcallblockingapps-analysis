package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjn.class */
public final class zzjn extends zzal {
    final /* synthetic */ zzjo zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjn(zzjo zzjoVar, zzgg zzggVar) {
        super(zzggVar);
        this.zza = zzjoVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzal
    public final void zza() {
        zzjo zzjoVar = this.zza;
        zzjoVar.zzc.zzg();
        zzjoVar.zzd(false, false, zzjoVar.zzc.zzx.zzax().elapsedRealtime());
        zzjoVar.zzc.zzx.zzB().zzc(zzjoVar.zzc.zzx.zzax().elapsedRealtime());
    }
}
