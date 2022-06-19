package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewCacheService.class */
public class WebViewCacheService {

    /* renamed from: b */
    private static final Map<Long, Config> f59656b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    static final RunnableC16848a f59655a = new RunnableC16848a();

    /* renamed from: c */
    private static Handler f59657c = new Handler();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {

        /* renamed from: a */
        private final BaseWebView f59658a;

        /* renamed from: b */
        private final WeakReference<BaseAd> f59659b;

        /* renamed from: c */
        private final MoPubWebViewController f59660c;

        Config(BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
            Preconditions.checkNotNull(baseWebView);
            Preconditions.checkNotNull(baseAd);
            this.f59658a = baseWebView;
            this.f59659b = new WeakReference<>(baseAd);
            this.f59660c = moPubWebViewController;
        }

        public MoPubWebViewController getController() {
            return this.f59660c;
        }

        public WeakReference<BaseAd> getWeakBaseAd() {
            return this.f59659b;
        }

        public BaseWebView getWebView() {
            return this.f59658a;
        }

        public void invalidate() {
            this.f59658a.destroy();
            this.f59659b.clear();
            MoPubWebViewController moPubWebViewController = this.f59660c;
            if (moPubWebViewController != null) {
                moPubWebViewController.destroy();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.WebViewCacheService$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$a.class */
    public static final class RunnableC16848a implements Runnable {
        private RunnableC16848a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebViewCacheService.m6353a();
        }
    }

    private WebViewCacheService() {
    }

    /* renamed from: a */
    static void m6353a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it2 = f59656b.entrySet().iterator();
                while (it2.hasNext()) {
                    if (it2.next().getValue().getWeakBaseAd().get() == null) {
                        it2.remove();
                    }
                }
                if (!f59656b.isEmpty()) {
                    Handler handler = f59657c;
                    RunnableC16848a runnableC16848a = f59655a;
                    handler.removeCallbacks(runnableC16848a);
                    f59657c.postDelayed(runnableC16848a, 900000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public static void clearAll() {
        f59656b.clear();
        f59657c.removeCallbacks(f59655a);
    }

    public static Config popWebViewConfig(Long l) {
        Preconditions.checkNotNull(l);
        return f59656b.remove(l);
    }

    public static void storeWebViewConfig(Long l, BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(baseAd);
        m6353a();
        Map<Long, Config> map = f59656b;
        if (map.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            map.put(l, new Config(baseWebView, baseAd, moPubWebViewController));
        }
    }
}
