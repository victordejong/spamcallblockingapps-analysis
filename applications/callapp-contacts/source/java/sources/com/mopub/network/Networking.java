package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.webkit.WebSettings;
import androidx.p023b.C0434e;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HurlStack;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u0017H\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010 \u001a\u00020\u001a2\b\u0010!\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\"\u001a\u00020\u001a2\b\u0010#\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010$\u001a\u00020\u001a2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083T¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R*\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0087\u000e¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n��\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\nR\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006%"}, m4298d2 = {"Lcom/mopub/network/Networking;", "", "()V", "CACHE_DIRECTORY_NAME", "", "CACHE_DIRECTORY_NAME$annotations", "DEFAULT_USER_AGENT", "cachedUserAgent", "cachedUserAgent$annotations", "getCachedUserAgent", "()Ljava/lang/String;", "maxWidthImageLoader", "Lcom/mopub/network/MaxWidthImageLoader;", "<set-?>", "Lcom/mopub/network/MoPubRequestQueue;", "requestQueue", "requestQueue$annotations", "getRequestQueue", "()Lcom/mopub/network/MoPubRequestQueue;", "scheme", "scheme$annotations", "getScheme", "urlRewriter", "Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;", "userAgent", "clearForTesting", "", "getImageLoader", "context", "Landroid/content/Context;", "getUrlRewriter", "getUserAgent", "setImageLoaderForTesting", "imageLoader", "setRequestQueueForTesting", "queue", "setUserAgentForTesting", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking.class */
public final class Networking {
    public static final Networking INSTANCE = new Networking();

    /* renamed from: a */
    private static final String f60319a;

    /* renamed from: b */
    private static volatile MoPubRequestQueue f60320b;

    /* renamed from: c */
    private static volatile String f60321c;

    /* renamed from: d */
    private static volatile MaxWidthImageLoader f60322d;

    /* renamed from: e */
    private static HurlStack.UrlRewriter f60323e;

    /* renamed from: f */
    private static final String f60324f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "Lcom/mopub/network/MaxWidthImageLoader;", "invoke", "com/mopub/network/Networking$getImageLoader$1$1"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.network.Networking$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking$a.class */
    public static final class C17000a extends AbstractC18526r implements Function0<MaxWidthImageLoader> {

        /* renamed from: a */
        final /* synthetic */ Context f60325a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17000a(Context context) {
            super(0);
            this.f60325a = context;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1] */
        @Override // kotlin.jvm.functions.Function0
        public final MaxWidthImageLoader invoke() {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(this.f60325a);
            final int memoryCacheSizeBytes = DeviceUtils.memoryCacheSizeBytes(this.f60325a);
            final ?? r0 = new C0434e<String, Bitmap>(memoryCacheSizeBytes) { // from class: com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1
                @Override // androidx.p023b.C0434e
                public final /* synthetic */ int sizeOf(String str, Bitmap bitmap) {
                    String key = str;
                    Bitmap value = bitmap;
                    C18524p.m3841c(key, "key");
                    C18524p.m3841c(value, "value");
                    return value.getRowBytes() * value.getHeight();
                }
            };
            MaxWidthImageLoader maxWidthImageLoader = new MaxWidthImageLoader(requestQueue, this.f60325a, new ImageLoader.ImageCache() { // from class: com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$2
                @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                public final Bitmap getBitmap(String key) {
                    C18524p.m3841c(key, "key");
                    return get(key);
                }

                @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                public final void putBitmap(String key, Bitmap bitmap) {
                    C18524p.m3841c(key, "key");
                    C18524p.m3841c(bitmap, "bitmap");
                    put(key, bitmap);
                }
            });
            Networking networking = Networking.INSTANCE;
            Networking.f60322d = maxWidthImageLoader;
            return maxWidthImageLoader;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "Lcom/mopub/network/MoPubRequestQueue;", "invoke", "com/mopub/network/Networking$getRequestQueue$1$1"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.network.Networking$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking$b.class */
    public static final class C17001b extends AbstractC18526r implements Function0<MoPubRequestQueue> {

        /* renamed from: a */
        final /* synthetic */ Context f60326a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17001b(Context context) {
            super(0);
            this.f60326a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        public final MoPubRequestQueue invoke() {
            CustomSSLSocketFactory customSSLSocketFactory = CustomSSLSocketFactory.getDefault(10000);
            C18524p.m3849a((Object) customSSLSocketFactory, "CustomSSLSocketFactory.g…tants.TEN_SECONDS_MILLIS)");
            Context applicationContext = this.f60326a.getApplicationContext();
            C18524p.m3849a((Object) applicationContext, "context.applicationContext");
            BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(Networking.getUserAgent(applicationContext), Networking.getUrlRewriter(), customSSLSocketFactory));
            StringBuilder sb = new StringBuilder();
            File cacheDir = this.f60326a.getCacheDir();
            C18524p.m3849a((Object) cacheDir, "context.cacheDir");
            sb.append(cacheDir.getPath());
            sb.append(File.separator);
            sb.append("mopub-volley-cache");
            File file = new File(sb.toString());
            MoPubRequestQueue moPubRequestQueue = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, 10485760L)), basicNetwork);
            Networking.f60320b = moPubRequestQueue;
            moPubRequestQueue.start();
            return moPubRequestQueue;
        }
    }

    static {
        String str;
        try {
            str = System.getProperty("http.agent", "");
        } catch (SecurityException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get system user agent.");
            str = "";
        }
        if (str == null) {
            str = "";
        }
        f60319a = str;
        f60324f = "https";
    }

    private Networking() {
    }

    public static /* synthetic */ void cachedUserAgent$annotations() {
    }

    @VisibleForTesting
    public static final void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f60320b = null;
                f60322d = null;
                f60321c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final String getCachedUserAgent() {
        String str = f60321c;
        String str2 = str;
        if (str == null) {
            str2 = f60319a;
        }
        return str2;
    }

    public static final MaxWidthImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader;
        C18524p.m3841c(context, "context");
        MaxWidthImageLoader maxWidthImageLoader2 = f60322d;
        if (maxWidthImageLoader2 == null) {
            synchronized (C18496ac.m3882b(Networking.class)) {
                MaxWidthImageLoader maxWidthImageLoader3 = f60322d;
                maxWidthImageLoader = maxWidthImageLoader3;
                if (maxWidthImageLoader3 == null) {
                    maxWidthImageLoader = new C17000a(context).invoke();
                }
            }
            return maxWidthImageLoader;
        }
        return maxWidthImageLoader2;
    }

    public static final MoPubRequestQueue getRequestQueue() {
        return f60320b;
    }

    public static final MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue;
        C18524p.m3841c(context, "context");
        MoPubRequestQueue moPubRequestQueue2 = f60320b;
        if (moPubRequestQueue2 == null) {
            synchronized (C18496ac.m3882b(Networking.class)) {
                MoPubRequestQueue moPubRequestQueue3 = f60320b;
                moPubRequestQueue = moPubRequestQueue3;
                if (moPubRequestQueue3 == null) {
                    moPubRequestQueue = new C17001b(context).invoke();
                }
            }
            return moPubRequestQueue;
        }
        return moPubRequestQueue2;
    }

    public static final String getScheme() {
        return f60324f;
    }

    public static final HurlStack.UrlRewriter getUrlRewriter() {
        HurlStack.UrlRewriter urlRewriter = f60323e;
        PlayServicesUrlRewriter playServicesUrlRewriter = urlRewriter;
        if (urlRewriter == null) {
            playServicesUrlRewriter = new PlayServicesUrlRewriter();
            f60323e = playServicesUrlRewriter;
        }
        return playServicesUrlRewriter;
    }

    public static final String getUserAgent(Context context) {
        String str;
        C18524p.m3841c(context, "context");
        String str2 = f60321c;
        String str3 = str2;
        if (!(str3 == null || str3.length() == 0)) {
            return str2;
        }
        if (!C18524p.m3850a(Looper.myLooper(), Looper.getMainLooper())) {
            return f60319a;
        }
        String str4 = f60319a;
        try {
            str = WebSettings.getDefaultUserAgent(context);
            C18524p.m3849a((Object) str, "WebSettings.getDefaultUserAgent(context)");
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
            str = str4;
        }
        f60321c = str;
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
                f60322d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f60320b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f60321c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
