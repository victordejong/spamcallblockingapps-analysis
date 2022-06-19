package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;
import e.n.b.n;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: d */
    public static boolean f8784d = false;

    /* renamed from: a */
    public boolean f8785a;

    /* renamed from: b */
    public final Handler f8786b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public boolean f8787c = false;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
        WebViews.setDisableJSChromeClient(this);
        if (!f8784d) {
            getContext();
            f8784d = true;
        }
    }

    /* renamed from: b */
    public static void m36244b(BaseWebView baseWebView) {
        super.destroy();
    }

    /* renamed from: a */
    public void m36245a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (this.f8785a) {
            return;
        }
        this.f8785a = true;
        Views.removeFromParent(this);
        removeAllViews();
        if (this.f8787c) {
            this.f8786b.postDelayed(new n(this), 1000L);
        } else {
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
        this.f8785a = z;
    }
}
