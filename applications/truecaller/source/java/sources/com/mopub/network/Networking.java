package com.mopub.network;

import android.content.Context;
import android.os.Looper;
import android.webkit.WebSettings;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking$getImageLoader$;
import com.mopub.volley.toolbox.HurlStack$UrlRewriter;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.d0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b%\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b4\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u00020\r8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u0012\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R.\u0010+\u001a\u0004\u0018\u00010\u00072\b\u0010&\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0087\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u0012\u0004\b*\u0010\u0012\u001a\u0004\b\b\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00102\u001a\u00020\r8\u0006@\u0007X\u0087D¢\u0006\u0012\n\u0004\b/\u0010!\u0012\u0004\b1\u0010\u0012\u001a\u0004\b0\u0010\u001dR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010!¨\u00065"}, d2 = {"Lcom/mopub/network/Networking;", "", "Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;", "getUrlRewriter", "()Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Lcom/mopub/network/MoPubRequestQueue;", "getRequestQueue", "(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;", "Lcom/mopub/network/MaxWidthImageLoader;", "getImageLoader", "(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;", "", "getUserAgent", "(Landroid/content/Context;)Ljava/lang/String;", "Ls1/s;", "clearForTesting", "()V", "queue", "setRequestQueueForTesting", "(Lcom/mopub/network/MoPubRequestQueue;)V", "imageLoader", "setImageLoaderForTesting", "(Lcom/mopub/network/MaxWidthImageLoader;)V", "userAgent", "setUserAgentForTesting", "(Ljava/lang/String;)V", "getCachedUserAgent", "()Ljava/lang/String;", "cachedUserAgent$annotations", "cachedUserAgent", "a", "Ljava/lang/String;", "DEFAULT_USER_AGENT", "d", "Lcom/mopub/network/MaxWidthImageLoader;", "maxWidthImageLoader", "<set-?>", C22021b.f61237c, "Lcom/mopub/network/MoPubRequestQueue;", "()Lcom/mopub/network/MoPubRequestQueue;", "requestQueue$annotations", "requestQueue", "e", "Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;", "urlRewriter", "f", "getScheme", "scheme$annotations", "scheme", AbstractC2405c.f7629a, "<init>", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/network/Networking.class */
public final class Networking {
    public static final Networking INSTANCE = new Networking();

    /* renamed from: a */
    public static final String f9242a;

    /* renamed from: b */
    public static volatile MoPubRequestQueue f9243b;

    /* renamed from: c */
    public static volatile String f9244c;

    /* renamed from: d */
    public static volatile MaxWidthImageLoader f9245d;

    /* renamed from: e */
    public static HurlStack$UrlRewriter f9246e;

    /* renamed from: f */
    public static final String f9247f;

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
        f9242a = str2;
        f9247f = "https";
    }

    private Networking() {
    }

    public static /* synthetic */ void cachedUserAgent$annotations() {
    }

    @VisibleForTesting
    public static final void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f9243b = null;
                f9245d = null;
                f9244c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final String getCachedUserAgent() {
        String str = f9244c;
        if (str == null) {
            str = f9242a;
        }
        return str;
    }

    public static final MaxWidthImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader;
        l.f(context, AnalyticsConstants.CONTEXT);
        MaxWidthImageLoader maxWidthImageLoader2 = f9245d;
        if (maxWidthImageLoader2 != null) {
            maxWidthImageLoader = maxWidthImageLoader2;
        } else {
            synchronized (d0.a(Networking.class)) {
                MaxWidthImageLoader maxWidthImageLoader3 = f9245d;
                maxWidthImageLoader = maxWidthImageLoader3 != null ? maxWidthImageLoader3 : (MaxWidthImageLoader) new Networking$getImageLoader$.inlined.synchronized.lambda.1(context).invoke();
            }
        }
        return maxWidthImageLoader;
    }

    public static final MoPubRequestQueue getRequestQueue() {
        return f9243b;
    }

    public static final MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue;
        l.f(context, AnalyticsConstants.CONTEXT);
        MoPubRequestQueue moPubRequestQueue2 = f9243b;
        if (moPubRequestQueue2 != null) {
            moPubRequestQueue = moPubRequestQueue2;
        } else {
            synchronized (d0.a(Networking.class)) {
                MoPubRequestQueue moPubRequestQueue3 = f9243b;
                moPubRequestQueue = moPubRequestQueue3 != null ? moPubRequestQueue3 : (MoPubRequestQueue) new a(context).invoke();
            }
        }
        return moPubRequestQueue;
    }

    public static final String getScheme() {
        return f9247f;
    }

    public static final HurlStack$UrlRewriter getUrlRewriter() {
        HurlStack$UrlRewriter hurlStack$UrlRewriter = f9246e;
        if (hurlStack$UrlRewriter == null) {
            hurlStack$UrlRewriter = new PlayServicesUrlRewriter();
            f9246e = hurlStack$UrlRewriter;
        }
        return hurlStack$UrlRewriter;
    }

    public static final String getUserAgent(Context context) {
        String str;
        l.f(context, AnalyticsConstants.CONTEXT);
        String str2 = f9244c;
        if (!(str2 == null || str2.length() == 0)) {
            return str2;
        }
        if (!l.a(Looper.myLooper(), Looper.getMainLooper())) {
            return f9242a;
        }
        String str3 = f9242a;
        try {
            str = WebSettings.getDefaultUserAgent(context);
            l.b(str, "WebSettings.getDefaultUserAgent(context)");
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
            str = str3;
        }
        f9244c = str;
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
                f9245d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f9243b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f9244c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
