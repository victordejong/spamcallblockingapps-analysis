package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HurlStack;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;
import p012b.p035f.C0786e;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking.class */
public class Networking {

    /* renamed from: a */
    public static final String f35044a;

    /* renamed from: b */
    public static volatile MoPubRequestQueue f35045b;

    /* renamed from: c */
    public static volatile String f35046c;

    /* renamed from: d */
    public static volatile MaxWidthImageLoader f35047d;

    /* renamed from: e */
    public static boolean f35048e;

    /* renamed from: f */
    public static HurlStack.UrlRewriter f35049f;

    /* renamed from: com.mopub.network.Networking$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking$a.class */
    public static final class C8989a extends C0786e<String, Bitmap> {
        public C8989a(int i) {
            super(i);
        }

        /* renamed from: a */
        public int mo3778b(String str, Bitmap bitmap) {
            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.mo3778b(str, bitmap);
        }
    }

    /* renamed from: com.mopub.network.Networking$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking$b.class */
    public static final class C8990b implements ImageLoader.ImageCache {

        /* renamed from: a */
        public final /* synthetic */ C0786e f35050a;

        public C8990b(C0786e eVar) {
            this.f35050a = eVar;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
        public Bitmap getBitmap(String str) {
            return (Bitmap) this.f35050a.get(str);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
        public void putBitmap(String str, Bitmap bitmap) {
            this.f35050a.put(str, bitmap);
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
        f35044a = str2;
        f35048e = false;
    }

    @VisibleForTesting
    public static void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f35045b = null;
                f35047d = null;
                f35046c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getBaseUrlScheme() {
        return shouldUseHttps() ? "https" : "http";
    }

    public static String getCachedUserAgent() {
        String str = f35046c;
        String str2 = str;
        if (str == null) {
            str2 = f35044a;
        }
        return str2;
    }

    public static ImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader = f35047d;
        MaxWidthImageLoader maxWidthImageLoader2 = maxWidthImageLoader;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                try {
                    MaxWidthImageLoader maxWidthImageLoader3 = f35047d;
                    maxWidthImageLoader2 = maxWidthImageLoader3;
                    if (maxWidthImageLoader3 == null) {
                        maxWidthImageLoader2 = new MaxWidthImageLoader(getRequestQueue(context), context, new C8990b(new C8989a(DeviceUtils.memoryCacheSizeBytes(context))));
                        f35047d = maxWidthImageLoader2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return maxWidthImageLoader2;
    }

    public static MoPubRequestQueue getRequestQueue() {
        return f35045b;
    }

    public static MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue = f35045b;
        MoPubRequestQueue moPubRequestQueue2 = moPubRequestQueue;
        if (moPubRequestQueue == null) {
            synchronized (Networking.class) {
                try {
                    MoPubRequestQueue moPubRequestQueue3 = f35045b;
                    moPubRequestQueue2 = moPubRequestQueue3;
                    if (moPubRequestQueue3 == null) {
                        BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(getUserAgent(context.getApplicationContext()), getUrlRewriter(context), CustomSSLSocketFactory.getDefault(10000)));
                        File file = new File(context.getCacheDir().getPath() + File.separator + "mopub-volley-cache");
                        moPubRequestQueue2 = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, 10485760L)), basicNetwork);
                        f35045b = moPubRequestQueue2;
                        moPubRequestQueue2.start();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return moPubRequestQueue2;
    }

    public static String getScheme() {
        return "https";
    }

    public static HurlStack.UrlRewriter getUrlRewriter(Context context) {
        Preconditions.checkNotNull(context);
        if (f35049f == null) {
            f35049f = new PlayServicesUrlRewriter();
        }
        return f35049f;
    }

    public static String getUserAgent(Context context) {
        Preconditions.checkNotNull(context);
        String str = f35046c;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return f35044a;
        }
        String str2 = f35044a;
        try {
            str2 = WebSettings.getDefaultUserAgent(context);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
        }
        f35046c = str2;
        return str2;
    }

    @VisibleForTesting
    public static void setImageLoaderForTesting(MaxWidthImageLoader maxWidthImageLoader) {
        synchronized (Networking.class) {
            try {
                f35047d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f35045b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f35046c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean shouldUseHttps() {
        return f35048e;
    }

    public static void useHttps(boolean z) {
        f35048e = z;
    }
}
