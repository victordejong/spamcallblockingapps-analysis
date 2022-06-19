package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.common.ANActivityLifecycleCallbacksListener;
import com.facebook.ads.internal.util.common.Preconditions;
import dalvik.system.DexClassLoader;
import dalvik.system.InMemoryDexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory.class */
public class DynamicLoaderFactory {
    private static final String AUDIENCE_NETWORK_CODE_PATH = "audience_network";
    public static final String AUDIENCE_NETWORK_DEX = "audience_network.dex";
    private static final String CODE_CACHE_DIR = "code_cache";
    public static final String DEX_LOADING_ERROR_MESSAGE = "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.";
    private static final int DEX_LOAD_RETRY_COUNT = 3;
    private static final int DEX_LOAD_RETRY_DELAY_MS = 200;
    private static final String DYNAMIC_LOADING_BUILD_TYPE = "releaseDL";
    private static final String OPTIMIZED_DEX_PATH = "optimized";
    private static boolean sFallbackMode;
    public static final boolean LOAD_FROM_ASSETS = "releaseDL".equals(BuildConfig.BUILD_TYPE);
    private static final AtomicReference<DynamicLoader> sDynamicLoader = new AtomicReference<>();
    private static final AtomicBoolean sInitializing = new AtomicBoolean();
    private static boolean sUseLegacyClassLoader = true;

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$a.class */
    public class RunnableC0938a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f2587a;

        /* renamed from: b */
        public final /* synthetic */ boolean f2588b;

        /* renamed from: c */
        public final /* synthetic */ MultithreadedBundleWrapper f2589c;

        /* renamed from: d */
        public final /* synthetic */ AudienceNetworkAds.InitListener f2590d;

        public RunnableC0938a(Context context, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
            this.f2587a = context;
            this.f2588b = z;
            this.f2589c = multithreadedBundleWrapper;
            this.f2590d = initListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            DynamicLoader dynamicLoader;
            ANActivityLifecycleCallbacksListener.registerActivityCallbacks(this.f2587a);
            synchronized (DynamicLoaderFactory.class) {
                dynamicLoader = null;
                if (0 < 3) {
                    try {
                        dynamicLoader = DynamicLoaderFactory.doMakeLoader(this.f2587a, false);
                    }
                }
            }
            DynamicLoaderFactory.doCallInitialize(this.f2587a, dynamicLoader, null, this.f2588b, this.f2589c, this.f2590d);
            DynamicLoaderFactory.sInitializing.set(false);
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$b.class */
    public class RunnableC0939b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AudienceNetworkAds.InitListener f2591a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f2592b;

        public RunnableC0939b(AudienceNetworkAds.InitListener initListener, Throwable th) {
            this.f2591a = initListener;
            this.f2592b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2591a.onInitialized(DynamicLoaderFactory.createErrorInitResult(this.f2592b));
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$c.class */
    public class C0940c implements AudienceNetworkAds.InitResult {

        /* renamed from: a */
        public final /* synthetic */ Throwable f2593a;

        public C0940c(Throwable th) {
            this.f2593a = th;
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitResult
        public String getMessage() {
            return DynamicLoaderFactory.createErrorMessage(this.f2593a);
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitResult
        public boolean isSuccess() {
            return false;
        }
    }

    public static /* synthetic */ String access$100(Throwable th) {
        return createErrorMessage(th);
    }

    public static AudienceNetworkAds.InitResult createErrorInitResult(Throwable th) {
        return new C0940c(th);
    }

    public static String createErrorMessage(Throwable th) {
        StringBuilder m8728C = C22128a.m8728C("Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.\n");
        m8728C.append(stackTraceToString(th));
        return m8728C.toString();
    }

    private static ClassLoader createInMemoryClassLoader(Context context) throws IOException {
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read <= 0) {
                open.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return new InMemoryDexClassLoader(ByteBuffer.wrap(byteArrayOutputStream.toByteArray()), DynamicLoaderFactory.class.getClassLoader());
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static void doCallInitialize(Context context, DynamicLoader dynamicLoader, Throwable th, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
        if (th != null) {
            if (initListener == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0939b(initListener, th), 100L);
        } else if (dynamicLoader == null) {
        } else {
            if (z) {
                dynamicLoader.createAudienceNetworkAdsApi().onContentProviderCreated(context);
            } else {
                dynamicLoader.createAudienceNetworkAdsApi().initialize(context, multithreadedBundleWrapper, initListener);
            }
        }
    }

    public static DynamicLoader doMakeLoader(Context context, boolean z) throws Exception {
        AtomicReference<DynamicLoader> atomicReference = sDynamicLoader;
        DynamicLoader dynamicLoader = atomicReference.get();
        DynamicLoader dynamicLoader2 = dynamicLoader;
        if (dynamicLoader == null) {
            if (!LOAD_FROM_ASSETS) {
                dynamicLoader2 = (DynamicLoader) Class.forName("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
            } else {
                System.currentTimeMillis();
                dynamicLoader2 = (DynamicLoader) makeAdsSdkClassLoader(context.getApplicationContext()).loadClass("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
                System.currentTimeMillis();
            }
            if (z) {
                dynamicLoader2.maybeInitInternally(context);
            }
            atomicReference.set(dynamicLoader2);
        }
        return dynamicLoader2;
    }

    private static Context getApplicationContextViaReflection() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
            return null;
        }
    }

    private static File getCacheCodeDirLegacy(Context context, File file) throws IOException {
        File file2;
        File file3 = new File(file, CODE_CACHE_DIR);
        try {
            mkdirChecked(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = context.getDir(CODE_CACHE_DIR, 0);
            mkdirChecked(file2);
        }
        return file2;
    }

    private static File getCodeCacheDir(Context context, File file) throws IOException {
        return context.getCodeCacheDir();
    }

    public static DynamicLoader getDynamicLoader() {
        return sDynamicLoader.get();
    }

    private static File getSecondaryDir(File file) throws IOException {
        File file2 = new File(file, AUDIENCE_NETWORK_CODE_PATH);
        mkdirChecked(file2);
        return file2;
    }

    public static void initialize(Context context, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, boolean z) {
        if (z || !sInitializing.getAndSet(true)) {
            new Thread(new RunnableC0938a(context, z, multithreadedBundleWrapper, initListener)).start();
        }
    }

    public static boolean isFallbackMode() {
        boolean z;
        synchronized (DynamicLoaderFactory.class) {
            try {
                z = sFallbackMode;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private static ClassLoader makeAdsSdkClassLoader(Context context) throws Exception {
        if (Build.VERSION.SDK_INT >= 30) {
            return createInMemoryClassLoader(context);
        }
        if (sUseLegacyClassLoader) {
            return makeLegacyAdsSdkClassLoader(context);
        }
        File secondaryDir = getSecondaryDir(getCodeCacheDir(context, new File(context.getApplicationInfo().dataDir)));
        StringBuilder sb = new StringBuilder();
        sb.append(secondaryDir.getPath());
        String m8618h = C22128a.m8618h(sb, File.separator, AUDIENCE_NETWORK_DEX);
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(m8618h);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read <= 0) {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(secondaryDir.getPath());
                File file = new File(C22128a.m8618h(sb2, File.separator, OPTIMIZED_DEX_PATH));
                mkdirChecked(file);
                return new DexClassLoader(m8618h, file.getPath(), null, context.getClassLoader());
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    private static DexClassLoader makeLegacyAdsSdkClassLoader(Context context) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getPath());
        String m8618h = C22128a.m8618h(sb, File.separator, AUDIENCE_NETWORK_DEX);
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(m8618h);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read <= 0) {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return new DexClassLoader(m8618h, context.getDir(OPTIMIZED_DEX_PATH, 0).getPath(), null, DynamicLoaderFactory.class.getClassLoader());
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    public static DynamicLoader makeLoader(Context context) {
        DynamicLoader makeLoader;
        synchronized (DynamicLoaderFactory.class) {
            try {
                makeLoader = makeLoader(context, true);
            } catch (Throwable th) {
                throw th;
            }
        }
        return makeLoader;
    }

    public static DynamicLoader makeLoader(Context context, boolean z) {
        DynamicLoader doMakeLoader;
        synchronized (DynamicLoaderFactory.class) {
            try {
                Preconditions.checkNotNull(context, "Context can not be null.");
                doMakeLoader = doMakeLoader(context, z);
            } catch (Throwable th) {
                throw th;
            }
        }
        return doMakeLoader;
    }

    public static DynamicLoader makeLoaderUnsafe() {
        synchronized (DynamicLoaderFactory.class) {
            try {
                AtomicReference<DynamicLoader> atomicReference = sDynamicLoader;
                if (atomicReference.get() != null) {
                    return atomicReference.get();
                }
                Context applicationContextViaReflection = getApplicationContextViaReflection();
                if (applicationContextViaReflection == null) {
                    throw new RuntimeException("You must call AudienceNetworkAds.buildInitSettings(Context).initialize() before you can use Audience Network SDK.");
                }
                return makeLoader(applicationContextViaReflection, true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void mkdirChecked(File file) throws IOException {
        String str;
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                StringBuilder m8728C = C22128a.m8728C("Failed to create dir ");
                m8728C.append(file.getPath());
                m8728C.append(". Parent file is null.");
                str = m8728C.toString();
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("Failed to create dir ");
                m8728C2.append(file.getPath());
                m8728C2.append(". parent file is a dir ");
                m8728C2.append(parentFile.isDirectory());
                m8728C2.append(", a file ");
                m8728C2.append(parentFile.isFile());
                m8728C2.append(", exists ");
                m8728C2.append(parentFile.exists());
                m8728C2.append(", readable ");
                m8728C2.append(parentFile.canRead());
                m8728C2.append(", writable ");
                m8728C2.append(parentFile.canWrite());
                str = m8728C2.toString();
            }
            StringBuilder m8728C3 = C22128a.m8728C("Failed to create directory ");
            m8728C3.append(file.getPath());
            m8728C3.append(", detailed message: ");
            m8728C3.append(str);
            throw new IOException(m8728C3.toString());
        }
    }

    public static void setFallbackMode(boolean z) {
        synchronized (DynamicLoaderFactory.class) {
            try {
                if (z) {
                    sDynamicLoader.set(DynamicLoaderFallback.makeFallbackLoader());
                    sFallbackMode = true;
                } else {
                    sDynamicLoader.set(null);
                    sFallbackMode = false;
                }
            } finally {
            }
        }
    }

    public static void setUseLegacyClassLoader(boolean z) {
        sUseLegacyClassLoader = z;
    }

    private static String stackTraceToString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
