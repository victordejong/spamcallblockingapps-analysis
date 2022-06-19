package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzbm;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpc.class */
public final class cpc implements zzbm {

    /* renamed from: a */
    public final String f46301a;

    /* renamed from: b */
    public final String f46302b;

    /* renamed from: c */
    public final JSONObject f46303c;

    /* renamed from: d */
    private final JSONObject f46304d;

    public cpc(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject zzc = zzbh.zzc(jsonReader);
        this.f46304d = zzc;
        this.f46301a = zzc.optString("ad_html", null);
        this.f46302b = zzc.optString("ad_base_url", null);
        this.f46303c = zzc.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbm
    public final void zza(JsonWriter jsonWriter) throws IOException {
        zzbh.zza(jsonWriter, this.f46304d);
    }
}
