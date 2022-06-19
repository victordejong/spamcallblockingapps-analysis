package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.C4754w;
/* renamed from: com.bytedance.sdk.openadsdk.utils.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/n.class */
public class C5472n {
    /* renamed from: a */
    public static String m32126a(WebView webView, int i) {
        if (webView == null) {
            return "";
        }
        String userAgentString = webView.getSettings().getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return "";
        }
        return userAgentString + " open_news open_news_u_s/" + i;
    }

    /* renamed from: a */
    public static void m32127a(Uri uri, C4754w c4754w) {
        if (c4754w == null || !c4754w.m34161a(uri)) {
            return;
        }
        try {
            c4754w.m34130b(uri);
        } catch (Exception e) {
            C5478q.m32107d("WebView", "TTAndroidObj handleUri exception: ".concat(String.valueOf(e)));
        }
    }
}
