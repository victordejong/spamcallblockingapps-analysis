package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnx.class */
public final class zzdnx {
    private final zzcqr zzdie;
    private final zzdmw zzesr;
    private final zzdnb zzess;
    private final zzdss zzfrf;

    @VisibleForTesting
    public zzdnx(zzcqr zzcqrVar, zzdss zzdssVar, zzdmw zzdmwVar, zzdnb zzdnbVar) {
        this.zzesr = zzdmwVar;
        this.zzess = zzdnbVar;
        this.zzdie = zzcqrVar;
        this.zzfrf = zzdssVar;
    }

    private final void zzb(String str, int i) {
        if (!this.zzesr.zzhjz) {
            this.zzfrf.zzel(str);
            return;
        }
        this.zzdie.zza(new zzcrc(zzr.zzky().currentTimeMillis(), this.zzess.zzbvs, str, i));
    }

    public final void zza(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), i);
        }
    }

    public final void zzj(List<String> list) {
        for (String str : list) {
            zzb(str, zzcqs.zzgru);
        }
    }
}
