package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfeo.class */
public final class zzfeo {
    private final zzfdn zza;
    private final zzfdq zzb;
    private final zzehh zzc;
    private final zzfjs zzd;

    @VisibleForTesting
    public zzfeo(zzehh zzehhVar, zzfjs zzfjsVar, zzfdn zzfdnVar, zzfdq zzfdqVar) {
        this.zza = zzfdnVar;
        this.zzb = zzfdqVar;
        this.zzc = zzehhVar;
        this.zzd = zzfjsVar;
    }

    public final void zza(List<String> list) {
        for (String str : list) {
            zzb(str, 2);
        }
    }

    public final void zzb(String str, int i) {
        if (!this.zza.zzag) {
            this.zzd.zzb(str);
            return;
        }
        this.zzc.zzd(new zzehj(zzt.zzA().currentTimeMillis(), this.zzb.zzb, str, i));
    }

    public final void zzc(List<String> list, int i) {
        for (String str : list) {
            zzb(str, i);
        }
    }
}
