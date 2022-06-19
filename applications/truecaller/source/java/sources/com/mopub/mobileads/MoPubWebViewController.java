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
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.WebViewDebugListener;
import java.lang.ref.WeakReference;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController.class */
public abstract class MoPubWebViewController {

    /* renamed from: a */
    public WeakReference<Activity> f8817a;

    /* renamed from: b */
    public final Context f8818b;

    /* renamed from: c */
    public final ViewGroup f8819c;

    /* renamed from: d */
    public BaseHtmlWebView$BaseWebViewListener f8820d;

    /* renamed from: e */
    public WebViewDebugListener f8821e;

    /* renamed from: f */
    public BaseWebView f8822f;

    /* renamed from: g */
    public String f8823g;

    /* renamed from: h */
    public boolean f8824h = true;

    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter.class */
    public static class ScreenMetricsWaiter {

        /* renamed from: a */
        public final Handler f8825a = new Handler();

        /* renamed from: b */
        public WaitRequest f8826b;

        /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest.class */
        public static class WaitRequest {

            /* renamed from: a */
            public final View[] f8827a;

            /* renamed from: b */
            public final Handler f8828b;

            /* renamed from: c */
            public Runnable f8829c;

            /* renamed from: d */
            public int f8830d;

            /* renamed from: e */
            public final Runnable f8831e = new RunnableC2668a();

            /* renamed from: com.mopub.mobileads.MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a */
            /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a.class */
            public class RunnableC2668a implements Runnable {

                /* renamed from: com.mopub.mobileads.MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a$a */
                /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a$a.class */
                public class ViewTreeObserver$OnPreDrawListenerC2669a implements ViewTreeObserver.OnPreDrawListener {

                    /* renamed from: a */
                    public final /* synthetic */ View f8833a;

                    public ViewTreeObserver$OnPreDrawListenerC2669a(View view) {
                        RunnableC2668a.this = r4;
                        this.f8833a = view;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        Runnable runnable;
                        this.f8833a.getViewTreeObserver().removeOnPreDrawListener(this);
                        WaitRequest waitRequest = WaitRequest.this;
                        int i = waitRequest.f8830d - 1;
                        waitRequest.f8830d = i;
                        if (i != 0 || (runnable = waitRequest.f8829c) == null) {
                            return true;
                        }
                        runnable.run();
                        waitRequest.f8829c = null;
                        return true;
                    }
                }

                public RunnableC2668a() {
                    WaitRequest.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    View[] viewArr;
                    Runnable runnable;
                    for (View view : WaitRequest.this.f8827a) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            WaitRequest waitRequest = WaitRequest.this;
                            int i = waitRequest.f8830d - 1;
                            waitRequest.f8830d = i;
                            if (i == 0 && (runnable = waitRequest.f8829c) != null) {
                                runnable.run();
                                waitRequest.f8829c = null;
                            }
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC2669a(view));
                        }
                    }
                }
            }

            public WaitRequest(Handler handler, View[] viewArr) {
                this.f8828b = handler;
                this.f8827a = viewArr;
            }

            public void start(Runnable runnable) {
                this.f8829c = runnable;
                this.f8830d = this.f8827a.length;
                this.f8828b.post(this.f8831e);
            }
        }

        public void cancelLastRequest() {
            WaitRequest waitRequest = this.f8826b;
            if (waitRequest != null) {
                waitRequest.f8828b.removeCallbacks(waitRequest.f8831e);
                waitRequest.f8829c = null;
                this.f8826b = null;
            }
        }

        public WaitRequest waitFor(View... viewArr) {
            WaitRequest waitRequest = new WaitRequest(this.f8825a, viewArr);
            this.f8826b = waitRequest;
            return waitRequest;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$WebViewCacheListener.class */
    public interface WebViewCacheListener {
        void onReady(BaseWebView baseWebView);
    }

    public MoPubWebViewController(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f8818b = applicationContext;
        Preconditions.checkNotNull(applicationContext);
        this.f8823g = str;
        if (context instanceof Activity) {
            this.f8817a = new WeakReference<>((Activity) context);
        } else {
            this.f8817a = new WeakReference<>(null);
        }
        this.f8819c = new FrameLayout(applicationContext);
    }

    /* renamed from: a */
    public void m36233a() {
        if (!this.f8824h) {
            m36231c(true);
        }
    }

    /* renamed from: b */
    public abstract void m36232b(String str);

    /* renamed from: c */
    public void m36231c(boolean z) {
        this.f8824h = true;
        BaseWebView baseWebView = this.f8822f;
        if (baseWebView != null) {
            WebViews.onPause(baseWebView, z);
        }
    }

    public abstract BaseWebView createWebView();

    /* renamed from: d */
    public void m36230d() {
        this.f8824h = false;
        BaseWebView baseWebView = this.f8822f;
        if (baseWebView != null) {
            baseWebView.onResume();
        }
    }

    public final void fillContent(String str, Set<ViewabilityVendor> set, WebViewCacheListener webViewCacheListener) {
        Preconditions.checkNotNull(str, "htmlData cannot be null");
        BaseWebView createWebView = createWebView();
        this.f8822f = createWebView;
        if (webViewCacheListener != null) {
            webViewCacheListener.onReady(createWebView);
        }
        String str2 = str;
        if (!Patterns.WEB_URL.matcher(str).matches()) {
            str2 = ViewabilityManager.injectScriptContentIntoHtml(ViewabilityManager.injectVerificationUrlsIntoHtml(str, set));
        }
        m36232b(str2);
    }

    public View getAdContainer() {
        return this.f8819c;
    }

    @VisibleForTesting
    public BaseHtmlWebView$BaseWebViewListener getBaseWebViewListener() {
        return this.f8820d;
    }

    public Context getContext() {
        return this.f8818b;
    }

    public void loadJavascript(String str) {
    }

    public void onShow(Activity activity) {
        Preconditions.checkNotNull(activity);
        this.f8817a = new WeakReference<>(activity);
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f8821e = webViewDebugListener;
    }

    public void setMoPubWebViewListener(BaseHtmlWebView$BaseWebViewListener baseHtmlWebView$BaseWebViewListener) {
        this.f8820d = baseHtmlWebView$BaseWebViewListener;
    }
}
