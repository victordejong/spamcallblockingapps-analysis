package com.aotter.net.trek.ads;

import android.content.Context;
import com.aotter.net.trek.common.util.VersionCode;
import com.aotter.net.trek.util.TrekLog;
import com.aotter.net.volley.toolbox.JsonRequest;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/BaseHtmlWebView.class */
public class BaseHtmlWebView extends BaseWebView {
    public BaseHtmlWebView(Context context) {
        super(context);
        getSettings().setJavaScriptEnabled(true);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            m36583a(true);
        }
        setBackgroundColor(0);
    }

    /* renamed from: b */
    private void m36586b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    /* renamed from: a */
    public void m36587a(String str) {
        loadDataWithBaseURL("", str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
    }

    public void init(boolean z) {
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (str != null) {
            TrekLog.m36319d("BaseHtmlWebView Loading url: " + str);
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
            }
        }
    }
}
