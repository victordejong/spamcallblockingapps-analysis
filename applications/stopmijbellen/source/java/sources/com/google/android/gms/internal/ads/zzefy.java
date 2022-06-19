package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefy.class */
public final class zzefy implements zzfif {
    private final Map<zzfhy, String> zza = new HashMap();
    private final Map<zzfhy, String> zzb = new HashMap();
    private final zzfin zzc;

    public zzefy(Set<zzefx> set, zzfin zzfinVar) {
        zzfhy zzfhyVar;
        String str;
        zzfhy zzfhyVar2;
        String str2;
        this.zzc = zzfinVar;
        for (zzefx zzefxVar : set) {
            Map<zzfhy, String> map = this.zza;
            zzfhyVar = zzefxVar.zzb;
            str = zzefxVar.zza;
            map.put(zzfhyVar, str);
            Map<zzfhy, String> map2 = this.zzb;
            zzfhyVar2 = zzefxVar.zzc;
            str2 = zzefxVar.zza;
            map2.put(zzfhyVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzb(zzfhy zzfhyVar, String str, Throwable th) {
        zzfin zzfinVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzfinVar.zze(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.zzb.containsKey(zzfhyVar)) {
            zzfin zzfinVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zzb.get(zzfhyVar));
            zzfinVar2.zze(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbN(zzfhy zzfhyVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbO(zzfhy zzfhyVar, String str) {
        zzfin zzfinVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzfinVar.zze(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.zzb.containsKey(zzfhyVar)) {
            zzfin zzfinVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zzb.get(zzfhyVar));
            zzfinVar2.zze(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzc(zzfhy zzfhyVar, String str) {
        zzfin zzfinVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzfinVar.zzd(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.zza.containsKey(zzfhyVar)) {
            zzfin zzfinVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zza.get(zzfhyVar));
            zzfinVar2.zzd(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }
}
