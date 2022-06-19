package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctl.class */
public final class zzctl {
    private final String zza;
    private final zzbup zzb;
    private final Executor zzc;
    private zzctq zzd;
    private final zzbpr<Object> zze = new zzcti(this);
    private final zzbpr<Object> zzf = new zzctk(this);

    public zzctl(String str, zzbup zzbupVar, Executor executor) {
        this.zza = str;
        this.zzb = zzbupVar;
        this.zzc = executor;
    }

    public static /* synthetic */ boolean zzg(zzctl zzctlVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zzctlVar.zza);
    }

    public final void zzc(zzctq zzctqVar) {
        this.zzb.zzb("/updateActiveView", this.zze);
        this.zzb.zzb("/untrackActiveViewUnit", this.zzf);
        this.zzd = zzctqVar;
    }

    public final void zzd(zzcml zzcmlVar) {
        zzcmlVar.zzab("/updateActiveView", this.zze);
        zzcmlVar.zzab("/untrackActiveViewUnit", this.zzf);
    }

    public final void zze(zzcml zzcmlVar) {
        zzcmlVar.zzac("/updateActiveView", this.zze);
        zzcmlVar.zzac("/untrackActiveViewUnit", this.zzf);
    }

    public final void zzf() {
        this.zzb.zzc("/updateActiveView", this.zze);
        this.zzb.zzc("/untrackActiveViewUnit", this.zzf);
    }
}
