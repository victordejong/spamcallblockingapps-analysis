package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhr.class */
public final class zzdhr implements zzdfj<JSONObject> {
    private final Map<String, Object> zzhew;

    public zzdhr(Map<String, Object> map) {
        this.zzhew = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzr.zzkr().zzj(this.zzhew));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzeb(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
