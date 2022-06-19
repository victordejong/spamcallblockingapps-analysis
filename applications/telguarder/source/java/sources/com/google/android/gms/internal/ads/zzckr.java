package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckr.class */
public final class zzckr implements zzdrp {
    private final Clock zzbqg;
    private final zzckl zzglw;
    private final Map<zzdrk, Long> zzglv = new HashMap();
    private final Map<zzdrk, zzcku> zzglx = new HashMap();

    public zzckr(zzckl zzcklVar, Set<zzcku> set, Clock clock) {
        zzdrk zzdrkVar;
        this.zzglw = zzcklVar;
        for (zzcku zzckuVar : set) {
            Map<zzdrk, zzcku> map = this.zzglx;
            zzdrkVar = zzckuVar.zzgmb;
            map.put(zzdrkVar, zzckuVar);
        }
        this.zzbqg = clock;
    }

    private final void zza(zzdrk zzdrkVar, boolean z) {
        zzdrk zzdrkVar2;
        String str;
        zzdrkVar2 = this.zzglx.get(zzdrkVar).zzgma;
        String str2 = z ? "s." : "f.";
        if (this.zzglv.containsKey(zzdrkVar2)) {
            long elapsedRealtime = this.zzbqg.elapsedRealtime();
            long longValue = this.zzglv.get(zzdrkVar2).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            str = this.zzglx.get(zzdrkVar).label;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzso.put(concat, valueOf2.length() != 0 ? str2.concat(valueOf2) : new String(str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str, Throwable th) {
        if (this.zzglv.containsKey(zzdrkVar)) {
            long elapsedRealtime = this.zzbqg.elapsedRealtime();
            long longValue = this.zzglv.get(zzdrkVar).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzso.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.zzglx.containsKey(zzdrkVar)) {
            zza(zzdrkVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrkVar, String str) {
        this.zzglv.put(zzdrkVar, Long.valueOf(this.zzbqg.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrkVar, String str) {
        if (this.zzglv.containsKey(zzdrkVar)) {
            long elapsedRealtime = this.zzbqg.elapsedRealtime();
            long longValue = this.zzglv.get(zzdrkVar).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzso.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.zzglx.containsKey(zzdrkVar)) {
            zza(zzdrkVar, true);
        }
    }
}
