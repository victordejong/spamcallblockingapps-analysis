package com.facebook.biddingkit.p293d;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.d.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/a.class */
public final class C10122a {

    /* renamed from: a */
    private static final AtomicReference<Map<String, String>> f33504a = new AtomicReference<>();

    C10122a() {
    }

    /* renamed from: a */
    public static JSONObject m23372a() {
        Map<String, String> map = f33504a.get();
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e) {
            C10123b.m23369a("BiddingStaticEnvironmentData", "Failed to create json data", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m23371a(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("bundle", context.getPackageName());
        hashMap.put("idfa", str);
        hashMap.put("device_make", Build.MANUFACTURER);
        hashMap.put("device_model", Build.MODEL);
        hashMap.put("os", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("bidding_kit_version", str2);
        f33504a.set(hashMap);
    }
}
