package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzc.class */
public final class zzdzc implements zzfif {
    private final zzdyv zzb;
    private final Clock zzc;
    private final Map<zzfhy, Long> zza = new HashMap();
    private final Map<zzfhy, zzdzb> zzd = new HashMap();

    public zzdzc(zzdyv zzdyvVar, Set<zzdzb> set, Clock clock) {
        zzfhy zzfhyVar;
        this.zzb = zzdyvVar;
        for (zzdzb zzdzbVar : set) {
            Map<zzfhy, zzdzb> map = this.zzd;
            zzfhyVar = zzdzbVar.zzc;
            map.put(zzfhyVar, zzdzbVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfhy zzfhyVar, boolean z) {
        zzfhy zzfhyVar2;
        String str;
        zzfhyVar2 = this.zzd.get(zzfhyVar).zzb;
        String str2 = true != z ? "f." : "s.";
        if (this.zza.containsKey(zzfhyVar2)) {
            long elapsedRealtime = this.zzc.elapsedRealtime();
            long longValue = this.zza.get(zzfhyVar2).longValue();
            Map<String, String> zza = this.zzb.zza();
            str = this.zzd.get(zzfhyVar).zza;
            String concat = str.length() != 0 ? "label.".concat(str) : new String("label.");
            String valueOf = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zza.put(concat, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzb(zzfhy zzfhyVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfhyVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime();
            long longValue = this.zza.get(zzfhyVar).longValue();
            Map<String, String> zza = this.zzb.zza();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zza.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.zzd.containsKey(zzfhyVar)) {
            zze(zzfhyVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbN(zzfhy zzfhyVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbO(zzfhy zzfhyVar, String str) {
        if (this.zza.containsKey(zzfhyVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime();
            long longValue = this.zza.get(zzfhyVar).longValue();
            Map<String, String> zza = this.zzb.zza();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zza.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.zzd.containsKey(zzfhyVar)) {
            zze(zzfhyVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzc(zzfhy zzfhyVar, String str) {
        this.zza.put(zzfhyVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }
}
