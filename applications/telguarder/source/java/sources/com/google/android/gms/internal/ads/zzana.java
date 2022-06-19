package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.internal.zzr;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzana.class */
public final class zzana {
    private final String zzdlr;
    private final String zzdls;
    public final List<String> zzdlt;
    private final String zzdlu;
    private final String zzdlv;
    private final List<String> zzdlw;
    private final List<String> zzdlx;
    private final List<String> zzdly;
    private final List<String> zzdlz;
    private final List<String> zzdma;
    public final String zzdmb;
    private final List<String> zzdmc;
    private final List<String> zzdmd;
    private final List<String> zzdme;
    private final String zzdmf;
    private final String zzdmg;
    private final String zzdmh;
    private final String zzdmi;
    private final String zzdmj;
    private final List<String> zzdmk;
    private final String zzdml;
    public final String zzdmm;
    private final long zzdmn;

    public zzana(JSONObject jSONObject) throws JSONException {
        List<String> list;
        this.zzdls = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzdlt = Collections.unmodifiableList(arrayList);
        this.zzdlu = jSONObject.optString("allocation_id", null);
        zzr.zzlj();
        this.zzdlw = zzanc.zza(jSONObject, "clickurl");
        zzr.zzlj();
        this.zzdlx = zzanc.zza(jSONObject, "imp_urls");
        zzr.zzlj();
        this.zzdly = zzanc.zza(jSONObject, "downloaded_imp_urls");
        zzr.zzlj();
        this.zzdma = zzanc.zza(jSONObject, "fill_urls");
        zzr.zzlj();
        this.zzdmc = zzanc.zza(jSONObject, "video_start_urls");
        zzr.zzlj();
        this.zzdme = zzanc.zza(jSONObject, "video_complete_urls");
        zzr.zzlj();
        this.zzdmd = zzanc.zza(jSONObject, "video_reward_urls");
        this.zzdmf = jSONObject.optString(FirebaseAnalytics.Param.TRANSACTION_ID);
        this.zzdmg = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            zzr.zzlj();
            list = zzanc.zza(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.zzdlz = list;
        this.zzdlr = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.zzdmb = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.zzdlv = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.zzdmh = jSONObject.optString("html_template", null);
        this.zzdmi = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.zzdmj = optJSONObject3 != null ? optJSONObject3.toString() : null;
        zzr.zzlj();
        this.zzdmk = zzanc.zza(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.zzdml = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.zzdmm = jSONObject.optString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, null);
        this.zzdmn = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
