package com.facebook.biddingkit.d;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<Map<String, String>> f19703a = new AtomicReference<>();

    a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static JSONObject a() {
        Map<String, String> map = f19703a.get();
        JSONObject jSONObject = new JSONObject();
        if (map == null) {
            return jSONObject;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException e) {
            b.a("BiddingStaticEnvironmentData", "Failed to create json data", e);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("bundle", context.getPackageName());
        hashMap.put("idfa", str);
        hashMap.put("device_make", Build.MANUFACTURER);
        hashMap.put("device_model", Build.MODEL);
        hashMap.put("os", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("bidding_kit_version", str2);
        f19703a.set(hashMap);
    }
}
