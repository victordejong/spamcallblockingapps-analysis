package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Patterns;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityManager;
import com.mopub.common.ViewabilityVendor;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.WebViewDebugListener;
import java.lang.ref.WeakReference;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController.class */
public abstract class MoPubWebViewController {

    /* renamed from: a */
    protected WeakReference<Activity> f59326a;

    /* renamed from: b */
    protected WebViewDebugListener f59327b;

    /* renamed from: c */
    protected String f59328c;

    /* renamed from: d */
    protected boolean f59329d = true;
    public BaseHtmlWebView.BaseWebViewListener mBaseWebViewListener;
    public final Context mContext;
    public final ViewGroup mDefaultAdContainer;
    public BaseWebView mWebView;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter.class */
    public static class ScreenMetricsWaiter {

        /* renamed from: a */
        private final Handler f59330a = new Handler();

        /* renamed from: b */
        private WaitRequest f59331b;

        /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest.class */
        public static class WaitRequest {

            /* renamed from: a */
            final Handler f59332a;

            /* renamed from: b */
            Runnable f59333b;

            /* renamed from: c */
            int f59334c;

            /* renamed from: d */
            final Runnable f59335d = new Runnable() { // from class: com.mopub.mobileads.MoPubWebViewController.ScreenMetricsWaiter.WaitRequest.1
                @Override // java.lang.Runnable
                public final void run() {
                    View[] viewArr;
                    for (final View view : WaitRequest.this.f59336e) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            WaitRequest.this.m6443a();
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mobileads.MoPubWebViewController.ScreenMetricsWaiter.WaitRequest.1.1
                                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                public final boolean onPreDraw() {
                                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                                    WaitRequest.this.m6443a();
                                    return true;
                                }
                            });
                        }
                    }
                }
            };

            /* renamed from: e */
            private final View[] f59336e;

            WaitRequest(Handler handler, View[] viewArr) {
                this.f59332a = handler;
                this.f59336e = viewArr;
            }

            /* renamed from: a */
            final void m6443a() {
                Runnable runnable;
                int i = this.f59334c - 1;
                this.f59334c = i;
                if (i != 0 || (runnable = this.f59333b) == null) {
                    return;
                }
                runnable.run();
                this.f59333b = null;
            }

            public void start(Runnable runnable) {
                this.f59333b = runnable;
                this.f59334c = this.f59336e.length;
                this.f59332a.post(this.f59335d);
            }
        }

        public void cancelLastRequest() {
            WaitRequest waitRequest = this.f59331b;
            if (waitRequest != null) {
                waitRequest.f59332a.removeCallbacks(waitRequest.f59335d);
                waitRequest.f59333b = null;
                this.f59331b = null;
            }
        }

        public WaitRequest waitFor(View... viewArr) {
            WaitRequest waitRequest = new WaitRequest(this.f59330a, viewArr);
            this.f59331b = waitRequest;
            return waitRequest;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$WebViewCacheListener.class */
    public interface WebViewCacheListener {
        void onReady(BaseWebView baseWebView);
    }

    public MoPubWebViewController(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        Preconditions.checkNotNull(applicationContext);
        this.f59328c = str;
        if (context instanceof Activity) {
            this.f59326a = new WeakReference<>((Activity) context);
        } else {
            this.f59326a = new WeakReference<>(null);
        }
        this.mDefaultAdContainer = new FrameLayout(applicationContext);
    }

    protected abstract BaseWebView createWebView();

    public void destroy() {
        if (!this.f59329d) {
            pause(true);
        }
    }

    protected abstract void doFillContent(String str);

    public final void fillContent(String str, Set<ViewabilityVendor> set, WebViewCacheListener webViewCacheListener) {
        Preconditions.checkNotNull(str, "htmlData cannot be null");
        BaseWebView createWebView = createWebView();
        this.mWebView = createWebView;
        if (webViewCacheListener != null) {
            webViewCacheListener.onReady(createWebView);
        }
        String str2 = str;
        if (!Patterns.WEB_URL.matcher(str).matches()) {
            str2 = ViewabilityManager.injectScriptContentIntoHtml(ViewabilityManager.injectVerificationUrlsIntoHtml(str, set));
        }
        doFillContent(str2);
    }

    public View getAdContainer() {
        return this.mDefaultAdContainer;
    }

    public BaseHtmlWebView.BaseWebViewListener getBaseWebViewListener() {
        return this.mBaseWebViewListener;
    }

    public Context getContext() {
        return this.mContext;
    }

    public void loadJavascript(String str) {
    }

    public void onShow(Activity activity) {
        Preconditions.checkNotNull(activity);
        this.f59326a = new WeakReference<>(activity);
    }

    public void pause(boolean z) {
        this.f59329d = true;
        BaseWebView baseWebView = this.mWebView;
        if (baseWebView != null) {
            WebViews.onPause(baseWebView, z);
        }
    }

    public void resume() {
        this.f59329d = false;
        BaseWebView baseWebView = this.mWebView;
        if (baseWebView != null) {
            baseWebView.onResume();
        }
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f59327b = webViewDebugListener;
    }

    public void setMoPubWebViewListener(BaseHtmlWebView.BaseWebViewListener baseWebViewListener) {
        this.mBaseWebViewListener = baseWebViewListener;
    }
}
