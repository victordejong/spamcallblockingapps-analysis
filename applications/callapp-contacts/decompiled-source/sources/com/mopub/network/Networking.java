package com.mopub.network;

import android.content.Context;
import android.os.Looper;
import android.webkit.WebSettings;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HurlStack;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u0017H\u0007J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0012\u0010 \u001a\u00020\u001a2\b\u0010!\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\"\u001a\u00020\u001a2\b\u0010#\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010$\u001a\u00020\u001a2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083T¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R*\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0087\u000e¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n��\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\nR\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006%"}, d2 = {"Lcom/mopub/network/Networking;", "", "()V", "CACHE_DIRECTORY_NAME", "", "CACHE_DIRECTORY_NAME$annotations", "DEFAULT_USER_AGENT", "cachedUserAgent", "cachedUserAgent$annotations", "getCachedUserAgent", "()Ljava/lang/String;", "maxWidthImageLoader", "Lcom/mopub/network/MaxWidthImageLoader;", "<set-?>", "Lcom/mopub/network/MoPubRequestQueue;", "requestQueue", "requestQueue$annotations", "getRequestQueue", "()Lcom/mopub/network/MoPubRequestQueue;", "scheme", "scheme$annotations", "getScheme", "urlRewriter", "Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;", "userAgent", "clearForTesting", "", "getImageLoader", "context", "Landroid/content/Context;", "getUrlRewriter", "getUserAgent", "setImageLoaderForTesting", "imageLoader", "setRequestQueueForTesting", "queue", "setUserAgentForTesting", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking.class */
public final class Networking {
    public static final Networking INSTANCE = new Networking();

    /* renamed from: a  reason: collision with root package name */
    private static final String f34751a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile MoPubRequestQueue f34752b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile String f34753c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile MaxWidthImageLoader f34754d;
    private static HurlStack.UrlRewriter e;
    private static final String f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "Lcom/mopub/network/MaxWidthImageLoader;", "invoke", "com/mopub/network/Networking$getImageLoader$1$1"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking$a.class */
    static final class a extends r implements Function0<MaxWidthImageLoader> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f34757a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context) {
            super(0);
            this.f34757a = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Type inference failed for: r0v6, types: [com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // kotlin.jvm.functions.Function0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.mopub.network.MaxWidthImageLoader invoke() {
            /*
                r8 = this;
                r0 = r8
                android.content.Context r0 = r0.f34757a
                com.mopub.network.MoPubRequestQueue r0 = com.mopub.network.Networking.getRequestQueue(r0)
                r9 = r0
                r0 = r8
                android.content.Context r0 = r0.f34757a
                int r0 = com.mopub.common.util.DeviceUtils.memoryCacheSizeBytes(r0)
                r10 = r0
                com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1 r0 = new com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$1
                r1 = r0
                r2 = r10
                r3 = r10
                r1.<init>(r3)
                r11 = r0
                com.mopub.network.MaxWidthImageLoader r0 = new com.mopub.network.MaxWidthImageLoader
                r1 = r0
                r2 = r9
                com.mopub.volley.RequestQueue r2 = (com.mopub.volley.RequestQueue) r2
                r3 = r8
                android.content.Context r3 = r3.f34757a
                com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$2 r4 = new com.mopub.network.Networking$getImageLoader$$inlined$synchronized$lambda$1$2
                r5 = r4
                r6 = r11
                r5.<init>()
                com.mopub.volley.toolbox.ImageLoader$ImageCache r4 = (com.mopub.volley.toolbox.ImageLoader.ImageCache) r4
                r1.<init>(r2, r3, r4)
                r11 = r0
                com.mopub.network.Networking r0 = com.mopub.network.Networking.INSTANCE
                r1 = r11
                com.mopub.network.Networking.access$setMaxWidthImageLoader$p(r0, r1)
                r0 = r11
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.Networking.a.invoke():com.mopub.network.MaxWidthImageLoader");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "Lcom/mopub/network/MoPubRequestQueue;", "invoke", "com/mopub/network/Networking$getRequestQueue$1$1"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/Networking$b.class */
    public static final class b extends r implements Function0<MoPubRequestQueue> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f34758a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context) {
            super(0);
            this.f34758a = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MoPubRequestQueue invoke() {
            CustomSSLSocketFactory customSSLSocketFactory = CustomSSLSocketFactory.getDefault(10000);
            p.a((Object) customSSLSocketFactory, "CustomSSLSocketFactory.g…tants.TEN_SECONDS_MILLIS)");
            Context applicationContext = this.f34758a.getApplicationContext();
            p.a((Object) applicationContext, "context.applicationContext");
            BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(Networking.getUserAgent(applicationContext), Networking.getUrlRewriter(), customSSLSocketFactory));
            StringBuilder sb = new StringBuilder();
            File cacheDir = this.f34758a.getCacheDir();
            p.a((Object) cacheDir, "context.cacheDir");
            sb.append(cacheDir.getPath());
            sb.append(File.separator);
            sb.append("mopub-volley-cache");
            File file = new File(sb.toString());
            MoPubRequestQueue moPubRequestQueue = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, 10485760L)), basicNetwork);
            Networking.f34752b = moPubRequestQueue;
            moPubRequestQueue.start();
            return moPubRequestQueue;
        }
    }

    static {
        String str = "";
        try {
            str = System.getProperty("http.agent", "");
        } catch (SecurityException e2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get system user agent.");
            str = "";
        }
        if (str == null) {
        }
        f34751a = str;
        f = "https";
    }

    private Networking() {
    }

    public static /* synthetic */ void cachedUserAgent$annotations() {
    }

    @VisibleForTesting
    public static final void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f34752b = null;
                f34754d = null;
                f34753c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final String getCachedUserAgent() {
        String str = f34753c;
        String str2 = str;
        if (str == null) {
            str2 = f34751a;
        }
        return str2;
    }

    public static final MaxWidthImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader;
        p.c(context, "context");
        MaxWidthImageLoader maxWidthImageLoader2 = f34754d;
        if (maxWidthImageLoader2 != null) {
            return maxWidthImageLoader2;
        }
        synchronized (ac.b(Networking.class)) {
            MaxWidthImageLoader maxWidthImageLoader3 = f34754d;
            maxWidthImageLoader = maxWidthImageLoader3;
            if (maxWidthImageLoader3 == null) {
                maxWidthImageLoader = new a(context).invoke();
            }
        }
        return maxWidthImageLoader;
    }

    public static final MoPubRequestQueue getRequestQueue() {
        return f34752b;
    }

    public static final MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue;
        p.c(context, "context");
        MoPubRequestQueue moPubRequestQueue2 = f34752b;
        if (moPubRequestQueue2 != null) {
            return moPubRequestQueue2;
        }
        synchronized (ac.b(Networking.class)) {
            MoPubRequestQueue moPubRequestQueue3 = f34752b;
            moPubRequestQueue = moPubRequestQueue3;
            if (moPubRequestQueue3 == null) {
                moPubRequestQueue = new b(context).invoke();
            }
        }
        return moPubRequestQueue;
    }

    public static final String getScheme() {
        return f;
    }

    public static final HurlStack.UrlRewriter getUrlRewriter() {
        HurlStack.UrlRewriter urlRewriter = e;
        PlayServicesUrlRewriter playServicesUrlRewriter = urlRewriter;
        if (urlRewriter == null) {
            playServicesUrlRewriter = new PlayServicesUrlRewriter();
            e = playServicesUrlRewriter;
        }
        return playServicesUrlRewriter;
    }

    public static final String getUserAgent(Context context) {
        p.c(context, "context");
        String str = f34753c;
        String str2 = str;
        if (!(str2 == null || str2.length() == 0)) {
            return str;
        }
        if (!p.a(Looper.myLooper(), Looper.getMainLooper())) {
            return f34751a;
        }
        String str3 = f34751a;
        try {
            str3 = WebSettings.getDefaultUserAgent(context);
            p.a((Object) str3, "WebSettings.getDefaultUserAgent(context)");
        } catch (Exception e2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
        }
        f34753c = str3;
        return str3;
    }

    public static /* synthetic */ void requestQueue$annotations() {
    }

    public static /* synthetic */ void scheme$annotations() {
    }

    @VisibleForTesting
    public static final void setImageLoaderForTesting(MaxWidthImageLoader maxWidthImageLoader) {
        synchronized (Networking.class) {
            try {
                f34754d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f34752b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static final void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f34753c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
