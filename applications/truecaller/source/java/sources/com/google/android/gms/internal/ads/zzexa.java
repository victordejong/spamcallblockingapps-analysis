package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzexa.class */
public final class zzexa<R extends zzdal<AdT>, AdT extends zzcxg> implements zzexo<R, zzewz<R, AdT>> {
    private final zzfcc zza;
    private final Executor zzb;
    private final zzfrz<Void> zzc = new zzewy(this);

    public zzexa(zzfcc zzfccVar, Executor executor) {
        this.zza = zzfccVar;
        this.zzb = executor;
    }

    public final zzfsm<zzewz<R, AdT>> zza(zzexp zzexpVar, zzexn<R> zzexnVar, R r) {
        return zzfsd.zzf(zzfsd.zzi(zzfru.zzw((zzfsm) new zzexk(this.zza, r, this.zzb).zzc()), new zzfrk(this, r) { // from class: com.google.android.gms.internal.ads.zzeww
            private final zzexa zza;
            private final zzdal zzb;

            {
                this.zza = this;
                this.zzb = r;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzb(this.zzb, (zzexj) obj);
            }
        }, this.zzb), Exception.class, new zzewx(this), this.zzb);
    }

    public final /* synthetic */ zzfsm zzb(zzdal zzdalVar, zzexj zzexjVar) throws Exception {
        zzfsm zzfsmVar;
        zzfcm zzfcmVar = zzexjVar.zzb;
        zzcbj zzcbjVar = zzexjVar.zza;
        zzfcl<?, ?> zza = zzfcmVar != null ? this.zza.zza(zzfcmVar) : null;
        if (zzfcmVar == null) {
            zzfsmVar = zzfsd.zza(null);
        } else {
            if (zza != null && zzcbjVar != null) {
                zzfsd.zzp(zzdalVar.zzP().zzg(zzcbjVar), this.zzc, this.zzb);
            }
            zzfsmVar = zzfsd.zza(new zzewz(zzfcmVar, zzcbjVar, zza));
        }
        return zzfsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ zzfsm zzc(zzexp zzexpVar, zzexn zzexnVar, Object obj) {
        return zza(zzexpVar, zzexnVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
