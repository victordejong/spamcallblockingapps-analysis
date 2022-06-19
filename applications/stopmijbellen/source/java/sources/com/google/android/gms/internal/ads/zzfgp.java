package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgp.class */
public final class zzfgp<R extends zzdea<AdT>, AdT extends zzdav> {
    private final zzfgi<R, AdT> zza;
    private final zzfxa<zzfgg<R, AdT>> zzb;
    @GuardedBy("this")
    private boolean zzc = false;
    @GuardedBy("this")
    private boolean zzd = false;

    public zzfgp(final zzffn zzffnVar, final zzfgh<R, AdT> zzfghVar, final zzfgi<R, AdT> zzfgiVar) {
        this.zza = zzfgiVar;
        this.zzb = zzfwq.zzg(zzfwq.zzn(zzfghVar.zza(zzfgiVar), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfgn
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzfgp.this.zzb(zzfghVar, zzffnVar, zzfgiVar, (zzffw) obj);
            }
        }, zzfgiVar.zzb()), Exception.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfgm
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzfgp.this.zzc(zzfghVar, (Exception) obj);
            }
        }, zzfgiVar.zzb());
    }

    public final zzfxa<zzfgg<R, AdT>> zza(zzfgi<R, AdT> zzfgiVar) {
        synchronized (this) {
            if (!this.zzd && !this.zzc) {
                if (this.zza.zza() != null && zzfgiVar.zza() != null && this.zza.zza().equals(zzfgiVar.zza())) {
                    this.zzc = true;
                    return this.zzb;
                }
                return null;
            }
            return null;
        }
    }

    public final /* synthetic */ zzfxa zzb(zzfgh zzfghVar, zzffn zzffnVar, zzfgi zzfgiVar, zzffw zzffwVar) throws Exception {
        synchronized (this) {
            this.zzd = true;
            zzfghVar.zzb(zzffwVar);
            if (this.zzc) {
                return zzfwq.zzi(new zzfgg(zzffwVar, zzfgiVar));
            }
            zzffnVar.zzd(zzfgiVar.zza(), zzffwVar);
            return zzfwq.zzi(null);
        }
    }

    public final /* synthetic */ zzfxa zzc(zzfgh zzfghVar, Exception exc) throws Exception {
        synchronized (this) {
            this.zzd = true;
            throw exc;
        }
    }

    public final void zzd(zzfwm<Void> zzfwmVar) {
        synchronized (this) {
            zzfwq.zzr(zzfwq.zzn(this.zzb, zzfgo.zza, this.zza.zzb()), zzfwmVar, this.zza.zzb());
        }
    }
}
