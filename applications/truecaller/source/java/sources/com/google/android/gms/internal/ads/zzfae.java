package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbx;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfae.class */
public final class zzfae {
    public final String zza;
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    public zzfae(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject zzc = zzbx.zzc(jsonReader);
        this.zzd = zzc;
        this.zza = zzc.optString("ad_html", null);
        this.zzb = zzc.optString("ad_base_url", null);
        this.zzc = zzc.optJSONObject("ad_json");
    }
}
