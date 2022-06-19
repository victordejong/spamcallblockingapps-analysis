package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfho.class */
public final class zzfho {
    private JSONObject zza;
    private final zzfhx zzb;

    public zzfho(zzfhx zzfhxVar) {
        this.zzb = zzfhxVar;
    }

    public final void zza(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.zzb.zza(new zzfia(this, hashSet, jSONObject, j, null));
    }

    public final void zzb(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.zzb.zza(new zzfhz(this, hashSet, jSONObject, j, null));
    }

    public final void zzc() {
        this.zzb.zza(new zzfhy(this, null));
    }

    public final JSONObject zzd() {
        return this.zza;
    }

    public final void zze(JSONObject jSONObject) {
        this.zza = jSONObject;
    }
}
