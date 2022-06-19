package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczx.class */
final class zzczx implements zzdzl<zzdak> {
    private final /* synthetic */ zzaxx zzgzv;
    private final /* synthetic */ zzczo zzgzw;

    public zzczx(zzczo zzczoVar, zzaxx zzaxxVar) {
        this.zzgzw = zzczoVar;
        this.zzgzv = zzaxxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzdak zzdakVar) {
        zzazn zzaznVar;
        zzdak zzdakVar2 = zzdakVar;
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
                zzaznVar = this.zzgzw.zzboz;
                if (zzaznVar.zzehz >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcze)).intValue()) {
                    if (zzdakVar2 == null) {
                        this.zzgzv.zza(null, null, null);
                        return;
                    } else {
                        this.zzgzv.zza(zzdakVar2.zzhae, zzdakVar2.zzhaf, zzdakVar2.zzhag);
                        return;
                    }
                }
            }
            if (zzdakVar2 == null) {
                this.zzgzv.zzj(null, null);
            } else {
                this.zzgzv.zzj(zzdakVar2.zzhae, zzdakVar2.zzhaf);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        try {
            zzaxx zzaxxVar = this.zzgzv;
            String valueOf = String.valueOf(th.getMessage());
            zzaxxVar.onError(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
