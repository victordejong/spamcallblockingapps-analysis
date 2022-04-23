package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.w;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/n.class */
public class n {
    public static String a(WebView webView, int i) {
        if (webView == null) {
            return "";
        }
        String userAgentString = webView.getSettings().getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return "";
        }
        return userAgentString + " open_news open_news_u_s/" + i;
    }

    public static void a(Uri uri, w wVar) {
        if (wVar != null && wVar.a(uri)) {
            try {
                wVar.b(uri);
            } catch (Exception e) {
                q.d("WebView", "TTAndroidObj handleUri exception: ".concat(String.valueOf(e)));
            }
        }
    }
}
