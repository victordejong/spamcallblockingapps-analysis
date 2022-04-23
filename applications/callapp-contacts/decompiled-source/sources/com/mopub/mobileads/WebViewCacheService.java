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

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Long, Config> f34372b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a  reason: collision with root package name */
    static final a f34371a = new a();

    /* renamed from: c  reason: collision with root package name */
    private static Handler f34373c = new Handler();

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {

        /* renamed from: a  reason: collision with root package name */
        private final BaseWebView f34374a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<BaseAd> f34375b;

        /* renamed from: c  reason: collision with root package name */
        private final MoPubWebViewController f34376c;

        Config(BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
            Preconditions.checkNotNull(baseWebView);
            Preconditions.checkNotNull(baseAd);
            this.f34374a = baseWebView;
            this.f34375b = new WeakReference<>(baseAd);
            this.f34376c = moPubWebViewController;
        }

        public MoPubWebViewController getController() {
            return this.f34376c;
        }

        public WeakReference<BaseAd> getWeakBaseAd() {
            return this.f34375b;
        }

        public BaseWebView getWebView() {
            return this.f34374a;
        }

        public void invalidate() {
            this.f34374a.destroy();
            this.f34375b.clear();
            MoPubWebViewController moPubWebViewController = this.f34376c;
            if (moPubWebViewController != null) {
                moPubWebViewController.destroy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$a.class */
    public static final class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebViewCacheService.a();
        }
    }

    private WebViewCacheService() {
    }

    static void a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it2 = f34372b.entrySet().iterator();
                while (it2.hasNext()) {
                    if (it2.next().getValue().getWeakBaseAd().get() == null) {
                        it2.remove();
                    }
                }
                if (!f34372b.isEmpty()) {
                    Handler handler = f34373c;
                    a aVar = f34371a;
                    handler.removeCallbacks(aVar);
                    f34373c.postDelayed(aVar, 900000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public static void clearAll() {
        f34372b.clear();
        f34373c.removeCallbacks(f34371a);
    }

    public static Config popWebViewConfig(Long l) {
        Preconditions.checkNotNull(l);
        return f34372b.remove(l);
    }

    public static void storeWebViewConfig(Long l, BaseWebView baseWebView, BaseAd baseAd, MoPubWebViewController moPubWebViewController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(baseAd);
        a();
        Map<Long, Config> map = f34372b;
        if (map.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            map.put(l, new Config(baseWebView, baseAd, moPubWebViewController));
        }
    }
}
