package com.facebook.ads.internal.dynamicloading;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
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
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory.class */
public class DynamicLoaderFactory {
    private static final String AUDIENCE_NETWORK_CODE_PATH = "audience_network";
    public static final String AUDIENCE_NETWORK_DEX = "audience_network.dex";
    private static final String CODE_CACHE_DIR = "code_cache";
    static final String DEX_LOADING_ERROR_MESSAGE = "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.";
    private static final int DEX_LOAD_RETRY_COUNT = 3;
    private static final int DEX_LOAD_RETRY_DELAY_MS = 200;
    private static final String DYNAMIC_LOADING_BUILD_TYPE = "releaseDL";
    private static final String OPTIMIZED_DEX_PATH = "optimized";
    private static boolean sFallbackMode;
    public static final boolean LOAD_FROM_ASSETS = "releaseDL".equals(BuildConfig.BUILD_TYPE);
    private static final AtomicReference<DynamicLoader> sDynamicLoader = new AtomicReference<>();
    private static final AtomicBoolean sInitializing = new AtomicBoolean();
    private static boolean sUseLegacyClassLoader = true;

    static /* synthetic */ String access$100(Throwable th) {
        return createErrorMessage(th);
    }

    public static AudienceNetworkAds.InitResult createErrorInitResult(final Throwable th) {
        return new AudienceNetworkAds.InitResult() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory.3
            @Override // com.facebook.ads.AudienceNetworkAds.InitResult
            public String getMessage() {
                return DynamicLoaderFactory.createErrorMessage(th);
            }

            @Override // com.facebook.ads.AudienceNetworkAds.InitResult
            public boolean isSuccess() {
                return false;
            }
        };
    }

    public static String createErrorMessage(Throwable th) {
        return "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder.\n" + stackTraceToString(th);
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

    public static void doCallInitialize(Context context, DynamicLoader dynamicLoader, final Throwable th, boolean z, MultithreadedBundleWrapper multithreadedBundleWrapper, final AudienceNetworkAds.InitListener initListener) {
        if (th != null) {
            if (initListener != null) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory.2
                    @Override // java.lang.Runnable
                    public void run() {
                        initListener.onInitialized(DynamicLoaderFactory.createErrorInitResult(th));
                    }
                }, 100L);
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
        AtomicReference<DynamicLoader> atomicReference = sDynamicLoader;
        DynamicLoader dynamicLoader = atomicReference.get();
        DynamicLoader dynamicLoader2 = dynamicLoader;
        if (dynamicLoader == null) {
            if (!LOAD_FROM_ASSETS) {
                dynamicLoader2 = (DynamicLoader) Class.forName("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                dynamicLoader2 = (DynamicLoader) makeAdsSdkClassLoader(context.getApplicationContext()).loadClass("com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl").newInstance();
                long currentTimeMillis2 = System.currentTimeMillis();
                Log.d(AudienceNetworkAds.TAG, "SDK dex loading time: " + (currentTimeMillis2 - currentTimeMillis));
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
            Log.e(AudienceNetworkAds.TAG, "Failed to fetch Context from  ActivityThread. Audience Network SDK won't work unless you call AudienceNetworkAds.buildInitSettings().withListener(InitListener).initialize().", th);
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
        return Build.VERSION.SDK_INT >= 21 ? context.getCodeCacheDir() : getCacheCodeDirLegacy(context, file);
    }

    public static DynamicLoader getDynamicLoader() {
        return sDynamicLoader.get();
    }

    private static File getSecondaryDir(File file) throws IOException {
        File file2 = new File(file, AUDIENCE_NETWORK_CODE_PATH);
        mkdirChecked(file2);
        return file2;
    }

    public static void initialize(final Context context, final MultithreadedBundleWrapper multithreadedBundleWrapper, final AudienceNetworkAds.InitListener initListener, final boolean z) {
        if (z || !sInitializing.getAndSet(true)) {
            new Thread(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory.1
                @Override // java.lang.Runnable
                public void run() {
                    DynamicLoader dynamicLoader;
                    ANActivityLifecycleCallbacksListener.registerActivityCallbacks(context);
                    synchronized (DynamicLoaderFactory.class) {
                        dynamicLoader = null;
                        if (0 < 3) {
                            try {
                                dynamicLoader = DynamicLoaderFactory.doMakeLoader(context, false);
                            }
                        }
                    }
                    DynamicLoaderFactory.doCallInitialize(context, dynamicLoader, null, z, multithreadedBundleWrapper, initListener);
                    DynamicLoaderFactory.sInitializing.set(false);
                }
            }).start();
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
        String str = secondaryDir.getPath() + File.separator + AUDIENCE_NETWORK_DEX;
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read <= 0) {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                File file = new File(secondaryDir.getPath() + File.separator + OPTIMIZED_DEX_PATH);
                mkdirChecked(file);
                return new DexClassLoader(str, file.getPath(), null, context.getClassLoader());
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    private static DexClassLoader makeLegacyAdsSdkClassLoader(Context context) throws Exception {
        String str = context.getFilesDir().getPath() + File.separator + AUDIENCE_NETWORK_DEX;
        InputStream open = context.getAssets().open(AUDIENCE_NETWORK_DEX);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read <= 0) {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return new DexClassLoader(str, context.getDir(OPTIMIZED_DEX_PATH, 0).getPath(), null, DynamicLoaderFactory.class.getClassLoader());
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

    private static String stackTraceToString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
