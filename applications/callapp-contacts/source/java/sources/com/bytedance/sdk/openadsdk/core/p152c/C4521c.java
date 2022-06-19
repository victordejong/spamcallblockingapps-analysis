package com.bytedance.sdk.openadsdk.core.p152c;

import android.content.Context;
import com.bytedance.sdk.adnet.p141b.C4183h;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.c.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/c/c.class */
public class C4521c {
    /* renamed from: a */
    private static JSONObject m35394a(String str, long j) {
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

    /* renamed from: a */
    public static void m35395a(Context context, String str, long j) {
        new C4183h(1, C5438af.m32259i("/api/ad/union/sdk/stats/"), m35394a(str, j), null).setRetryPolicy(C4959e.m33435b().m36171a(10000));
    }
}
