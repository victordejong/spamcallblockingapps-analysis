package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcy.class */
public final class zzfcy<R extends zzdal<AdT>, AdT extends zzcxg> {
    private final zzfcc zza;
    private final zzfcw<R, AdT> zzb;
    private final zzfby zzc;
    private zzfde<R, AdT> zze;
    private int zzf = 1;
    private final ArrayDeque<zzfcx<R, AdT>> zzd = new ArrayDeque<>();

    public zzfcy(zzfcc zzfccVar, zzfby zzfbyVar, zzfcw<R, AdT> zzfcwVar) {
        this.zza = zzfccVar;
        this.zzc = zzfbyVar;
        this.zzb = zzfcwVar;
        zzfbyVar.zza(new zzfbx(this) { // from class: com.google.android.gms.internal.ads.zzfct
            private final zzfcy zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfbx
            public final void zza() {
                this.zza.zzf();
            }
        });
    }

    public final void zzh() {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeD)).booleanValue() && !zzt.zzg().zzp().zzn().zzi()) {
                this.zzd.clear();
                return;
            }
            if (zzi()) {
                while (!this.zzd.isEmpty()) {
                    zzfcx<R, AdT> pollFirst = this.zzd.pollFirst();
                    if (pollFirst == null || (pollFirst.zzb() != null && this.zza.zzc(pollFirst.zzb()))) {
                        zzfde<R, AdT> zzfdeVar = new zzfde<>(this.zza, this.zzb, pollFirst);
                        this.zze = zzfdeVar;
                        zzfdeVar.zza(new zzfcu(this, pollFirst));
                        return;
                    }
                }
            }
        }
    }

    private final boolean zzi() {
        boolean z;
        synchronized (this) {
            z = this.zze == null;
        }
        return z;
    }

    public final void zzc(zzfcx<R, AdT> zzfcxVar) {
        synchronized (this) {
            this.zzd.add(zzfcxVar);
        }
    }

    public final zzfsm<zzfcv<R, AdT>> zzd(zzfcx<R, AdT> zzfcxVar) {
        synchronized (this) {
            this.zzf = 2;
            if (zzi()) {
                return null;
            }
            return this.zze.zzb(zzfcxVar);
        }
    }

    public final /* synthetic */ void zzf() {
        synchronized (this) {
            this.zzf = 1;
            zzh();
        }
    }
}
