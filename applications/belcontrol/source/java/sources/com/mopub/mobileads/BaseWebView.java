package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.exoplayer2.C0515C;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Views;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: d */
    public static boolean f4645d = false;

    /* renamed from: a */
    public boolean f4646a;

    /* renamed from: b */
    public final Handler f4647b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public boolean f4648c = false;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        m3694e();
        WebViews.setDisableJSChromeClient(this);
        if (!f4645d) {
            m3698a(getContext());
            f4645d = true;
        }
    }

    /* renamed from: a */
    public final void m3698a(Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", "text/html", C0515C.UTF8_NAME, null);
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
    public final void m3697b() {
        super.destroy();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: c */
    public void m3696c() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.f4646a) {
            return;
        }
        this.f4646a = true;
        Views.removeFromParent(this);
        removeAllViews();
        if (this.f4648c) {
            this.f4647b.postDelayed(new Runnable() { // from class: rg1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseWebView.this.m3697b();
                }
            }, 1000L);
        } else {
            super.destroy();
        }
    }

    /* renamed from: e */
    public final void m3694e() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WebViews.manageThirdPartyCookies(this);
    }

    @Deprecated
    @VisibleForTesting
    public void setIsDestroyed(boolean z) {
        this.f4646a = z;
    }
}
