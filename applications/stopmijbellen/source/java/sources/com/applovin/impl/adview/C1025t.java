package com.applovin.impl.adview;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
/* renamed from: com.applovin.impl.adview.t */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/t.class */
public class C1025t extends C0995h {
    public C1025t(C1026u c1026u, Context context) {
        super(context);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(c1026u);
        setWebChromeClient(new WebChromeClient());
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
    }

    /* renamed from: a */
    public void m6783a(String str) {
        loadDataWithBaseURL("/", str, "text/html", null, "");
    }
}
