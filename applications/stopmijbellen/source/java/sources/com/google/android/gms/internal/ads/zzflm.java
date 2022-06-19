package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflm.class */
public final class zzflm {
    private JSONObject zza;
    private final zzflv zzb;

    public zzflm(zzflv zzflvVar) {
        this.zzb = zzflvVar;
    }

    public final JSONObject zza() {
        return this.zza;
    }

    public final void zzb() {
        this.zzb.zzb(new zzflw(this, null));
    }

    public final void zzc(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.zzb.zzb(new zzflx(this, hashSet, jSONObject, j, null));
    }

    public final void zzd(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.zzb.zzb(new zzfly(this, hashSet, jSONObject, j, null));
    }

    public final void zze(JSONObject jSONObject) {
        this.zza = jSONObject;
    }
}
