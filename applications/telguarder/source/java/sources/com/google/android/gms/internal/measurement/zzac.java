package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzac.class */
public final class zzac extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzm zzc;
    final /* synthetic */ zzbr zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzac(zzbr zzbrVar, String str, String str2, zzm zzmVar) {
        super(zzbrVar, true);
        this.zzd = zzbrVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    final void zza() throws RemoteException {
        zzp zzpVar;
        zzpVar = this.zzd.zzk;
        zzpVar.getConditionalUserProperties(this.zza, this.zzb, this.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzbg
    protected final void zzb() {
        this.zzc.zzb(null);
    }
}
