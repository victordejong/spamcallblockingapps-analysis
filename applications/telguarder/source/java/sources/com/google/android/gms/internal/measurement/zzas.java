package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzas.class */
public final class zzas extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzm zzd;
    final /* synthetic */ zzbr zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(zzbr zzbrVar, String str, String str2, boolean z, zzm zzmVar) {
        super(zzbrVar, true);
        this.zze = zzbrVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = z;
        this.zzd = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zze.zzk;
        zzpVar.getUserProperties(this.zza, this.zzb, this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    protected final void zzb() {
        this.zzd.zzb(null);
    }
}
