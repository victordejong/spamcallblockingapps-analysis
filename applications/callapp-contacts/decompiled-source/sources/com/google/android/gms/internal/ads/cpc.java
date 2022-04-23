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

    /* renamed from: a  reason: collision with root package name */
    public final String f26204a;

    /* renamed from: b  reason: collision with root package name */
    public final String f26205b;

    /* renamed from: c  reason: collision with root package name */
    public final JSONObject f26206c;

    /* renamed from: d  reason: collision with root package name */
    private final JSONObject f26207d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cpc(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        JSONObject zzc = zzbh.zzc(jsonReader);
        this.f26207d = zzc;
        this.f26204a = zzc.optString("ad_html", null);
        this.f26205b = zzc.optString("ad_base_url", null);
        this.f26206c = zzc.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbm
    public final void zza(JsonWriter jsonWriter) throws IOException {
        zzbh.zza(jsonWriter, this.f26207d);
    }
}
