package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejb.class */
public final class zzejb implements zzdcl {
    public boolean zza = false;
    public final /* synthetic */ zzeef zzb;
    public final /* synthetic */ zzchl zzc;
    public final /* synthetic */ zzejc zzd;

    public zzejb(zzejc zzejcVar, zzeef zzeefVar, zzchl zzchlVar) {
        this.zzd = zzejcVar;
        this.zzb = zzeefVar;
        this.zzc = zzchlVar;
    }

    private final void zze(zzbcz zzbczVar) {
        int i = 1;
        if (true == ((Boolean) zzbet.zzc().zzc(zzbjl.zzdM)).booleanValue()) {
            i = 3;
        }
        this.zzc.zzd(new zzeeg(i, zzbczVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zza() {
        synchronized (this) {
            this.zzc.zzc(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzb(int i) {
        if (this.zza) {
            return;
        }
        zze(new zzbcz(i, zzejc.zze(this.zzb.zza, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzc(int i, String str) {
        synchronized (this) {
            if (this.zza) {
                return;
            }
            this.zza = true;
            String str2 = str;
            if (str == null) {
                str2 = zzejc.zze(this.zzb.zza, i);
            }
            zze(new zzbcz(i, str2, AdError.UNDEFINED_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzd(zzbcz zzbczVar) {
        synchronized (this) {
            this.zza = true;
            zze(zzbczVar);
        }
    }
}
