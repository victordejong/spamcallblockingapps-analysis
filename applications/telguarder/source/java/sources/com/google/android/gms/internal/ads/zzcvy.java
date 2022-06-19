package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvy.class */
public final class zzcvy implements zzcrr<zzchb, zzdog, zzctg> {
    private final Context context;
    private final Executor zzfsj;
    private final zzchi zzgvn;

    public zzcvy(Context context, Executor executor, zzchi zzchiVar) {
        this.context = context;
        this.zzfsj = executor;
        this.zzgvn = zzchiVar;
    }

    public static void zzc(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctg> zzcrlVar) {
        try {
            zzcrlVar.zzdnl.zza(zzdnlVar.zzhkr.zzfwy.zzhkw, zzdmwVar.zzhjj.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzcrlVar.zzcio);
            zzd.zzd(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctg> zzcrlVar) throws zzdnt {
        if (zzcrlVar.zzdnl.isInitialized()) {
            zzc(zzdnlVar, zzdmwVar, zzcrlVar);
            return;
        }
        zzcrlVar.zzgsu.zza(new zzcwa(this, zzdnlVar, zzdmwVar, zzcrlVar));
        zzcrlVar.zzdnl.zza(this.context, zzdnlVar.zzhkr.zzfwy.zzhkw, (String) null, zzcrlVar.zzgsu, zzdmwVar.zzhjj.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzchb zzb(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctg> zzcrlVar) throws zzdnt, zzcva {
        zzchd zza = this.zzgvn.zza(new zzboj(zzdnlVar, zzdmwVar, zzcrlVar.zzcio), new zzchg(new zzcag(zzcrlVar) { // from class: com.google.android.gms.internal.ads.zzcvx
            private final zzcrl zzgtt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtt = zzcrlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzcag
            public final void zza(boolean z, Context context) {
                zzcrl zzcrlVar2 = this.zzgtt;
                try {
                    ((zzdog) zzcrlVar2.zzdnl).setImmersiveMode(z);
                    ((zzdog) zzcrlVar2.zzdnl).showVideo();
                } catch (zzdnt e) {
                    zzd.zzd("Cannot show rewarded video.", e);
                    throw new zzcaf(e.getCause());
                }
            }
        }));
        zza.zzagn().zza((zzbsg) new zzbjo(zzcrlVar.zzdnl), this.zzfsj);
        zzbsm zzago = zza.zzago();
        zzbrl zzagp = zza.zzagp();
        zzcrlVar.zzgsu.zza(new zzcwc(this, zza.zzaia(), zzagp, zzago, zza.zzaih()));
        return zza.zzaig();
    }
}
