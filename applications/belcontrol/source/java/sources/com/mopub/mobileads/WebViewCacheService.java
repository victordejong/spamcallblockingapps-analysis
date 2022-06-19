package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewCacheService.class */
public class WebViewCacheService {
    @SuppressLint({"UseSparseArrays"})

    /* renamed from: a */
    public static final Map<Long, Config> f4985a = Collections.synchronizedMap(new HashMap());
    @VisibleForTesting

    /* renamed from: b */
    public static final RunnableC1122b f4986b = new RunnableC1122b();

    /* renamed from: c */
    public static Handler f4987c = new Handler();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {

        /* renamed from: a */
        public final BaseWebView f4988a;

        /* renamed from: b */
        public final WeakReference<BaseAd> f4989b;

        /* renamed from: c */
        public final MoPubWebViewController f4990c;

        public Config(BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
            Preconditions.checkNotNull(baseWebView);
            Preconditions.checkNotNull(baseAd);
            this.f4988a = baseWebView;
            this.f4989b = new WeakReference<>(baseAd);
            this.f4990c = moPubWebViewController;
        }

        public MoPubWebViewController getController() {
            return this.f4990c;
        }

        public WeakReference<BaseAd> getWeakBaseAd() {
            return this.f4989b;
        }

        public BaseWebView getWebView() {
            return this.f4988a;
        }
    }

    /* renamed from: com.mopub.mobileads.WebViewCacheService$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$b.class */
    public static class RunnableC1122b implements Runnable {
        public RunnableC1122b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewCacheService.m3503a();
        }
    }

    private WebViewCacheService() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m3503a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it = f4985a.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().getWeakBaseAd().get() == null) {
                        it.remove();
                    }
                }
                if (!f4985a.isEmpty()) {
                    Handler handler = f4987c;
                    RunnableC1122b runnableC1122b = f4986b;
                    handler.removeCallbacks(runnableC1122b);
                    f4987c.postDelayed(runnableC1122b, 900000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAll() {
        f4985a.clear();
        f4987c.removeCallbacks(f4986b);
    }

    public static Config popWebViewConfig(Long l) {
        Preconditions.checkNotNull(l);
        return f4985a.remove(l);
    }

    @VisibleForTesting
    public static void storeWebViewConfig(Long l, BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(baseAd);
        m3503a();
        Map<Long, Config> map = f4985a;
        if (map.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            map.put(l, new Config(baseWebView, baseAd, moPubWebViewController));
        }
    }
}
