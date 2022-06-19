package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelv.class */
public final class zzelv {
    private final zzdmx zza;
    private final zzeli zzb;
    private final zzdbf zzc;

    public zzelv(zzdmx zzdmxVar, zzffc zzffcVar) {
        this.zza = zzdmxVar;
        zzeli zzeliVar = new zzeli(zzffcVar);
        this.zzb = zzeliVar;
        this.zzc = new zzdbf(zzeliVar, zzdmxVar.zze()) { // from class: com.google.android.gms.internal.ads.zzelu
            private final zzeli zza;
            private final zzbsg zzb;

            {
                this.zza = zzeliVar;
                this.zzb = zze;
            }

            @Override // com.google.android.gms.internal.ads.zzdbf
            public final void zzbD(zzbcz zzbczVar) {
                zzeli zzeliVar2 = this.zza;
                zzbsg zzbsgVar = this.zzb;
                zzeliVar2.zzbD(zzbczVar);
                if (zzbsgVar != null) {
                    try {
                        zzbsgVar.zzg(zzbczVar);
                    } catch (RemoteException e) {
                        zzcgt.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (zzbsgVar != null) {
                    try {
                        zzbsgVar.zzf(zzbczVar.zza);
                    } catch (RemoteException e2) {
                        zzcgt.zzl("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final void zza(zzbfa zzbfaVar) {
        this.zzb.zze(zzbfaVar);
    }

    public final zzdkw zzb() {
        return new zzdkw(this.zza, this.zzb.zzc());
    }

    public final zzeli zzc() {
        return this.zzb;
    }

    public final zzdcq zzd() {
        return this.zzb;
    }

    public final zzdbf zze() {
        return this.zzc;
    }
}
