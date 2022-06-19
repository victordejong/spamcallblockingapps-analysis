package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzv;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb.class */
public final class zzdrb implements zzbcv, zzbor, zzo, zzbot, zzv {
    private zzbcv zza;
    private zzbor zzb;
    private zzo zzc;
    private zzbot zzd;
    private zzv zze;

    private zzdrb() {
    }

    public /* synthetic */ zzdrb(zzdre zzdreVar) {
    }

    public final void zzi(zzbcv zzbcvVar, zzbor zzborVar, zzo zzoVar, zzbot zzbotVar, zzv zzvVar) {
        synchronized (this) {
            this.zza = zzbcvVar;
            this.zzb = zzborVar;
            this.zzc = zzoVar;
            this.zzd = zzbotVar;
            this.zze = zzvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        synchronized (this) {
            zzbcv zzbcvVar = this.zza;
            if (zzbcvVar != null) {
                zzbcvVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbor
    public final void zza(String str, Bundle bundle) {
        synchronized (this) {
            zzbor zzborVar = this.zzb;
            if (zzborVar != null) {
                zzborVar.zza(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbot
    public final void zzbA(String str, String str2) {
        synchronized (this) {
            zzbot zzbotVar = this.zzd;
            if (zzbotVar != null) {
                zzbotVar.zzbA(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbp();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbq();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbr();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzbs(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        synchronized (this) {
            zzo zzoVar = this.zzc;
            if (zzoVar != null) {
                zzoVar.zzd();
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

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzg() {
        synchronized (this) {
            zzv zzvVar = this.zze;
            if (zzvVar != null) {
                zzvVar.zzg();
            }
        }
    }
}
