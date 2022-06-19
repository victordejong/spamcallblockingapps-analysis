package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxa.class */
public final class zzcxa {
    private final String zza;
    private final zzbwq zzb;
    private final Executor zzc;
    private zzcxf zzd;
    private final zzbrt<Object> zze = new zzcwx(this);
    private final zzbrt<Object> zzf = new zzcwz(this);

    public zzcxa(String str, zzbwq zzbwqVar, Executor executor) {
        this.zza = str;
        this.zzb = zzbwqVar;
        this.zzc = executor;
    }

    public static /* bridge */ /* synthetic */ boolean zzg(zzcxa zzcxaVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zzcxaVar.zza);
    }

    public final void zzc(zzcxf zzcxfVar) {
        this.zzb.zzb("/updateActiveView", this.zze);
        this.zzb.zzb("/untrackActiveViewUnit", this.zzf);
        this.zzd = zzcxfVar;
    }

    public final void zzd(zzcop zzcopVar) {
        zzcopVar.zzaf("/updateActiveView", this.zze);
        zzcopVar.zzaf("/untrackActiveViewUnit", this.zzf);
    }

    public final void zze() {
        this.zzb.zzc("/updateActiveView", this.zze);
        this.zzb.zzc("/untrackActiveViewUnit", this.zzf);
    }

    public final void zzf(zzcop zzcopVar) {
        zzcopVar.zzaw("/updateActiveView", this.zze);
        zzcopVar.zzaw("/untrackActiveViewUnit", this.zzf);
    }
}
