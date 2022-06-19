package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqv;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjm.class */
public final class zzdjm<R extends zzbqv<AdT>, AdT extends zzbnt> implements zzdkn<R, zzdpm<AdT>> {
    private final Executor executor = zzdzy.zzbaf();
    private R zzhgq;

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final zzdzw<zzdpm<AdT>> zza(zzdko zzdkoVar, zzdkp<R> zzdkpVar) {
        zzbqy<R> zzc = zzdkpVar.zzc(zzdkoVar.zzhht);
        zzc.zza(new zzdkv(true));
        R zzagm = zzc.zzagm();
        this.zzhgq = zzagm;
        zzbou zzagj = zzagm.zzagj();
        zzdpm zzdpmVar = new zzdpm();
        return zzdzf.zzg(zzdkoVar.zzhhs != null ? zzagj.zza(zzdkoVar.zzhhs) : zzagj.zzala()).zzb(new zzdyu(this, zzdpmVar, zzagj) { // from class: com.google.android.gms.internal.ads.zzdjp
            private final zzdjm zzhgs;
            private final zzdpm zzhgt;
            private final zzbou zzhgu;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhgs = this;
                this.zzhgt = zzdpmVar;
                this.zzhgu = zzagj;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                zzdpm zzdpmVar2 = this.zzhgt;
                zzbou zzbouVar = this.zzhgu;
                zzdnl zzdnlVar = (zzdnl) obj;
                zzdpmVar2.zzeyz = zzdnlVar;
                Iterator<zzdmw> it = zzdnlVar.zzhks.zzhkp.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    for (String str : it.next().zzhix) {
                        if (!str.contains("FirstPartyRenderer")) {
                            z = false;
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? zzdzk.zzag(null) : zzbouVar.zzb(zzdzk.zzag(zzdnlVar));
            }
        }, this.executor).zza(new zzdvz(zzdpmVar) { // from class: com.google.android.gms.internal.ads.zzdjo
            private final zzdpm zzhgr;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhgr = zzdpmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                zzdpm zzdpmVar2 = this.zzhgr;
                zzdpmVar2.zzhoi = (AdT) obj;
                return zzdpmVar2;
            }
        }, this.executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdkn
    public final /* synthetic */ Object zzaun() {
        return this.zzhgq;
    }
}
