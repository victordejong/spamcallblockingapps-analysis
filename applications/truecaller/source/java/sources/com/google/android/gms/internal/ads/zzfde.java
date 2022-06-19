package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfde.class */
public final class zzfde<R extends zzdal<AdT>, AdT extends zzcxg> {
    private final zzfcx<R, AdT> zza;
    private final zzfsm<zzfcv<R, AdT>> zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzfde(zzfcc zzfccVar, zzfcw<R, AdT> zzfcwVar, zzfcx<R, AdT> zzfcxVar) {
        this.zza = zzfcxVar;
        this.zzb = zzfsd.zzg(zzfsd.zzi(zzfcwVar.zza(zzfcxVar), new zzfrk(this, zzfcwVar, zzfccVar, zzfcxVar) { // from class: com.google.android.gms.internal.ads.zzfdb
            private final zzfde zza;
            private final zzfcw zzb;
            private final zzfcc zzc;
            private final zzfcx zzd;

            {
                this.zza = this;
                this.zzb = zzfcwVar;
                this.zzc = zzfccVar;
                this.zzd = zzfcxVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd(this.zzb, this.zzc, this.zzd, (zzfcl) obj);
            }
        }, zzfcxVar.zza()), Exception.class, new zzfrk(this, zzfcwVar) { // from class: com.google.android.gms.internal.ads.zzfdc
            private final zzfde zza;
            private final zzfcw zzb;

            {
                this.zza = this;
                this.zzb = zzfcwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(this.zzb, (Exception) obj);
            }
        }, zzfcxVar.zza());
    }

    public final void zza(zzfrz<Void> zzfrzVar) {
        synchronized (this) {
            zzfsd.zzp(zzfsd.zzi(this.zzb, zzfdd.zza, this.zza.zza()), zzfrzVar, this.zza.zza());
        }
    }

    public final zzfsm<zzfcv<R, AdT>> zzb(zzfcx<R, AdT> zzfcxVar) {
        synchronized (this) {
            if (!this.zzd && !this.zzc) {
                if (this.zza.zzb() != null && zzfcxVar.zzb() != null && this.zza.zzb().equals(zzfcxVar.zzb())) {
                    this.zzc = true;
                    return this.zzb;
                }
                return null;
            }
            return null;
        }
    }

    public final /* synthetic */ zzfsm zzc(zzfcw zzfcwVar, Exception exc) throws Exception {
        synchronized (this) {
            this.zzd = true;
            throw exc;
        }
    }

    public final /* synthetic */ zzfsm zzd(zzfcw zzfcwVar, zzfcc zzfccVar, zzfcx zzfcxVar, zzfcl zzfclVar) throws Exception {
        synchronized (this) {
            this.zzd = true;
            zzfcwVar.zzb(zzfclVar);
            if (this.zzc) {
                return zzfsd.zza(new zzfcv(zzfclVar, zzfcxVar));
            }
            zzfccVar.zzb(zzfcxVar.zzb(), zzfclVar);
            return zzfsd.zza(null);
        }
    }
}
