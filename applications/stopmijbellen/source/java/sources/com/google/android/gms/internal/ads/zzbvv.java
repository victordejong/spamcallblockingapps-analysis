package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvv.class */
public final class zzbvv implements zzbum, zzbvu {
    private final zzbvu zza;
    private final HashSet<AbstractMap.SimpleEntry<String, zzbrt<? super zzbvu>>> zzb = new HashSet<>();

    public zzbvv(zzbvu zzbvuVar) {
        this.zza = zzbvuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbum, com.google.android.gms.internal.ads.zzbux
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbum, com.google.android.gms.internal.ads.zzbux
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbul.zzc(this, str, str2);
    }

    public final void zzc() {
        Iterator<AbstractMap.SimpleEntry<String, zzbrt<? super zzbvu>>> it2 = this.zzb.iterator();
        while (it2.hasNext()) {
            AbstractMap.SimpleEntry<String, zzbrt<? super zzbvu>> next = it2.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zze.zza(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.zza.zzr(next.getKey(), next.getValue());
        }
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbul.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbum, com.google.android.gms.internal.ads.zzbuk
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbul.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbul.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbvu
    public final void zzq(String str, zzbrt<? super zzbvu> zzbrtVar) {
        this.zza.zzq(str, zzbrtVar);
        this.zzb.add(new AbstractMap.SimpleEntry<>(str, zzbrtVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbvu
    public final void zzr(String str, zzbrt<? super zzbvu> zzbrtVar) {
        this.zza.zzr(str, zzbrtVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzbrtVar));
    }
}
