package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbto.class */
public final class zzbto extends zzbwf<zzbtt> implements zzbse, zzbtg {
    private final zzdmw zzfrj;
    private AtomicBoolean zzfzo = new AtomicBoolean();

    public zzbto(Set<zzbya<zzbtt>> set, zzdmw zzdmwVar) {
        super(set);
        this.zzfrj = zzdmwVar;
    }

    private final void zzalr() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczg)).booleanValue() || !this.zzfzo.compareAndSet(false, true) || this.zzfrj.zzhjv == null || this.zzfrj.zzhjv.type != 3) {
            return;
        }
        zza(new zzbwh(this) { // from class: com.google.android.gms.internal.ads.zzbtr
            private final zzbto zzfzp;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzp = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                this.zzfzp.zza((zzbtt) obj);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (this.zzfrj.zzhiy == 2 || this.zzfrj.zzhiy == 5 || this.zzfrj.zzhiy == 4) {
            zzalr();
        }
    }

    public final /* synthetic */ void zza(zzbtt zzbttVar) throws Exception {
        zzbttVar.zzb(this.zzfrj.zzhjv);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        if (this.zzfrj.zzhiy == 1) {
            zzalr();
        }
    }
}
