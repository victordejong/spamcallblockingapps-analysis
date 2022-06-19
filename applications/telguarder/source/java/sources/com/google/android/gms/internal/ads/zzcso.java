package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.zza;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcso.class */
public final class zzcso implements zzcrr<zzblv, zzdog, zzctd> {
    private final Context context;
    private final zzazn zzboz;
    private final Executor zzfsj;
    private final zzbmr zzgto;

    public zzcso(Context context, zzazn zzaznVar, zzbmr zzbmrVar, Executor executor) {
        this.context = context;
        this.zzboz = zzaznVar;
        this.zzgto = zzbmrVar;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctd> zzcrlVar) throws zzdnt {
        zzvs zzvsVar = zzdnlVar.zzhkr.zzfwy.zzbpo;
        zzvs zzvsVar2 = zzvsVar.zzcin ? new zzvs(this.context, zza.zza(zzvsVar.width, zzvsVar.height)) : zzdnu.zzb(this.context, zzdmwVar.zzhji);
        if (this.zzboz.zzehz < 4100000) {
            zzcrlVar.zzdnl.zza(this.context, zzvsVar2, zzdnlVar.zzhkr.zzfwy.zzhkw, zzdmwVar.zzhjj.toString(), zzcrlVar.zzgsu);
        } else {
            zzcrlVar.zzdnl.zza(this.context, zzvsVar2, zzdnlVar.zzhkr.zzfwy.zzhkw, zzdmwVar.zzhjj.toString(), zzbh.zza(zzdmwVar.zzhjg), zzcrlVar.zzgsu);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzblv zzb(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzdog, zzctd> zzcrlVar) throws zzdnt, zzcva {
        zzbmr zzbmrVar = this.zzgto;
        zzboj zzbojVar = new zzboj(zzdnlVar, zzdmwVar, zzcrlVar.zzcio);
        View view = zzcrlVar.zzdnl.getView();
        zzdog zzdogVar = zzcrlVar.zzdnl;
        zzdogVar.getClass();
        zzbly zza = zzbmrVar.zza(zzbojVar, new zzbmc(view, null, zzcsn.zza(zzdogVar), zzdmwVar.zzhji.get(0)));
        zza.zzahp().zzv(zzcrlVar.zzdnl.getView());
        zza.zzagn().zza((zzbsg) new zzbjo(zzcrlVar.zzdnl), this.zzfsj);
        zzcrlVar.zzgsu.zzb(zza.zzags());
        return zza.zzaho();
    }
}
