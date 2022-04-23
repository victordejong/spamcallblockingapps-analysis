package com.aotter.net.trek.network;

import android.content.Context;
import android.os.Looper;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.DeviceUtils;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.volley.toolbox.BasicNetwork;
import com.aotter.net.volley.toolbox.DiskBasedCache;
import com.aotter.net.volley.toolbox.ImageLoader;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/Networking.class */
public class Networking {

    /* renamed from: a */
    public static final String f1551a = "trek-volley-cache";

    /* renamed from: c */
    public static volatile TrekRequestQueue f1553c;

    /* renamed from: d */
    public static volatile String f1554d;

    /* renamed from: e */
    public static volatile MaxWidthImageLoader f1555e;

    /* renamed from: b */
    public static final String f1552b = System.getProperty("http.agent");

    /* renamed from: f */
    public static boolean f1556f = false;

    public static String getBaseUrlScheme() {
        return "http";
    }

    @NonNull
    public static String getCachedUserAgent() {
        String str = f1554d;
        String str2 = str;
        if (str == null) {
            str2 = f1552b;
        }
        return str2;
    }

    @NonNull
    public static ImageLoader getImageLoader(@NonNull Context context) {
        MaxWidthImageLoader maxWidthImageLoader = f1555e;
        MaxWidthImageLoader maxWidthImageLoader2 = maxWidthImageLoader;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                try {
                    MaxWidthImageLoader maxWidthImageLoader3 = f1555e;
                    maxWidthImageLoader2 = maxWidthImageLoader3;
                    if (maxWidthImageLoader3 == null) {
                        maxWidthImageLoader2 = new MaxWidthImageLoader(getRequestQueue(context), context, new C1758d(new C1757c(DeviceUtils.memoryCacheSizeBytes(context))));
                        f1555e = maxWidthImageLoader2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return maxWidthImageLoader2;
    }

    @Nullable
    public static TrekRequestQueue getRequestQueue() {
        return f1553c;
    }

    @NonNull
    public static TrekRequestQueue getRequestQueue(@NonNull Context context) {
        TrekRequestQueue trekRequestQueue = f1553c;
        TrekRequestQueue trekRequestQueue2 = trekRequestQueue;
        if (trekRequestQueue == null) {
            synchronized (Networking.class) {
                try {
                    TrekRequestQueue trekRequestQueue3 = f1553c;
                    trekRequestQueue2 = trekRequestQueue3;
                    if (trekRequestQueue3 == null) {
                        BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(getUserAgent(context.getApplicationContext()), new PlayServicesUrlRewriter(AotterTrekApplication.mDevice.getDeviceID(), context), CustomSSLSocketFactory.getDefault(10000)));
                        File file = new File(context.getCacheDir().getPath() + File.separator + f1551a);
                        trekRequestQueue2 = new TrekRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, Mp4Extractor.MAXIMUM_READ_AHEAD_BYTES_STREAM)), basicNetwork);
                        f1553c = trekRequestQueue2;
                        trekRequestQueue2.start();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return trekRequestQueue2;
    }

    public static String getScheme() {
        return useHttps() ? "https" : "http";
    }

    @NonNull
    public static String getUserAgent(@NonNull Context context) {
        String userAgentString;
        Preconditions.checkNotNull(context);
        String str = f1554d;
        String str2 = str;
        if (str == null) {
            synchronized (Networking.class) {
                try {
                    String str3 = f1554d;
                    str2 = str3;
                    if (str3 == null) {
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            try {
                                userAgentString = new WebView(context).getSettings().getUserAgentString();
                            } catch (Exception e) {
                            }
                            f1554d = userAgentString;
                            str2 = userAgentString;
                        }
                        userAgentString = f1552b;
                        f1554d = userAgentString;
                        str2 = userAgentString;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return str2;
    }

    public static void useHttps(boolean z) {
        f1556f = z;
    }

    public static boolean useHttps() {
        return f1556f;
    }
}
