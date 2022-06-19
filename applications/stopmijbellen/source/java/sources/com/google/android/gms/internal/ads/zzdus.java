package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdus.class */
public final class zzdus implements zzbes, zzbqt, zzo, zzbqv, zzw {
    private zzbes zza;
    private zzbqt zzb;
    private zzo zzc;
    private zzbqv zzd;
    private zzw zze;

    private zzdus() {
    }

    public /* synthetic */ zzdus(zzdur zzdurVar) {
    }

    public final void zzi(zzbes zzbesVar, zzbqt zzbqtVar, zzo zzoVar, zzbqv zzbqvVar, zzw zzwVar) {
        synchronized (this) {
            this.zza = zzbesVar;
            this.zzb = zzbqtVar;
            this.zzc = zzoVar;
            this.zzd = zzbqvVar;
            this.zze = zzwVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        synchronized (this) {
            zzbes zzbesVar = this.zza;
            if (zzbesVar != null) {
                zzbesVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqt
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            zzbqt zzbqtVar = this.zzb;
            if (zzbqtVar != null) {
                zzbqtVar.zza(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbK();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void zzbL(String str, String str2) {
        synchronized (this) {
            zzbqv zzbqvVar = this.zzd;
            if (zzbqvVar != null) {
                zzbqvVar.zzbL(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbS();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbz();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zze();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzf(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzw
    public final void zzg() {
        synchronized (this) {
            zzw zzwVar = this.zze;
            if (zzwVar != null) {
                ((zzdut) zzwVar).zza.zzb();
            }
        }
    }
}
