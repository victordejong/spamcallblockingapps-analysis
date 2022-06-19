package com.mopub.network;

import android.content.Context;
import android.os.Looper;
import android.webkit.WebSettings;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HurlStack;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/Networking.class */
public final class Networking {
    public static final Networking INSTANCE = new Networking();

    /* renamed from: a */
    public static final String f5419a;

    /* renamed from: b */
    public static volatile MoPubRequestQueue f5420b;

    /* renamed from: c */
    public static volatile String f5421c;

    /* renamed from: d */
    public static volatile MaxWidthImageLoader f5422d;

    /* renamed from: e */
    public static HurlStack.UrlRewriter f5423e;

    /* renamed from: f */
    public static final String f5424f;

    /* renamed from: com.mopub.network.Networking$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/Networking$a.class */
    public static final class C1221a extends rk1 implements ik1<MoPubRequestQueue> {

        /* renamed from: b */
        public final /* synthetic */ Context f5425b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1221a(Context context) {
            super(0);
            this.f5425b = context;
        }

        @Override // p000.ik1
        public final MoPubRequestQueue invoke() {
            CustomSSLSocketFactory customSSLSocketFactory = CustomSSLSocketFactory.getDefault(10000);
            qk1.m745b(customSSLSocketFactory, "CustomSSLSocketFactory.g…tants.TEN_SECONDS_MILLIS)");
            Context applicationContext = this.f5425b.getApplicationContext();
            qk1.m745b(applicationContext, "context.applicationContext");
            BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(Networking.getUserAgent(applicationContext), Networking.getUrlRewriter(), customSSLSocketFactory));
            StringBuilder sb = new StringBuilder();
            File cacheDir = this.f5425b.getCacheDir();
            qk1.m745b(cacheDir, "context.cacheDir");
            sb.append(cacheDir.getPath());
            sb.append(File.separator);
            sb.append("mopub-volley-cache");
            File file = new File(sb.toString());
            MoPubRequestQueue moPubRequestQueue = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, (long) Constants.TEN_MB)), basicNetwork);
            Networking.f5420b = moPubRequestQueue;
            moPubRequestQueue.start();
            return moPubRequestQueue;
        }
    }

    static {
        String str;
        String str2 = "";
        try {
            str = System.getProperty("http.agent", "");
        } catch (SecurityException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get system user agent.");
            str = "";
        }
        if (str != null) {
            str2 = str;
        }
        f5419a = str2;
        f5424f = "https";
    }

    private Networking() {
    }

    public static /* synthetic */ void cachedUserAgent$annotations() {
    }

    @VisibleForTesting
    public static final void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f5420b = null;
                f5422d = null;
                f5421c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final String getCachedUserAgent() {
        String str = f5421c;
        if (str == null) {
            str = f5419a;
        }
        return str;
    }

    public static final MaxWidthImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader;
        qk1.m744c(context, "context");
        MaxWidthImageLoader maxWidthImageLoader2 = f5422d;
        if (maxWidthImageLoader2 != null) {
            maxWidthImageLoader = maxWidthImageLoader2;
        } else {
            synchronized (sk1.m561a(Networking.class)) {
                MaxWidthImageLoader maxWidthImageLoader3 = f5422d;
                maxWidthImageLoader = maxWidthImageLoader3 != null ? maxWidthImageLoader3 : new Networking$getImageLoader$$inlined$synchronized$lambda$1(context).invoke();
            }
        }
        return maxWidthImageLoader;
    }

    public static final MoPubRequestQueue getRequestQueue() {
        return f5420b;
    }

    public static final MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue;
        qk1.m744c(context, "context");
        MoPubRequestQueue moPubRequestQueue2 = f5420b;
        if (moPubRequestQueue2 != null) {
            moPubRequestQueue = moPubRequestQueue2;
        } else {
            synchronized (sk1.m561a(Networking.class)) {
                MoPubRequestQueue moPubRequestQueue3 = f5420b;
                moPubRequestQueue = moPubRequestQueue3 != null ? moPubRequestQueue3 : new C1221a(context).invoke();
            }
        }
        return moPubRequestQueue;
    }

    public static final String getScheme() {
        return f5424f;
    }

    public static final HurlStack.UrlRewriter getUrlRewriter() {
        PlayServicesUrlRewriter playServicesUrlRewriter = f5423e;
        if (playServicesUrlRewriter == null) {
            playServicesUrlRewriter = new PlayServicesUrlRewriter();
            f5423e = playServicesUrlRewriter;
        }
        return playServicesUrlRewriter;
    }

    public static final String getUserAgent(Context context) {
        String str;
        qk1.m744c(context, "context");
        String str2 = f5421c;
        if (!(str2 == null || str2.length() == 0)) {
            return str2;
        }
        if (!qk1.m746a(Looper.myLooper(), Looper.getMainLooper())) {
            return f5419a;
        }
        String str3 = f5419a;
        try {
            str = WebSettings.getDefaultUserAgent(context);
            qk1.m745b(str, "WebSettings.getDefaultUserAgent(context)");
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
            str = str3;
        }
        f5421c = str;
        return str;
    }

    public static /* synthetic */ void requestQueue$annotations() {
    }

    public static /* synthetic */ void scheme$annotations() {
    }

    @VisibleForTesting
    public static final void setImageLoaderForTesting(MaxWidthImageLoader maxWidthImageLoader) {
        synchronized (Networking.class) {
            try {
                f5422d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f5420b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f5421c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
