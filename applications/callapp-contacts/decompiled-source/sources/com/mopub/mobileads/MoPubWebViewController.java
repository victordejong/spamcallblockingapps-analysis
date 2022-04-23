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

    /* renamed from: a  reason: collision with root package name */
    protected WeakReference<Activity> f34141a;

    /* renamed from: b  reason: collision with root package name */
    protected WebViewDebugListener f34142b;

    /* renamed from: c  reason: collision with root package name */
    protected String f34143c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f34144d = true;
    public BaseHtmlWebView.BaseWebViewListener mBaseWebViewListener;
    public final Context mContext;
    public final ViewGroup mDefaultAdContainer;
    public BaseWebView mWebView;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter.class */
    public static class ScreenMetricsWaiter {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f34145a = new Handler();

        /* renamed from: b  reason: collision with root package name */
        private WaitRequest f34146b;

        /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest.class */
        public static class WaitRequest {

            /* renamed from: a  reason: collision with root package name */
            final Handler f34147a;

            /* renamed from: b  reason: collision with root package name */
            Runnable f34148b;

            /* renamed from: c  reason: collision with root package name */
            int f34149c;

            /* renamed from: d  reason: collision with root package name */
            final Runnable f34150d = new Runnable() { // from class: com.mopub.mobileads.MoPubWebViewController.ScreenMetricsWaiter.WaitRequest.1
                @Override // java.lang.Runnable
                public final void run() {
                    View[] viewArr;
                    for (final View view : WaitRequest.this.e) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            WaitRequest.this.a();
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mobileads.MoPubWebViewController.ScreenMetricsWaiter.WaitRequest.1.1
                                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                public final boolean onPreDraw() {
                                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                                    WaitRequest.this.a();
                                    return true;
                                }
                            });
                        }
                    }
                }
            };
            private final View[] e;

            WaitRequest(Handler handler, View[] viewArr) {
                this.f34147a = handler;
                this.e = viewArr;
            }

            final void a() {
                Runnable runnable;
                int i = this.f34149c - 1;
                this.f34149c = i;
                if (i == 0 && (runnable = this.f34148b) != null) {
                    runnable.run();
                    this.f34148b = null;
                }
            }

            public void start(Runnable runnable) {
                this.f34148b = runnable;
                this.f34149c = this.e.length;
                this.f34147a.post(this.f34150d);
            }
        }

        public void cancelLastRequest() {
            WaitRequest waitRequest = this.f34146b;
            if (waitRequest != null) {
                waitRequest.f34147a.removeCallbacks(waitRequest.f34150d);
                waitRequest.f34148b = null;
                this.f34146b = null;
            }
        }

        public WaitRequest waitFor(View... viewArr) {
            WaitRequest waitRequest = new WaitRequest(this.f34145a, viewArr);
            this.f34146b = waitRequest;
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
        this.f34143c = str;
        if (context instanceof Activity) {
            this.f34141a = new WeakReference<>((Activity) context);
        } else {
            this.f34141a = new WeakReference<>(null);
        }
        this.mDefaultAdContainer = new FrameLayout(applicationContext);
    }

    protected abstract BaseWebView createWebView();

    public void destroy() {
        if (!this.f34144d) {
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
        this.f34141a = new WeakReference<>(activity);
    }

    public void pause(boolean z) {
        this.f34144d = true;
        BaseWebView baseWebView = this.mWebView;
        if (baseWebView != null) {
            WebViews.onPause(baseWebView, z);
        }
    }

    public void resume() {
        this.f34144d = false;
        BaseWebView baseWebView = this.mWebView;
        if (baseWebView != null) {
            baseWebView.onResume();
        }
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f34142b = webViewDebugListener;
    }

    public void setMoPubWebViewListener(BaseHtmlWebView.BaseWebViewListener baseWebViewListener) {
        this.mBaseWebViewListener = baseWebViewListener;
    }
}
