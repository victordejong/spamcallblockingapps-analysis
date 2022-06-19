package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzech.class */
public final class zzech implements zzfet {
    private final Map<zzfem, String> zza = new HashMap();
    private final Map<zzfem, String> zzb = new HashMap();
    private final zzffb zzc;

    public zzech(Set<zzecg> set, zzffb zzffbVar) {
        zzfem zzfemVar;
        String str;
        zzfem zzfemVar2;
        String str2;
        this.zzc = zzffbVar;
        for (zzecg zzecgVar : set) {
            Map<zzfem, String> map = this.zza;
            zzfemVar = zzecgVar.zzb;
            str = zzecgVar.zza;
            map.put(zzfemVar, str);
            Map<zzfem, String> map2 = this.zzb;
            zzfemVar2 = zzecgVar.zzc;
            str2 = zzecgVar.zza;
            map2.put(zzfemVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbE(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbF(zzfem zzfemVar, String str) {
        zzffb zzffbVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzffbVar.zzd(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.zza.containsKey(zzfemVar)) {
            zzffb zzffbVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zza.get(zzfemVar));
            zzffbVar2.zzd(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzc(zzfem zzfemVar, String str, Throwable th) {
        zzffb zzffbVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzffbVar.zze(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.zzb.containsKey(zzfemVar)) {
            zzffb zzffbVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zzb.get(zzfemVar));
            zzffbVar2.zze(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzd(zzfem zzfemVar, String str) {
        zzffb zzffbVar = this.zzc;
        String valueOf = String.valueOf(str);
        zzffbVar.zze(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.zzb.containsKey(zzfemVar)) {
            zzffb zzffbVar2 = this.zzc;
            String valueOf2 = String.valueOf(this.zzb.get(zzfemVar));
            zzffbVar2.zze(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }
}
