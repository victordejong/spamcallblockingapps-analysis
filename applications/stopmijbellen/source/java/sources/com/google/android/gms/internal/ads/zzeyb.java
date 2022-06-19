package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeyb.class */
public final class zzeyb implements zzevm<JSONObject> {
    private final Map<String, Object> zza;

    public zzeyb(Map<String, Object> map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzt.zzp().zzf(this.zza));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zze.zza(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
