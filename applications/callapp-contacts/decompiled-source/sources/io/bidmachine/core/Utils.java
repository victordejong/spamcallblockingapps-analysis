package io.bidmachine.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.media.MediaMetadataRetriever;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.BidMachine;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http.StatusLine;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/Utils.class */
public class Utils {
    private static final String SHARED_PREFERENCES_NAME = "ad_core_preferences";
    private static final String UUID_ID = "uuid";
    private static String appName;
    private static String appVersion;
    private static Handler backgroundHandler;
    private static String httpAgentString;
    private static final Handler uiHandler = new Handler(Looper.getMainLooper());
    private static String defaultHttpAgentString = "";
    private static final Integer currentYear = Integer.valueOf(Calendar.getInstance().get(1));

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/Utils$ConnectionInfo.class */
    public static class ConnectionInfo {
        public final boolean isFastType;
        public final String subtype;
        public final String type;

        ConnectionInfo(String str, String str2, boolean z) {
            this.type = str;
            this.subtype = str2;
            this.isFastType = z;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("BackgroundHandlerThread");
        handlerThread.start();
        backgroundHandler = new Handler(handlerThread.getLooper());
    }

    public static void assertYear(int i) {
        if (!isYearValid(i)) {
            throw new IllegalArgumentException("Wrong Birthday Year data: should be 4-digit integer, more or equal 1900 and less or equal than current year");
        }
    }

    public static boolean canAddWindowToActivity(Activity activity) {
        return (activity == null || activity.getWindow() == null || !activity.getWindow().isActive() || activity.getWindow().getDecorView().getWindowToken() == null) ? false : true;
    }

    public static boolean canUseCleartextTraffic() {
        return Build.VERSION.SDK_INT < 23 || NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    public static boolean canUseExternalFilesDir(Context context) {
        return (Build.VERSION.SDK_INT >= 19 || writePermissionGranted(context)) && isExternalMemoryAvailable();
    }

    public static void cancelBackgroundThreadTask(Runnable runnable) {
        backgroundHandler.removeCallbacks(runnable);
    }

    public static void cancelUiThreadTask(Runnable runnable) {
        uiHandler.removeCallbacks(runnable);
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                Logger.log(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String findEndpoint(String str) {
        Throwable th;
        Exception e;
        URL url;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                url = new URL(str);
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                try {
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setConnectTimeout(500);
                    httpURLConnection.setReadTimeout(500);
                    switch (httpURLConnection.getResponseCode()) {
                        case VastError.ERROR_CODE_BAD_URI /* 301 */:
                        case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                        case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                        case 305:
                        case StatusLine.HTTP_TEMP_REDIRECT /* 307 */:
                            String headerField = httpURLConnection.getHeaderField("Location");
                            if (headerField == null) {
                                String url2 = url.toString();
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.getInputStream().close();
                                        httpURLConnection.disconnect();
                                    } catch (Exception e2) {
                                        Logger.log(e2);
                                    }
                                }
                                return url2;
                            } else if (isHttpUrl(headerField)) {
                                String findEndpoint = findEndpoint(httpURLConnection.getHeaderField("Location"));
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.getInputStream().close();
                                        httpURLConnection.disconnect();
                                    } catch (Exception e3) {
                                        Logger.log(e3);
                                    }
                                }
                                return findEndpoint;
                            } else if (new URI(headerField).getScheme() == null) {
                                try {
                                    String url3 = new URL(url, headerField).toString();
                                    if (url3.trim().length() > 0) {
                                        String findEndpoint2 = findEndpoint(url3);
                                        if (httpURLConnection != null) {
                                            try {
                                                httpURLConnection.getInputStream().close();
                                                httpURLConnection.disconnect();
                                            } catch (Exception e4) {
                                                Logger.log(e4);
                                            }
                                        }
                                        return findEndpoint2;
                                    }
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.getInputStream().close();
                                            httpURLConnection.disconnect();
                                        } catch (Exception e5) {
                                            Logger.log(e5);
                                        }
                                    }
                                    return headerField;
                                } catch (Exception e6) {
                                    Logger.log(e6);
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.getInputStream().close();
                                            httpURLConnection.disconnect();
                                        } catch (Exception e7) {
                                            Logger.log(e7);
                                        }
                                    }
                                    return headerField;
                                }
                            } else {
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.getInputStream().close();
                                        httpURLConnection.disconnect();
                                    } catch (Exception e8) {
                                        Logger.log(e8);
                                    }
                                }
                                return headerField;
                            }
                        case 304:
                        case 306:
                        default:
                            String url4 = url.toString();
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.getInputStream().close();
                                    httpURLConnection.disconnect();
                                } catch (Exception e9) {
                                    Logger.log(e9);
                                }
                            }
                            return url4;
                    }
                } catch (Exception e10) {
                    e = e10;
                    Logger.log(e);
                    if (httpURLConnection != null) {
                        try {
                            httpURLConnection.getInputStream().close();
                            httpURLConnection.disconnect();
                        } catch (Exception e11) {
                            Logger.log(e11);
                        }
                    }
                    return str;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.getInputStream().close();
                        httpURLConnection2.disconnect();
                    } catch (Exception e12) {
                        Logger.log(e12);
                    }
                }
                throw th;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    public static void flush(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Exception e) {
                Logger.log(e);
            }
        }
    }

    public static String generateFileName(String str) {
        return new BigInteger(getMD5(str.getBytes())).abs().toString(36);
    }

    public static NetworkInfo getActiveNetworkInfo(Context context) {
        if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            Log.e(BidMachine.NAME, "Manifest permission not found: android.permission.ACCESS_NETWORK_STATE. Check the integration.");
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    public static String getAdvertisingUUID(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        if (sharedPreferences.contains(UUID_ID)) {
            return sharedPreferences.getString(UUID_ID, null);
        }
        String uuid = UUID.randomUUID().toString();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(UUID_ID, uuid);
        edit.apply();
        return uuid;
    }

    public static String getAppName(Context context) {
        if (appName == null) {
            appName = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        }
        return appName;
    }

    public static String getAppVersion(Context context) {
        if (appVersion == null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                if (packageInfo.versionName != null) {
                    appVersion = packageInfo.versionName;
                }
            } catch (Exception e) {
                Logger.log(e);
            }
        }
        return appVersion;
    }

    public static float getBatteryPercent(Context context) {
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null) {
                return -1.0f;
            }
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            float f = -1.0f;
            if (intExtra != -1) {
                f = intExtra2 == -1 ? -1.0f : (intExtra / intExtra2) * 100.0f;
            }
            return f;
        } catch (Exception e) {
            Logger.log(e);
            return -1.0f;
        }
    }

    public static File getCacheDir(Context context, String str) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        File file = new File(externalFilesDir.getPath() + "/" + str + "/");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Location getLocation(Context context) {
        String bestProvider;
        Location lastKnownLocation;
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            if (locationManager == null || (bestProvider = locationManager.getBestProvider(new Criteria(), false)) == null) {
                return null;
            }
            Location lastKnownLocation2 = locationManager.getLastKnownLocation(bestProvider);
            if (lastKnownLocation2 != null) {
                return lastKnownLocation2;
            }
            List<String> allProviders = locationManager.getAllProviders();
            if (allProviders != null && allProviders.size() > 1) {
                for (String str : allProviders) {
                    if (!(str == null || str.equals(bestProvider) || (lastKnownLocation = locationManager.getLastKnownLocation(str)) == null)) {
                        return lastKnownLocation;
                    }
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] getMD5(byte[] bArr) {
        byte[] bArr2;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            bArr2 = instance.digest();
        } catch (NoSuchAlgorithmException e) {
            Logger.log(e);
            bArr2 = null;
        }
        return bArr2;
    }

    public static float getScreenDensity(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    public static int getScreenDpi(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }

    public static float getScreenHeightInDp(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y / displayMetrics.density;
    }

    public static int getScreenOrientation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            return (rotation == 2 || rotation == 3) ? 9 : 1;
        }
        if (i == 2) {
            return (rotation == 2 || rotation == 3) ? 8 : 0;
        }
        Logger.log("Unknown screen orientation. Defaulting to portrait.");
        return 9;
    }

    public static Point getScreenSize(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(point);
        }
        return point;
    }

    public static float getScreenWidthInDp(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x / displayMetrics.density;
    }

    public static int getUtcOffsetMinutes() {
        return (int) TimeUnit.MILLISECONDS.toMinutes(TimeZone.getDefault().getOffset(System.currentTimeMillis()));
    }

    private static String getValidUrl(String str) {
        try {
            new URL(str);
            return str;
        } catch (MalformedURLException e) {
            try {
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException e2) {
            }
            return str;
        }
    }

    public static Rect getViewRectangle(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public static void httpGetURL(final String str, Executor executor) {
        if (!TextUtils.isEmpty(str) && executor != null) {
            executor.execute(new Runnable() { // from class: io.bidmachine.core.Utils.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:47:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Throwable, java.lang.Exception] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r4 = this;
                        java.net.URL r0 = new java.net.URL     // Catch: all -> 0x0057, Exception -> 0x005d
                        r5 = r0
                        r0 = r5
                        r1 = r4
                        java.lang.String r1 = r4     // Catch: all -> 0x0057, Exception -> 0x005d
                        r0.<init>(r1)     // Catch: all -> 0x0057, Exception -> 0x005d
                        r0 = r5
                        java.net.URLConnection r0 = r0.openConnection()     // Catch: all -> 0x0057, Exception -> 0x005d
                        java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: all -> 0x0057, Exception -> 0x005d
                        r6 = r0
                        r0 = r6
                        r5 = r0
                        r0 = r6
                        r1 = 5000(0x1388, float:7.006E-42)
                        r0.setConnectTimeout(r1)     // Catch: Exception -> 0x0053, all -> 0x007c
                        r0 = r6
                        r5 = r0
                        r0 = r6
                        r1 = 1
                        r0.setInstanceFollowRedirects(r1)     // Catch: Exception -> 0x0053, all -> 0x007c
                        r0 = r6
                        r5 = r0
                        r0 = r6
                        java.lang.String r1 = "Connection"
                        java.lang.String r2 = "close"
                        r0.setRequestProperty(r1, r2)     // Catch: Exception -> 0x0053, all -> 0x007c
                        r0 = r6
                        r5 = r0
                        r0 = r6
                        java.lang.String r1 = "GET"
                        r0.setRequestMethod(r1)     // Catch: Exception -> 0x0053, all -> 0x007c
                        r0 = r6
                        r5 = r0
                        r0 = r6
                        int r0 = r0.getResponseCode()     // Catch: Exception -> 0x0053, all -> 0x007c
                        r0 = r6
                        if (r0 == 0) goto L_0x007b
                        r0 = r6
                        java.io.InputStream r0 = r0.getInputStream()     // Catch: Exception -> 0x004d
                        r0.close()     // Catch: Exception -> 0x004d
                        r0 = r6
                        r0.disconnect()     // Catch: Exception -> 0x004d
                        return
                    L_0x004d:
                        r5 = move-exception
                        r0 = r5
                        io.bidmachine.core.Logger.log(r0)
                        return
                    L_0x0053:
                        r7 = move-exception
                        goto L_0x0060
                    L_0x0057:
                        r5 = move-exception
                        r0 = 0
                        r6 = r0
                        goto L_0x0081
                    L_0x005d:
                        r7 = move-exception
                        r0 = 0
                        r6 = r0
                    L_0x0060:
                        r0 = r6
                        r5 = r0
                        r0 = r7
                        io.bidmachine.core.Logger.log(r0)     // Catch: all -> 0x007c
                        r0 = r6
                        if (r0 == 0) goto L_0x007b
                        r0 = r6
                        java.io.InputStream r0 = r0.getInputStream()     // Catch: Exception -> 0x0076
                        r0.close()     // Catch: Exception -> 0x0076
                        r0 = r6
                        r0.disconnect()     // Catch: Exception -> 0x0076
                        return
                    L_0x0076:
                        r5 = move-exception
                        r0 = r5
                        io.bidmachine.core.Logger.log(r0)
                    L_0x007b:
                        return
                    L_0x007c:
                        r7 = move-exception
                        r0 = r5
                        r6 = r0
                        r0 = r7
                        r5 = r0
                    L_0x0081:
                        r0 = r6
                        if (r0 == 0) goto L_0x0098
                        r0 = r6
                        java.io.InputStream r0 = r0.getInputStream()     // Catch: Exception -> 0x0093
                        r0.close()     // Catch: Exception -> 0x0093
                        r0 = r6
                        r0.disconnect()     // Catch: Exception -> 0x0093
                        goto L_0x0098
                    L_0x0093:
                        r6 = move-exception
                        r0 = r6
                        io.bidmachine.core.Logger.log(r0)
                    L_0x0098:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.Utils.AnonymousClass2.run():void");
                }
            });
        }
    }

    @SafeVarargs
    public static Object invokeMethodByName(Object obj, Class<?> cls, String str, Pair<Class, Object>... pairArr) throws Exception {
        Object[] objArr;
        Class<?>[] clsArr;
        if (pairArr != null) {
            Class<?>[] clsArr2 = new Class[pairArr.length];
            Object[] objArr2 = new Object[pairArr.length];
            int i = 0;
            while (true) {
                clsArr = clsArr2;
                objArr = objArr2;
                if (i >= pairArr.length) {
                    break;
                }
                clsArr2[i] = (Class) pairArr[i].first;
                objArr2[i] = pairArr[i].second;
                i++;
            }
        } else {
            clsArr = null;
            objArr = null;
        }
        for (int i2 = 10; i2 > 0 && cls != null; i2--) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod.invoke(obj, objArr);
            } catch (IllegalAccessException | InvocationTargetException e) {
                return null;
            } catch (NoSuchMethodException e2) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    @SafeVarargs
    public static Object invokeMethodByName(Object obj, String str, Pair<Class, Object>... pairArr) throws Exception {
        return invokeMethodByName(obj, obj.getClass(), str, pairArr);
    }

    public static boolean isExternalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isHttpUrl(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isPermissionGranted(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isTablet(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d2 * d2) + (d3 * d3)) >= 6.6d;
    }

    public static boolean isViewHaveSize(View view) {
        return view.getMeasuredHeight() > 0 && view.getMeasuredWidth() > 0;
    }

    public static boolean isViewInsideParentRect(Rect rect, View view) {
        return rect.contains(getViewRectangle(view));
    }

    public static boolean isViewTransparent(View view) {
        return view.getAlpha() == BitmapDescriptorFactory.HUE_RED;
    }

    public static boolean isYearValid(int i) {
        return i >= 1900 && i <= currentYear.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void launchUrl(Context context, String str) {
        try {
            Logger.log(String.format("launch url: %s", str));
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            ComponentName pickBrowser = pickBrowser(context, intent);
            if (pickBrowser != null) {
                intent.setComponent(pickBrowser);
                context.startActivity(intent);
                return;
            }
            String decode = URLDecoder.decode(str, "UTF-8");
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(decode));
            intent2.setFlags(268435456);
            ComponentName pickBrowser2 = pickBrowser(context, intent2);
            if (pickBrowser2 != null) {
                intent2.setComponent(pickBrowser2);
                context.startActivity(intent2);
                return;
            }
            Logger.log(String.format("No activities to handle intent: %s", decode));
        } catch (Exception e) {
            Logger.log(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        if (r0 != 9) goto L_0x005d;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.bidmachine.core.Utils.ConnectionInfo obtainConnectionInfo(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.Utils.obtainConnectionInfo(android.content.Context):io.bidmachine.core.Utils$ConnectionInfo");
    }

    private static String obtainDefaultHttpAgentString() {
        if (TextUtils.isEmpty(defaultHttpAgentString)) {
            try {
                defaultHttpAgentString = System.getProperty("http.agent", "");
            } catch (Throwable th) {
                Logger.log(th);
            }
        }
        return defaultHttpAgentString;
    }

    public static String obtainHttpAgentString(final Context context) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        String str = httpAgentString;
        if (str != null) {
            return str;
        }
        onUiThread(new Runnable() { // from class: io.bidmachine.core.Utils.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (Build.VERSION.SDK_INT < 17) {
                        String unused = Utils.httpAgentString = new WebView(context).getSettings().getUserAgentString();
                    } else {
                        String unused2 = Utils.httpAgentString = WebSettings.getDefaultUserAgent(context);
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return TextUtils.isEmpty(httpAgentString) ? obtainDefaultHttpAgentString() : httpAgentString;
    }

    public static void onBackgroundThread(Runnable runnable) {
        onBackgroundThread(runnable, 0L);
    }

    public static void onBackgroundThread(Runnable runnable, long j) {
        backgroundHandler.postDelayed(runnable, j);
    }

    public static void onUiThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            uiHandler.post(runnable);
        }
    }

    public static void onUiThread(Runnable runnable, long j) {
        uiHandler.postDelayed(runnable, j);
    }

    public static <T> T oneOf(T t, T t2) {
        return (T) oneOf(t, t2, null);
    }

    public static <T> T oneOf(T t, T t2, T t3) {
        return t != null ? t : t2 != null ? t2 : t3;
    }

    public static void openBrowser(final Context context, String str, Executor executor, final Runnable runnable) {
        final String validUrl = getValidUrl(str);
        if (isHttpUrl(validUrl)) {
            executor.execute(new Runnable() { // from class: io.bidmachine.core.Utils.3
                @Override // java.lang.Runnable
                public final void run() {
                    Utils.launchUrl(context, Utils.findEndpoint(validUrl));
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        Utils.onUiThread(runnable2);
                    }
                }
            });
            return;
        }
        if (runnable != null) {
            onUiThread(runnable);
        }
        launchUrl(context, validUrl);
    }

    private static ComponentName pickBrowser(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.isEmpty()) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            }
        }
        return new ComponentName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
    }

    public static void removeViewFromParent(View view) {
        if (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static <T> List<T> resolveList(List<T> list, List<T> list2) {
        return list != null ? list : list2 != null ? list2 : Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.Closeable, java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static String retrieveAndSaveFrame(Context context, Uri uri, String str) {
        Throwable th;
        Exception e;
        FileOutputStream fileOutputStream;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource((Context) context, uri);
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(Long.parseLong(mediaMetadataRetriever.extractMetadata(9)), 2);
        context = 0;
        try {
            if (frameAtTime == null) {
                return null;
            }
            try {
                File file = new File(getCacheDir(context, str), generateFileName(uri.toString()));
                fileOutputStream = new FileOutputStream(file);
                try {
                    frameAtTime.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    String absolutePath = file.getAbsolutePath();
                    flush(fileOutputStream);
                    close(fileOutputStream);
                    return absolutePath;
                } catch (Exception e2) {
                    e = e2;
                    Logger.log(e);
                    flush(fileOutputStream);
                    close(fileOutputStream);
                    return null;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                flush(context);
                close(context);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String streamToString(InputStream inputStream) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toString("UTF-8");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    static boolean writePermissionGranted(Context context) {
        return isPermissionGranted(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }
}
