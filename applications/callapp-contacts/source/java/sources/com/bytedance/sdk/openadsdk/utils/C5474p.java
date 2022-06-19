package com.bytedance.sdk.openadsdk.utils;

import android.os.Build;
import android.webkit.WebView;
/* renamed from: com.bytedance.sdk.openadsdk.utils.p */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p.class */
public class C5474p {

    /* renamed from: a */
    private static final C5476a f19019a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.utils.p$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p$a.class */
    public static class C5476a {
        private C5476a() {
        }

        /* renamed from: a */
        public void mo32122a(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.utils.p$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/p$b.class */
    static class C5477b extends C5476a {
        private C5477b() {
            super();
        }

        @Override // com.bytedance.sdk.openadsdk.utils.C5474p.C5476a
        /* renamed from: a */
        public void mo32122a(WebView webView, String str) {
            if (webView == null) {
                return;
            }
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
            if (z) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable th2) {
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f19019a = new C5477b();
        } else {
            f19019a = new C5476a();
        }
    }

    /* renamed from: a */
    public static void m32123a(WebView webView, String str) {
        f19019a.mo32122a(webView, str);
    }
}
