package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzby;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfds.class */
public final class zzfds {
    public final String zza;
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    public zzfds(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject zzh = zzby.zzh(jsonReader);
        this.zzd = zzh;
        this.zza = zzh.optString("ad_html", null);
        this.zzb = zzh.optString("ad_base_url", null);
        this.zzc = zzh.optJSONObject("ad_json");
    }
}
