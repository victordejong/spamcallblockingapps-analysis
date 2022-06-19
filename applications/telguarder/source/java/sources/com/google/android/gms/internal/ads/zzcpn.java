package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpn.class */
public final class zzcpn implements zzdrp {
    private final zzdsa zzgqf;
    private final Map<zzdrk, String> zzgqh = new HashMap();
    private final Map<zzdrk, String> zzgqi = new HashMap();

    public zzcpn(Set<zzcpq> set, zzdsa zzdsaVar) {
        zzdrk zzdrkVar;
        String str;
        zzdrk zzdrkVar2;
        String str2;
        this.zzgqf = zzdsaVar;
        for (zzcpq zzcpqVar : set) {
            Map<zzdrk, String> map = this.zzgqh;
            zzdrkVar = zzcpqVar.zzgma;
            str = zzcpqVar.label;
            map.put(zzdrkVar, str);
            Map<zzdrk, String> map2 = this.zzgqi;
            zzdrkVar2 = zzcpqVar.zzgmb;
            str2 = zzcpqVar.label;
            map2.put(zzdrkVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str, Throwable th) {
        zzdsa zzdsaVar = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsaVar.zzv(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "f.");
        if (this.zzgqi.containsKey(zzdrkVar)) {
            zzdsa zzdsaVar2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqi.get(zzdrkVar));
            zzdsaVar2.zzv(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "f.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrkVar, String str) {
        zzdsa zzdsaVar = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsaVar.zzgz(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."));
        if (this.zzgqh.containsKey(zzdrkVar)) {
            zzdsa zzdsaVar2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqh.get(zzdrkVar));
            zzdsaVar2.zzgz(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrkVar, String str) {
        zzdsa zzdsaVar = this.zzgqf;
        String valueOf = String.valueOf(str);
        zzdsaVar.zzv(valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task."), "s.");
        if (this.zzgqi.containsKey(zzdrkVar)) {
            zzdsa zzdsaVar2 = this.zzgqf;
            String valueOf2 = String.valueOf(this.zzgqi.get(zzdrkVar));
            zzdsaVar2.zzv(valueOf2.length() != 0 ? "label.".concat(valueOf2) : new String("label."), "s.");
        }
    }
}
