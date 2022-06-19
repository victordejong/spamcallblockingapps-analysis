package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabl.class */
public final class zzabl implements zzfkh {
    private final zzfik zza;
    private final zzfjb zzb;
    private final zzaby zzc;
    private final zzabk zzd;
    private final zzaav zze;

    public zzabl(zzfik zzfikVar, zzfjb zzfjbVar, zzaby zzabyVar, zzabk zzabkVar, zzaav zzaavVar) {
        this.zza = zzfikVar;
        this.zzb = zzfjbVar;
        this.zzc = zzabyVar;
        this.zzd = zzabkVar;
        this.zze = zzaavVar;
    }

    private final Map<String, Object> zze() {
        HashMap hashMap = new HashMap();
        zzyz zzc = this.zzb.zzc();
        hashMap.put("v", this.zza.zza());
        hashMap.put("gms", Boolean.valueOf(this.zza.zzc()));
        hashMap.put("int", zzc.zzc());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    public final void zza(View view) {
        this.zzc.zza(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final Map<String, Object> zzb() {
        Map<String, Object> zze = zze();
        zzyz zzb = this.zzb.zzb();
        zze.put("gai", Boolean.valueOf(this.zza.zzb()));
        zze.put("did", zzb.zzd());
        zze.put("dst", Integer.valueOf(zzb.zzag() - 1));
        zze.put("doo", Boolean.valueOf(zzb.zze()));
        zzaav zzaavVar = this.zze;
        if (zzaavVar != null) {
            zze.put("nt", Long.valueOf(zzaavVar.zzd()));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final Map<String, Object> zzc() {
        return zze();
    }

    @Override // com.google.android.gms.internal.ads.zzfkh
    public final Map<String, Object> zzd() {
        Map<String, Object> zze = zze();
        zze.put("lts", Long.valueOf(this.zzc.zzc()));
        return zze;
    }
}
