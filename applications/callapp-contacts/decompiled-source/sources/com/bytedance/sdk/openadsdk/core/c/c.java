package com.bytedance.sdk.openadsdk.core.c;

import android.content.Context;
import com.bytedance.sdk.adnet.b.h;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.af;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/c.class */
public class c {
    private static JSONObject a(String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "over_freq");
            jSONObject.put("rit", str);
            jSONObject.put("ad_sdk_version", "3.5.0.5");
            jSONObject.put(Reporting.Key.TIMESTAMP, j);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public static void a(Context context, String str, long j) {
        new h(1, af.i("/api/ad/union/sdk/stats/"), a(str, j), null).setRetryPolicy(e.b().a(10000));
    }
}
