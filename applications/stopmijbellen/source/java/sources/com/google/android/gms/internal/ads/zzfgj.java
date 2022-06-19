package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import java.util.ArrayDeque;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgj.class */
public final class zzfgj<R extends zzdea<AdT>, AdT extends zzdav> {
    private final zzffn zza;
    private final zzfgh<R, AdT> zzb;
    private final zzffj zzc;
    @GuardedBy("this")
    private zzfgp<R, AdT> zze;
    @GuardedBy("this")
    private int zzf = 1;
    @GuardedBy("this")
    private final ArrayDeque<zzfgi<R, AdT>> zzd = new ArrayDeque<>();

    public zzfgj(zzffn zzffnVar, zzffj zzffjVar, zzfgh<R, AdT> zzfghVar) {
        this.zza = zzffnVar;
        this.zzc = zzffjVar;
        this.zzb = zzfghVar;
        zzffjVar.zzb(new zzfge(this));
    }

    public final void zzh() {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeK)).booleanValue() && !zzt.zzo().zzh().zzg().zzh()) {
                this.zzd.clear();
                return;
            }
            if (zzi()) {
                while (!this.zzd.isEmpty()) {
                    zzfgi<R, AdT> pollFirst = this.zzd.pollFirst();
                    if (pollFirst == null || (pollFirst.zza() != null && this.zza.zze(pollFirst.zza()))) {
                        zzfgp<R, AdT> zzfgpVar = new zzfgp<>(this.zza, this.zzb, pollFirst);
                        this.zze = zzfgpVar;
                        zzfgpVar.zzd(new zzfgf(this, pollFirst));
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

    public final zzfxa<zzfgg<R, AdT>> zza(zzfgi<R, AdT> zzfgiVar) {
        synchronized (this) {
            this.zzf = 2;
            if (zzi()) {
                return null;
            }
            return this.zze.zza(zzfgiVar);
        }
    }

    public final void zze(zzfgi<R, AdT> zzfgiVar) {
        synchronized (this) {
            this.zzd.add(zzfgiVar);
        }
    }

    public final /* synthetic */ void zzf() {
        synchronized (this) {
            this.zzf = 1;
            zzh();
        }
    }
}
