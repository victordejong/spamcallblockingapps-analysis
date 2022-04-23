package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p.class */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final a f10308a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p$a.class */
    static class a {
        private a() {
        }

        public void a(WebView webView, String str) {
            if (webView != null) {
                try {
                    webView.loadUrl(str);
                } catch (Throwable th) {
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p$b.class */
    static class b extends a {
        private b() {
            super();
        }

        @Override // com.bytedance.sdk.openadsdk.utils.p.a
        public void a(WebView webView, String str) {
            if (webView != null) {
                boolean z = false;
                if (str != null) {
                    z = false;
                    if (str.startsWith("javascript:")) {
                        try {
                            webView.evaluateJavascript(str, null);
                            z = true;
                        } catch (Throwable th) {
                            boolean z2 = th instanceof IllegalStateException;
                            z = false;
                        }
                    }
                }
                if (!z) {
                    try {
                        webView.loadUrl(str);
                    } catch (Throwable th2) {
                    }
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f10308a = new b();
        } else {
            f10308a = new a();
        }
    }

    public static void a(WebView webView, String str) {
        f10308a.a(webView, str);
    }
}
