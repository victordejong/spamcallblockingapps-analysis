package com.mopub.mobileads;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import android.webkit.WebView;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: c */
    private static boolean f59129c = false;

    /* renamed from: a */
    protected boolean f59130a;

    /* renamed from: d */
    private final Handler f59132d = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    protected boolean f59131b = false;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
        WebViews.setDisableJSChromeClient(this);
        if (!f59129c) {
            Context context2 = getContext();
            if (Build.VERSION.SDK_INT == 19) {
                WebView webView = new WebView(context2.getApplicationContext());
                webView.setBackgroundColor(0);
                webView.loadDataWithBaseURL(null, "", Mimetypes.MIMETYPE_HTML, "UTF-8", null);
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.width = 1;
                layoutParams.height = 1;
                layoutParams.type = 2005;
                layoutParams.flags = 16777240;
                layoutParams.format = -2;
                layoutParams.gravity = 8388659;
                ((WindowManager) context2.getSystemService("window")).addView(webView, layoutParams);
            }
            f59129c = true;
        }
    }

    /* renamed from: b */
    public void m6550b() {
        super.destroy();
    }

    /* renamed from: a */
    public final void m6551a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.f59130a) {
            return;
        }
        this.f59130a = true;
        Views.removeFromParent(this);
        removeAllViews();
        if (this.f59131b) {
            this.f59132d.postDelayed(new Runnable() { // from class: com.mopub.mobileads._$$Lambda$BaseWebView$3QpdVWDz68hZidiMx61o0_oyhPk
                @Override // java.lang.Runnable
                public final void run() {
                    BaseWebView.this.m6550b();
                }
            }, 1000L);
        } else {
            super.destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WebViews.manageThirdPartyCookies(this);
    }
}
