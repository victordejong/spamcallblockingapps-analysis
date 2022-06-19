package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamm.class */
public final class zzamm implements zzfog {
    private final zzfmj zza;
    private final zzfna zzb;
    private final zzamz zzc;
    private final zzaml zzd;
    private final zzalw zze;

    public zzamm(zzfmj zzfmjVar, zzfna zzfnaVar, zzamz zzamzVar, zzaml zzamlVar, zzalw zzalwVar) {
        this.zza = zzfmjVar;
        this.zzb = zzfnaVar;
        this.zzc = zzamzVar;
        this.zzd = zzamlVar;
        this.zze = zzalwVar;
    }

    private final Map<String, Object> zze() {
        HashMap hashMap = new HashMap();
        zzajp zzb = this.zzb.zzb();
        hashMap.put("v", this.zza.zzb());
        hashMap.put("gms", Boolean.valueOf(this.zza.zzc()));
        hashMap.put("int", zzb.zzh());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfog
    public final Map<String, Object> zza() {
        Map<String, Object> zze = zze();
        zze.put("lts", Long.valueOf(this.zzc.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfog
    public final Map<String, Object> zzb() {
        Map<String, Object> zze = zze();
        zzajp zza = this.zzb.zza();
        zze.put("gai", Boolean.valueOf(this.zza.zzd()));
        zze.put("did", zza.zzg());
        zze.put("dst", Integer.valueOf(zza.zzag() - 1));
        zze.put("doo", Boolean.valueOf(zza.zzad()));
        zzalw zzalwVar = this.zze;
        if (zzalwVar != null) {
            zze.put("nt", Long.valueOf(zzalwVar.zza()));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfog
    public final Map<String, Object> zzc() {
        return zze();
    }

    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
