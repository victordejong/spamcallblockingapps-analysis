package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkResult;
import java.util.Map;
import org.json.JSONException;
/* renamed from: com.appsflyer.internal.ap */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ap.class */
public final class C0749ap {
    public static void AFInAppEventParameterName(String str, DeepLinkResult.Error error) {
        if (C0818i.values().valueOf == null) {
            AFKeystoreWrapper(str);
            return;
        }
        AFLogger.AFInAppEventType("[DDL] Error occurred: ".concat(String.valueOf(str)));
        values(new DeepLinkResult(null, error));
    }

    public static void AFInAppEventParameterName(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        try {
            if (C0818i.values().valueOf == null) {
                AFKeystoreWrapper(map);
                return;
            }
            try {
                DeepLink AFKeystoreWrapper = DeepLink.AFKeystoreWrapper(map);
                AFKeystoreWrapper.values.put("is_deferred", false);
                deepLinkResult = new DeepLinkResult(AFKeystoreWrapper, null);
            } catch (JSONException e) {
                AFLogger.values("[DDL] Error occurred", e);
                deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
            }
            values(deepLinkResult);
        } catch (Throwable th) {
            values(new DeepLinkResult(null, null));
            throw th;
        }
    }

    private static void AFKeystoreWrapper(String str) {
        if (C0726ai.AFInAppEventType != null) {
            try {
                AFLogger.AFInAppEventType("Calling onAppOpenAttributionFailure with: ".concat(String.valueOf(str)));
                C0726ai.AFInAppEventType.onAttributionFailure(str);
            } catch (Throwable th) {
                AFLogger.valueOf(th.getLocalizedMessage(), th);
            }
        }
    }

    private static void AFKeystoreWrapper(Map<String, String> map) {
        if (C0726ai.AFInAppEventType != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.AFInAppEventType(sb.toString());
                C0726ai.AFInAppEventType.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.valueOf(th.getLocalizedMessage(), th);
            }
        }
    }

    public static void values(DeepLinkResult deepLinkResult) {
        if (C0818i.values().valueOf == null) {
            AFLogger.AFInAppEventType("[DDL] skipping, no callback registered");
            return;
        }
        StringBuilder sb = new StringBuilder("[DDL] Calling onDeepLinking with:\n");
        sb.append(deepLinkResult.toString());
        AFLogger.AFInAppEventType(sb.toString());
        try {
            C0818i.values().valueOf.onDeepLinking(deepLinkResult);
        } catch (Throwable th) {
            AFLogger.valueOf(th.getLocalizedMessage(), th);
        }
    }
}
