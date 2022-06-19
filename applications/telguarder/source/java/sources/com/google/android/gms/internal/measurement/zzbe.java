package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbe.class */
public final class zzbe extends zzbg {
    final /* synthetic */ Long zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ boolean zzf;
    final /* synthetic */ zzbr zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbe(zzbr zzbrVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzbrVar, true);
        this.zzg = zzbrVar;
        this.zza = l;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bundle;
        this.zze = z;
        this.zzf = z2;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        Long l = this.zza;
        char longValue = l == null ? this.zzh : l.longValue();
        zzpVar = this.zzg.zzk;
        zzpVar.logEvent(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, longValue);
    }
}
