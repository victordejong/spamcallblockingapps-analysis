package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.bo */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bo.class */
public final class C0778bo {
    public static Map<String, Object> AFInAppEventType(Context context) throws C0779bp {
        String string = C0726ai.values(context).getString("attributionId", null);
        if (string == null || string.length() <= 0) {
            throw new C0779bp();
        }
        return AFKeystoreWrapper(string);
    }

    public static Map<String, Object> AFKeystoreWrapper(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!next.equals("is_cache")) {
                    hashMap.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
                }
            }
            return hashMap;
        } catch (JSONException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return null;
        }
    }

    public static void values(C0726ai c0726ai, AbstractC0820j abstractC0820j, String str, Context context, SharedPreferences sharedPreferences, Integer num, Throwable th) {
        if (!abstractC0820j.AFKeystoreWrapper()) {
            return;
        }
        if (C0726ai.AFInAppEventType == null) {
            AFLogger.AFInAppEventType("[GCD-E01] AppsFlyerConversionListener is null - skip gcd");
            return;
        }
        StringBuilder sb = new StringBuilder("[GCD-A01] Loading conversion data. Counter: ");
        sb.append(abstractC0820j.onAttributionFailureNative);
        AFLogger.AFInAppEventType(sb.toString());
        long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
        if (j != 0 && System.currentTimeMillis() - j > 5184000000L) {
            AFLogger.AFInAppEventType("[GCD-E02] Cached conversion data expired");
            C0726ai.valueOf(context, "sixtyDayConversionData");
            C0726ai.values(context, "attributionId", null);
            c0726ai.valueOf(context, "appsflyerConversionDataCacheExpiration", 0L);
        }
        if (sharedPreferences.getString("attributionId", null) == null) {
            if (th != null) {
                StringBuilder sb2 = new StringBuilder("Launch exception: ");
                sb2.append(th.getMessage());
                RunnableC0784bv.valueOf(sb2.toString());
            } else if (num.intValue() != 200) {
                RunnableC0784bv.valueOf("Launch status code: ".concat(String.valueOf(num)));
            } else {
                RunnableC0784bv runnableC0784bv = new RunnableC0784bv(c0726ai, (Application) context.getApplicationContext(), str);
                C0726ai.AFInAppEventParameterName(runnableC0784bv.AFKeystoreWrapper, runnableC0784bv, 10L, TimeUnit.MILLISECONDS);
            }
        } else if (C0726ai.AFInAppEventParameterName(sharedPreferences, "appsFlyerCount", false) <= 1) {
        } else {
            try {
                Map<String, Object> AFInAppEventType = AFInAppEventType(context);
                if (AFInAppEventType == null) {
                    return;
                }
                if (!AFInAppEventType.containsKey("is_first_launch")) {
                    AFInAppEventType.put("is_first_launch", Boolean.FALSE);
                }
                RunnableC0784bv.AFInAppEventType(AFInAppEventType);
            } catch (C0779bp e) {
                AFLogger.valueOf(e.getMessage(), e);
            }
        }
    }
}
