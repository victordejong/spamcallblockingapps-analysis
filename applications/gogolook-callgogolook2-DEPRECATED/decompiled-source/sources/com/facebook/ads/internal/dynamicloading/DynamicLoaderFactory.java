package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
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
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory.class */
public class DynamicLoaderFactory {
    public static final String AUDIENCE_NETWORK_CODE_PATH = "audience_network";
    public static final String AUDIENCE_NETWORK_DEX = "audience_network.dex";
    public static final String CODE_CACHE_DIR = "code_cache";
    public static final String DEX_LOADING_ERROR_MESSAGE = "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.";
    public static final int DEX_LOAD_RETRY_COUNT = 3;
    public static final int DEX_LOAD_RETRY_DELAY_MS = 200;
    public static final String DYNAMIC_LOADING_BUILD_TYPE = "releaseDL";
    public static final String OPTIMIZED_DEX_PATH = "optimized";
    public static boolean sFallbackMode;
    public static final boolean LOAD_FROM_ASSETS = "releaseDL".equals(BuildConfig.BUILD_TYPE);
    public static final AtomicReference<DynamicLoader> sDynamicLoader = new AtomicReference<>();
    public static final AtomicBoolean sInitializing = new AtomicBoolean();
    public static boolean sUseLegacyClassLoader = true;

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$a.class */
    public static final class RunnableC2245a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f2619a;

        /* renamed from: b */
        public final /* synthetic */ boolean f2620b;

        /* renamed from: c */
        public final /* synthetic */ MultithreadedBundleWrapper f2621c;

        /* renamed from: d */
        public final /* synthetic */ AudienceNetworkAds.InitListener f2622d;

        public RunnableC2245a(Context context, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener) {
            this.f2619a = context;
            this.f2620b = z;
            this.f2621c = multithreadedBundleWrapper;
            this.f2622d = initListener;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"CatchGeneralException"})
        public void run() {
            DynamicLoader dynamicLoader;
            ANActivityLifecycleCallbacksListener.registerActivityCallbacks(this.f2619a);
            synchronized (DynamicLoaderFactory.class) {
                dynamicLoader = null;
                if (0 < 3) {
                    try {
                        dynamicLoader = DynamicLoaderFactory.doMakeLoader(this.f2619a, false);
                    }
                }
            }
            DynamicLoaderFactory.doCallInitialize(this.f2619a, dynamicLoader, null, this.f2620b, this.f2621c, this.f2622d);
            DynamicLoaderFactory.sInitializing.set(false);
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$b.class */
    public static final class RunnableC2246b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AudienceNetworkAds.InitListener f2623a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f2624b;

        public RunnableC2246b(AudienceNetworkAds.InitListener initListener, Throwable th) {
            this.f2623a = initListener;
            this.f2624b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2623a.onInitialized(DynamicLoaderFactory.createErrorInitResult(this.f2624b));
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$c.class */
    public static final class C2247c implements AudienceNetworkAds.InitResult {

        /* renamed from: a */
        public final /* synthetic */ Throwable f2625a;

        public C2247c(Throwable th) {
            this.f2625a = th;
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitResult
        public String getMessage() {
            return DynamicLoaderFactory.createErrorMessage(this.f2625a);
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
        return new C2247c(th);
    }

    public static String createErrorMessage(Throwable th) {
        return "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.\n" + stackTraceToString(th);
    }

    @TargetApi(26)
    public static ClassLoader createInMemoryClassLoader(Context context) throws IOException {
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return new InMemoryDexClassLoader(ByteBuffer.wrap(byteArrayOutputStream.toByteArray()), DynamicLoaderFactory.class.getClassLoader());
            }
        }
    }

    public static void doCallInitialize(Context context, @Nullable DynamicLoader dynamicLoader, @Nullable Throwable th, boolean z, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener) {
        if (th != null) {
            if (initListener != null) {
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC2246b(initListener, th), 100L);
            } else {
                Log.e(AudienceNetworkAds.TAG, DEX_LOADING_ERROR_MESSAGE, th);
            }
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
        DynamicLoader dynamicLoader = sDynamicLoader.get();
        DynamicLoader dynamicLoader2 = dynamicLoader;
        if (dynamicLoader == null) {
            if (!LOAD_FROM_ASSETS) {
                dynamicLoader2 = (DynamicLoader) Class.forName(DynamicLoaderImpl.class.getName()).newInstance();
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                dynamicLoader2 = (DynamicLoader) makeAdsSdkClassLoader(context.getApplicationContext()).loadClass("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
                long currentTimeMillis2 = System.currentTimeMillis();
                String str = "SDK dex loading time: " + (currentTimeMillis2 - currentTimeMillis);
            }
            if (z) {
                dynamicLoader2.maybeInitInternally(context);
            }
            sDynamicLoader.set(dynamicLoader2);
        }
        return dynamicLoader2;
    }

    @Nullable
    @SuppressLint({"PrivateApi", "CatchGeneralException"})
    public static Context getApplicationContextViaReflection() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
            Log.e(AudienceNetworkAds.TAG, "Failed to fetch Context from  ActivityThread. Audience Network SDK won't work unless you call AudienceNetworkAds.buildInitSettings().withListener(InitListener).initialize().", th);
            return null;
        }
    }

    public static File getCacheCodeDirLegacy(Context context, File file) throws IOException {
        File file2;
        File file3 = new File(file, "code_cache");
        try {
            mkdirChecked(file3);
            file2 = file3;
        } catch (IOException e) {
            file2 = context.getDir("code_cache", 0);
            mkdirChecked(file2);
        }
        return file2;
    }

    public static File getCodeCacheDir(Context context, File file) throws IOException {
        return Build.VERSION.SDK_INT >= 21 ? context.getCodeCacheDir() : getCacheCodeDirLegacy(context, file);
    }

    @Nullable
    public static DynamicLoader getDynamicLoader() {
        return sDynamicLoader.get();
    }

    public static File getSecondaryDir(File file) throws IOException {
        File file2 = new File(file, AUDIENCE_NETWORK_CODE_PATH);
        mkdirChecked(file2);
        return file2;
    }

    public static void initialize(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, boolean z) {
        if (z || !sInitializing.getAndSet(true)) {
            new Thread(new RunnableC2245a(context, z, multithreadedBundleWrapper, initListener)).start();
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

    public static ClassLoader makeAdsSdkClassLoader(Context context) throws Exception {
        if (Build.VERSION.SDK_INT >= 26) {
            return createInMemoryClassLoader(context);
        }
        if (sUseLegacyClassLoader) {
            return makeLegacyAdsSdkClassLoader(context);
        }
        File secondaryDir = getSecondaryDir(getCodeCacheDir(context, new File(context.getApplicationInfo().dataDir)));
        String str = secondaryDir.getPath() + File.separator + AUDIENCE_NETWORK_DEX;
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                File file = new File(secondaryDir.getPath() + File.separator + OPTIMIZED_DEX_PATH);
                mkdirChecked(file);
                return new DexClassLoader(str, file.getPath(), null, context.getClassLoader());
            }
        }
    }

    public static DexClassLoader makeLegacyAdsSdkClassLoader(Context context) throws Exception {
        String str = context.getFilesDir().getPath() + File.separator + AUDIENCE_NETWORK_DEX;
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read > 0) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return new DexClassLoader(str, context.getDir(OPTIMIZED_DEX_PATH, 0).getPath(), null, DynamicLoaderFactory.class.getClassLoader());
            }
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

    @SuppressLint({"CatchGeneralException"})
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

    @SuppressLint({"CatchGeneralException"})
    public static DynamicLoader makeLoaderUnsafe() {
        synchronized (DynamicLoaderFactory.class) {
            try {
                if (sDynamicLoader.get() == null) {
                    Context applicationContextViaReflection = getApplicationContextViaReflection();
                    if (applicationContextViaReflection != null) {
                        return makeLoader(applicationContextViaReflection, true);
                    }
                    throw new RuntimeException("You must call AudienceNetworkAds.buildInitSettings(Context).initialize() before you can use Audience Network SDK.");
                }
                return sDynamicLoader.get();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void mkdirChecked(File file) throws IOException {
        File parentFile;
        String str;
        file.mkdir();
        if (!file.isDirectory()) {
            if (file.getParentFile() == null) {
                str = "Failed to create dir " + file.getPath() + ". Parent file is null.";
            } else {
                str = "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite();
            }
            Log.e(AudienceNetworkAds.TAG, str);
            throw new IOException("Failed to create directory " + file.getPath() + ", detailed message: " + str);
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

    public static String stackTraceToString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
