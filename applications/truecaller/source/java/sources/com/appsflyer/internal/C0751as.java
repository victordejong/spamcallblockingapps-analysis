package com.appsflyer.internal;

import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.as */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/as.class */
public final class C0751as {
    @Nullable
    public static JSONObject valueOf(String str) {
        JSONObject jSONObject;
        Throwable th;
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(str);
        } catch (Throwable th2) {
            th = th2;
            jSONObject = null;
        }
        try {
            boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
            if (!jSONObject2.optBoolean("monitor", false) || z) {
                C0739aj.AFInAppEventParameterName().valueOf();
                C0739aj.AFInAppEventParameterName().values();
            } else {
                C0739aj.AFInAppEventParameterName().AFInAppEventType();
            }
            jSONObject = jSONObject2;
            if (jSONObject2.has("ol_id")) {
                String optString = jSONObject2.optString("ol_scheme", null);
                String optString2 = jSONObject2.optString("ol_domain", null);
                String optString3 = jSONObject2.optString("ol_ver", null);
                if (optString != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, optString);
                }
                if (optString2 != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, optString2);
                }
                jSONObject = jSONObject2;
                if (optString3 != null) {
                    AppsFlyerProperties.getInstance().set("onelinkVersion", optString3);
                    jSONObject = jSONObject2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            jSONObject = jSONObject2;
            AFLogger.valueOf(th.getMessage(), th);
            C0739aj.AFInAppEventParameterName().valueOf();
            C0739aj.AFInAppEventParameterName().values();
            return jSONObject;
        }
        return jSONObject;
    }
}
