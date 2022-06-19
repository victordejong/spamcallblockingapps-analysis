package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtu.class */
public final class zzbtu implements zzbsk, zzbtt {
    private final zzbtt zza;
    private final HashSet<AbstractMap.SimpleEntry<String, zzbpr<? super zzbtt>>> zzb = new HashSet<>();

    public zzbtu(zzbtt zzbttVar) {
        this.zza = zzbttVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsk, com.google.android.gms.internal.ads.zzbsw
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbsk, com.google.android.gms.internal.ads.zzbsw
    public final void zzbl(String str, String str2) {
        zzbsj.zzb(this, str, str2);
    }

    public final void zzc() {
        Iterator<AbstractMap.SimpleEntry<String, zzbpr<? super zzbtt>>> it = this.zzb.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, zzbpr<? super zzbtt>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zze.zza(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.zza.zzm(next.getKey(), next.getValue());
        }
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbsk, com.google.android.gms.internal.ads.zzbsi
    public final void zzd(String str, JSONObject jSONObject) {
        zzbsj.zzc(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbsi
    public final void zze(String str, Map map) {
        zzbsj.zzd(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzl(String str, zzbpr<? super zzbtt> zzbprVar) {
        this.zza.zzl(str, zzbprVar);
        this.zzb.add(new AbstractMap.SimpleEntry<>(str, zzbprVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzm(String str, zzbpr<? super zzbtt> zzbprVar) {
        this.zza.zzm(str, zzbprVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzbprVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final void zzr(String str, JSONObject jSONObject) {
        zzbsj.zza(this, str, jSONObject);
    }
}
