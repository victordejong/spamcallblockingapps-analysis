package com.bytedance.sdk.openadsdk.preload.falconx.b;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.appsflyer.internal.referrer.Payload;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/b/a.class */
public class a {
    public static WebResourceResponse a(InputStream inputStream, Map<String, String> map) {
        WebResourceResponse webResourceResponse;
        if (inputStream == null) {
            return null;
        }
        Map<String, String> map2 = map;
        if (map == null) {
            try {
                map2 = new HashMap<>();
            } catch (Throwable th) {
                Log.e("WebResourceUtils", "getResponseWithHeaders error", th);
                return null;
            }
        }
        String str = map2.get("content-type");
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = map2.get("Content-Type");
        }
        boolean z = false;
        if (str2 != null) {
            z = str2.contains("font/ttf");
        }
        if (Build.VERSION.SDK_INT < 21 || !z) {
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(null, null, inputStream);
            if (Build.VERSION.SDK_INT >= 21) {
                webResourceResponse2.setResponseHeaders(map2);
                webResourceResponse = webResourceResponse2;
            } else {
                Field field = webResourceResponse2.getClass().getField("mResponseHeaders");
                field.setAccessible(true);
                field.set(webResourceResponse2, map2);
                webResourceResponse = webResourceResponse2;
            }
        } else {
            webResourceResponse = new WebResourceResponse(null, null, 200, Payload.RESPONSE_OK, map2, inputStream);
        }
        return webResourceResponse;
    }
}
