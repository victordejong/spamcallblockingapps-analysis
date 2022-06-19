package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityManager;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.WebViewDebugListener;
import java.lang.ref.WeakReference;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController.class */
public abstract class MoPubWebViewController {

    /* renamed from: a */
    public WeakReference<Activity> f4755a;

    /* renamed from: b */
    public final Context f4756b;

    /* renamed from: c */
    public final ViewGroup f4757c;

    /* renamed from: d */
    public BaseHtmlWebView.BaseWebViewListener f4758d;

    /* renamed from: e */
    public WebViewDebugListener f4759e;

    /* renamed from: f */
    public BaseWebView f4760f;

    /* renamed from: g */
    public String f4761g;

    /* renamed from: h */
    public boolean f4762h = true;

    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter.class */
    public static class ScreenMetricsWaiter {

        /* renamed from: a */
        public final Handler f4763a = new Handler();

        /* renamed from: b */
        public WaitRequest f4764b;

        /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest.class */
        public static class WaitRequest {

            /* renamed from: a */
            public final View[] f4765a;

            /* renamed from: b */
            public final Handler f4766b;

            /* renamed from: c */
            public Runnable f4767c;

            /* renamed from: d */
            public int f4768d;

            /* renamed from: e */
            public final Runnable f4769e = new RunnableC1103a();

            /* renamed from: com.mopub.mobileads.MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a */
            /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a.class */
            public class RunnableC1103a implements Runnable {

                /* renamed from: com.mopub.mobileads.MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a$a */
                /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest$a$a.class */
                public class ViewTreeObserver$OnPreDrawListenerC1104a implements ViewTreeObserver.OnPreDrawListener {

                    /* renamed from: a */
                    public final /* synthetic */ View f4771a;

                    public ViewTreeObserver$OnPreDrawListenerC1104a(View view) {
                        RunnableC1103a.this = r4;
                        this.f4771a = view;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        this.f4771a.getViewTreeObserver().removeOnPreDrawListener(this);
                        WaitRequest.this.m3605c();
                        return true;
                    }
                }

                public RunnableC1103a() {
                    WaitRequest.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    View[] viewArr;
                    for (View view : WaitRequest.this.f4765a) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            WaitRequest.this.m3605c();
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC1104a(view));
                        }
                    }
                }
            }

            public WaitRequest(Handler handler, View[] viewArr) {
                this.f4766b = handler;
                this.f4765a = viewArr;
            }

            /* renamed from: b */
            public void m3606b() {
                this.f4766b.removeCallbacks(this.f4769e);
                this.f4767c = null;
            }

            /* renamed from: c */
            public void m3605c() {
                Runnable runnable;
                int i = this.f4768d - 1;
                this.f4768d = i;
                if (i != 0 || (runnable = this.f4767c) == null) {
                    return;
                }
                runnable.run();
                this.f4767c = null;
            }

            public void start(Runnable runnable) {
                this.f4767c = runnable;
                this.f4768d = this.f4765a.length;
                this.f4766b.post(this.f4769e);
            }
        }

        public void cancelLastRequest() {
            WaitRequest waitRequest = this.f4764b;
            if (waitRequest != null) {
                waitRequest.m3606b();
                this.f4764b = null;
            }
        }

        public WaitRequest waitFor(View... viewArr) {
            WaitRequest waitRequest = new WaitRequest(this.f4763a, viewArr);
            this.f4764b = waitRequest;
            return waitRequest;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubWebViewController$WebViewCacheListener.class */
    public interface WebViewCacheListener {
        void onReady(BaseWebView baseWebView);
    }

    public MoPubWebViewController(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f4756b = applicationContext;
        Preconditions.checkNotNull(applicationContext);
        this.f4761g = str;
        if (context instanceof Activity) {
            this.f4755a = new WeakReference<>((Activity) context);
        } else {
            this.f4755a = new WeakReference<>(null);
        }
        this.f4757c = new FrameLayout(applicationContext);
    }

    /* renamed from: a */
    public void mo3435a() {
        if (!this.f4762h) {
            mo3431c(true);
        }
    }

    /* renamed from: b */
    public abstract void mo3433b(String str);

    /* renamed from: c */
    public void mo3431c(boolean z) {
        this.f4762h = true;
        BaseWebView baseWebView = this.f4760f;
        if (baseWebView != null) {
            WebViews.onPause(baseWebView, z);
        }
    }

    public abstract BaseWebView createWebView();

    /* renamed from: d */
    public void mo3429d() {
        this.f4762h = false;
        BaseWebView baseWebView = this.f4760f;
        if (baseWebView != null) {
            baseWebView.onResume();
        }
    }

    public final void fillContent(String str, Set<ViewabilityVendor> set, WebViewCacheListener webViewCacheListener) {
        Preconditions.checkNotNull(str, "htmlData cannot be null");
        BaseWebView createWebView = createWebView();
        this.f4760f = createWebView;
        if (webViewCacheListener != null) {
            webViewCacheListener.onReady(createWebView);
        }
        mo3433b(ViewabilityManager.injectScriptContentIntoHtml(ViewabilityManager.injectVerificationUrlsIntoHtml(str, set)));
    }

    public View getAdContainer() {
        return this.f4757c;
    }

    @VisibleForTesting
    public BaseHtmlWebView.BaseWebViewListener getBaseWebViewListener() {
        return this.f4758d;
    }

    public Context getContext() {
        return this.f4756b;
    }

    public void loadJavascript(String str) {
    }

    public void onShow(Activity activity) {
        Preconditions.checkNotNull(activity);
        this.f4755a = new WeakReference<>(activity);
    }

    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f4759e = webViewDebugListener;
    }

    public void setMoPubWebViewListener(BaseHtmlWebView.BaseWebViewListener baseWebViewListener) {
        this.f4758d = baseWebViewListener;
    }
}
