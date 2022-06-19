package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcug.class */
public final class zzcug implements zzcrr<zzcbu, zzdog, zzctd> {
    private final Context context;
    private final Executor zzfsj;
    private final zzcau zzgun;

    public zzcug(Context context, zzcau zzcauVar, Executor executor) {
        this.context = context;
        this.zzgun = zzcauVar;
        this.zzfsj = executor;
    }

    private static boolean zza(zzdnl zzdnlVar, int i) {
        return zzdnlVar.zzhkr.zzfwy.zzhky.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctd> zzcrlVar) throws zzdnt {
        zzcrlVar.zzdnl.zza(this.context, zzdnlVar.zzhkr.zzfwy.zzhkw, zzdmwVar.zzhjj.toString(), zzbh.zza(zzdmwVar.zzhjg), zzcrlVar.zzgsu, zzdnlVar.zzhkr.zzfwy.zzdoe, zzdnlVar.zzhkr.zzfwy.zzhky);
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzcbu zzb(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctd> zzcrlVar) throws zzdnt, zzcva {
        zzccd zzccdVar;
        zzanr zzuv = zzcrlVar.zzdnl.zzuv();
        zzans zzuw = zzcrlVar.zzdnl.zzuw();
        zzanx zzvb = zzcrlVar.zzdnl.zzvb();
        if (zzvb != null && zza(zzdnlVar, 6)) {
            zzccdVar = zzccd.zzb(zzvb);
        } else if (zzuv != null && zza(zzdnlVar, 6)) {
            zzccdVar = zzccd.zzb(zzuv);
        } else if (zzuv != null && zza(zzdnlVar, 2)) {
            zzccdVar = zzccd.zza(zzuv);
        } else if (zzuw != null && zza(zzdnlVar, 6)) {
            zzccdVar = zzccd.zzb(zzuw);
        } else if (zzuw == null || !zza(zzdnlVar, 1)) {
            throw new zzcva(zzdom.INTERNAL_ERROR, "No native ad mappers");
        } else {
            zzccdVar = zzccd.zza(zzuw);
        }
        if (zzdnlVar.zzhkr.zzfwy.zzhky.contains(Integer.toString(zzccdVar.zzanu()))) {
            zzcci zza = this.zzgun.zza(new zzboj(zzdnlVar, zzdmwVar, zzcrlVar.zzcio), new zzccp(zzccdVar), new zzcee(zzuw, zzuv, zzvb));
            zzcrlVar.zzgsu.zzb(zza.zzags());
            zza.zzagn().zza((zzbsg) new zzbjo(zzcrlVar.zzdnl), this.zzfsj);
            return zza.zzagu();
        }
        throw new zzcva(zzdom.INTERNAL_ERROR, "No corresponding native ad listener");
    }
}
