package com.applovin.impl.sdk;

import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.sdk.z */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/z.class */
public class C1554z {

    /* renamed from: a */
    private static WebView f5759a;

    /* renamed from: b */
    private static volatile String f5760b;

    /* renamed from: a */
    public static String m4893a() {
        return f5760b;
    }

    /* renamed from: a */
    public static void m4892a(C1408l c1408l) {
    }

    /* renamed from: b */
    public static void m4889b(final C1408l c1408l) {
        if (f5760b != null) {
            return;
        }
        f5760b = "";
        if (C1492g.m5073b()) {
            c1408l.m5525R().m5653a(new C1387z(c1408l, true, new Runnable() { // from class: com.applovin.impl.sdk.z.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String unused = C1554z.f5760b = WebSettings.getDefaultUserAgent(c1408l.m5532K());
                    } catch (Throwable th) {
                        c1408l.m5542A().m5115b("WebViewDataCollector", "Failed to collect user agent", th);
                    }
                }
            }), C1362o.EnumC1364a.BACKGROUND);
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.z.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C1554z.m4892a(c1408l);
                        String unused = C1554z.f5760b = C1554z.f5759a.getSettings().getUserAgentString();
                    } catch (Throwable th) {
                        c1408l.m5542A().m5115b("WebViewDataCollector", "Failed to collect user agent", th);
                    }
                }
            });
        }
    }
}
