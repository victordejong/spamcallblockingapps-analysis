package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctr.class */
public final class zzctr implements zzcrr<zzbyy, zzapk, zzctd> {
    private final Context context;
    private final zzbzy zzgtz;

    public zzctr(Context context, zzbzy zzbzyVar) {
        this.context = context;
        this.zzgtz = zzbzyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zza(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzapk, zzctd> zzcrlVar) throws zzdnt {
        try {
            zzcrlVar.zzdnl.zzdm(zzdmwVar.zzdoq);
            zzcrlVar.zzdnl.zza(zzdmwVar.zzeuo, zzdmwVar.zzhjj.toString(), zzdnlVar.zzhkr.zzfwy.zzhkw, ObjectWrapper.wrap(this.context), new zzctt(this, zzcrlVar), zzcrlVar.zzgsu);
        } catch (RemoteException e) {
            throw new zzdnt(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ zzbyy zzb(zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl<zzapk, zzctd> zzcrlVar) throws zzdnt, zzcva {
        zzctn zzctnVar = new zzctn(zzdmwVar, zzcrlVar.zzdnl, false);
        zzbza zza = this.zzgtz.zza(new zzboj(zzdnlVar, zzdmwVar, zzcrlVar.zzcio), new zzbyz(zzctnVar));
        zzctnVar.zza(zza.zzagq());
        zzcrlVar.zzgsu.zzb(zza.zzagt());
        return zza.zzahz();
    }
}
