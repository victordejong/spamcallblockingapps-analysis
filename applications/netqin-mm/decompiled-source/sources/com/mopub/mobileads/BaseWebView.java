package com.mopub.mobileads;

import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import android.webkit.WebView;
import com.android.volley.Request;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: b */
    public static boolean f34067b = false;

    /* renamed from: a */
    public boolean f34068a;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        m4410b();
        WebViews.setDisableJSChromeClient(this);
        if (!f34067b) {
            m4411a(getContext());
            f34067b = true;
        }
    }

    /* renamed from: a */
    public void m4412a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    /* renamed from: a */
    public final void m4411a(Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.type = 2005;
            layoutParams.flags = 16777240;
            layoutParams.format = -2;
            layoutParams.gravity = 8388659;
            ((WindowManager) context.getSystemService("window")).addView(webView, layoutParams);
        }
    }

    /* renamed from: b */
    public final void m4410b() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (!this.f34068a) {
            this.f34068a = true;
            Views.removeFromParent(this);
            removeAllViews();
            super.destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WebViews.manageThirdPartyCookies(this);
    }

    @Deprecated
    @VisibleForTesting
    public void setIsDestroyed(boolean z) {
        this.f34068a = z;
    }
}
