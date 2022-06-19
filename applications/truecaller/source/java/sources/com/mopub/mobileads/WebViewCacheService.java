package com.mopub.mobileads;

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

    /* renamed from: a */
    public static final Map<Long, Config> f8971a = Collections.synchronizedMap(new HashMap());
    @VisibleForTesting

    /* renamed from: b */
    public static final RunnableC2679b f8972b = new RunnableC2679b(null);

    /* renamed from: c */
    public static Handler f8973c = new Handler();

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {

        /* renamed from: a */
        public final BaseWebView f8974a;

        /* renamed from: b */
        public final WeakReference<BaseAd> f8975b;

        /* renamed from: c */
        public final MoPubWebViewController f8976c;

        public Config(BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
            Preconditions.checkNotNull(baseWebView);
            Preconditions.checkNotNull(baseAd);
            this.f8974a = baseWebView;
            this.f8975b = new WeakReference<>(baseAd);
            this.f8976c = moPubWebViewController;
        }

        public MoPubWebViewController getController() {
            return this.f8976c;
        }

        public WeakReference<BaseAd> getWeakBaseAd() {
            return this.f8975b;
        }

        public BaseWebView getWebView() {
            return this.f8974a;
        }

        public void invalidate() {
            this.f8974a.destroy();
            this.f8975b.clear();
            MoPubWebViewController moPubWebViewController = this.f8976c;
            if (moPubWebViewController != null) {
                moPubWebViewController.m36233a();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.WebViewCacheService$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$b.class */
    public static class RunnableC2679b implements Runnable {
        public RunnableC2679b() {
        }

        public RunnableC2679b(C2678a c2678a) {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewCacheService.m36213a();
        }
    }

    private WebViewCacheService() {
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m36213a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it = f8971a.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().getWeakBaseAd().get() == null) {
                        it.remove();
                    }
                }
                if (!f8971a.isEmpty()) {
                    Handler handler = f8973c;
                    RunnableC2679b runnableC2679b = f8972b;
                    handler.removeCallbacks(runnableC2679b);
                    f8973c.postDelayed(runnableC2679b, 900000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAll() {
        f8971a.clear();
        f8973c.removeCallbacks(f8972b);
    }

    public static Config popWebViewConfig(Long l) {
        Preconditions.checkNotNull(l);
        return f8971a.remove(l);
    }

    @VisibleForTesting
    public static void storeWebViewConfig(Long l, BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(baseAd);
        m36213a();
        Map<Long, Config> map = f8971a;
        if (map.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            map.put(l, new Config(baseWebView, baseAd, moPubWebViewController));
        }
    }
}
