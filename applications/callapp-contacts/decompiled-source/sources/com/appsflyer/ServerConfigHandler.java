package com.appsflyer;

import com.appsflyer.internal.ae;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/ServerConfigHandler.class */
public class ServerConfigHandler {
    public static String getUrl(String str) {
        return String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AppsFlyerLibCore.getInstance().getHostName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public static JSONObject m916(String str) {
        Throwable th;
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
            if (!jSONObject.optBoolean("monitor", false) || z) {
                ae.m938().m949();
                ae.m938().m951();
            } else {
                ae.m938().m950();
            }
            jSONObject2 = jSONObject;
            if (jSONObject.has("ol_id")) {
                String optString = jSONObject.optString("ol_scheme", null);
                String optString2 = jSONObject.optString("ol_domain", null);
                String optString3 = jSONObject.optString("ol_ver", null);
                if (optString != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, optString);
                }
                if (optString2 != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, optString2);
                }
                jSONObject2 = jSONObject;
                if (optString3 != null) {
                    AppsFlyerProperties.getInstance().set("onelinkVersion", optString3);
                    jSONObject2 = jSONObject;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            jSONObject2 = jSONObject;
            AFLogger.afErrorLog(th.getMessage(), th);
            ae.m938().m949();
            ae.m938().m951();
            return jSONObject2;
        }
        return jSONObject2;
    }
}
