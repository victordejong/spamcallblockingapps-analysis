package com.appsflyer;

import androidx.annotation.Nullable;
import com.appsflyer.internal.C1830ai;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/ServerConfigHandler.class */
public class ServerConfigHandler {
    public static String getUrl(String str) {
        return String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AppsFlyerLibCore.getInstance().getHostName());
    }

    @Nullable
    /* renamed from: ı */
    public static JSONObject m36196(String str) {
        JSONObject jSONObject;
        Throwable th;
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            try {
                boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
                if (!jSONObject2.optBoolean("monitor", false) || z) {
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36173();
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36163();
                } else {
                    if (C1830ai.f1791 == null) {
                        C1830ai.f1791 = new C1830ai();
                    }
                    C1830ai.f1791.m36171();
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
            } catch (JSONException e) {
                jSONObject = jSONObject2;
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                }
                C1830ai.f1791.m36173();
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                }
                C1830ai.f1791.m36163();
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                jSONObject = jSONObject2;
                AFLogger.afErrorLog(th.getMessage(), th);
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                }
                C1830ai.f1791.m36173();
                if (C1830ai.f1791 == null) {
                    C1830ai.f1791 = new C1830ai();
                }
                C1830ai.f1791.m36163();
                return jSONObject;
            }
        } catch (JSONException e2) {
            jSONObject = null;
        } catch (Throwable th3) {
            th = th3;
            jSONObject = null;
        }
        return jSONObject;
    }
}
