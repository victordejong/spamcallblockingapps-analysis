package com.pubmatic.sdk.common.utility;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBLocation;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBUtils.class */
public class POBUtils {
    public static int convertDpToPixel(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    public static int convertPixelToDp(int i) {
        return (int) (i / Resources.getSystem().getDisplayMetrics().density);
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    public static long convertToMilliSeconds(String str) {
        char c;
        SimpleDateFormat simpleDateFormat = str.contains(".") ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()) : new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            c = simpleDateFormat.parse("1970-01-01 " + str).getTime();
        } catch (ParseException e) {
            c = 0;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    public static double convertToSeconds(String str, String str2) {
        char c;
        if (str2 != null && !str2.isEmpty()) {
            if (str2.contains("%")) {
                try {
                    c = (getSeconds(str) * Double.parseDouble(str2.replace("%", ""))) / 100.0d;
                } catch (NumberFormatException e) {
                    PMLog.error("POBUtils", "Invalid time value", new Object[0]);
                }
            } else {
                c = getSeconds(str2);
            }
            return c;
        }
        c = 0;
        return c;
    }

    public static boolean getBooleanValue(String str) {
        boolean z = false;
        if (str != null) {
            try {
                z = Boolean.valueOf(str).booleanValue();
            } catch (Exception e) {
                PMLog.error("POBUtils", "Cannot convert string %s to boolean", str);
                z = false;
            }
        }
        return z;
    }

    public static Object getBuildConfigValue(Context context, String str) {
        try {
            return Class.forName(context.getPackageName() + ".BuildConfig").getField(str).get(null);
        } catch (Exception e) {
            PMLog.warn("POBUtils", "Build config value is not available, reason :%s", e.getCause());
            return null;
        }
    }

    public static int getDeviceOrientation(Context context) {
        Configuration configuration;
        Resources resources = context.getResources();
        if (resources == null || (configuration = resources.getConfiguration()) == null) {
            return 0;
        }
        return configuration.orientation;
    }

    public static int getIntegerValue(String str) {
        int i = 0;
        if (str != null) {
            try {
                i = Integer.valueOf(str).intValue();
            } catch (Exception e) {
                PMLog.error("POBUtils", "Cannot convert string %s to integer", str);
                i = 0;
            }
        }
        return i;
    }

    public static POBAdSize getInterstitialAdSize(Context context) {
        int deviceOrientation = getDeviceOrientation(context);
        return isTablet(context) ? deviceOrientation == 2 ? POBAdSize.PMINTERSTITIAL_1024x768 : POBAdSize.PMINTERSTITIAL_768x1024 : deviceOrientation == 2 ? POBAdSize.PMINTERSTITIAL_480x320 : POBAdSize.PMINTERSTITIAL_320x480;
    }

    public static POBLocation getLocation(POBLocationDetector pOBLocationDetector) {
        Location location;
        POBLocation pOBLocation = (!POBInstanceProvider.getSdkConfig().isLocationAccessAllowed() || pOBLocationDetector == null || (location = pOBLocationDetector.getLocation()) == null) ? null : new POBLocation(location);
        POBLocation pOBLocation2 = pOBLocation;
        if (pOBLocation == null) {
            pOBLocation2 = POBInstanceProvider.getSdkConfig().getLocation();
        }
        return pOBLocation2;
    }

    public static POBAdSize getOWAdSize(String str) {
        String[] split = str.split("x");
        int i = 0;
        int parseInt = Integer.parseInt(split[0]);
        if (split.length > 1) {
            i = Integer.parseInt(split[1]);
        }
        return new POBAdSize(parseInt, i);
    }

    public static int getScreenHeight() {
        return convertPixelToDp(Resources.getSystem().getDisplayMetrics().heightPixels);
    }

    public static int getScreenWidth() {
        return convertPixelToDp(Resources.getSystem().getDisplayMetrics().widthPixels);
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    public static double getSeconds(String str) {
        char c = 0;
        char c2 = 0;
        if (str != null) {
            c2 = 0;
            if (!str.isEmpty()) {
                String[] split = str.split(":", -1);
                int length = split.length - 1;
                while (true) {
                    c2 = c;
                    if (length < 0) {
                        break;
                    }
                    try {
                        c += Double.parseDouble(split[length]) * Math.pow(60.0d, (split.length - 1) - length);
                    } catch (NumberFormatException e) {
                        PMLog.error("POBUtils", "Invalid time value", new Object[0]);
                    }
                    length--;
                }
            }
        }
        return c2;
    }

    public static int getTimeOffsetInMinutes() {
        Calendar calendar = Calendar.getInstance(Locale.getDefault());
        return (calendar.get(15) + calendar.get(16)) / 60000;
    }

    public static int getValidRefreshInterval(int i, int i2) {
        int i3;
        if (i <= 0) {
            i3 = 0;
        } else {
            i3 = i;
            if (i <= i2) {
                i3 = i2;
            }
        }
        return i3;
    }

    public static int[] getViewXYPosition(View view) {
        view.getLocationOnScreen(r0);
        int[] iArr = {convertPixelToDp(iArr[0]), convertPixelToDp(iArr[1])};
        return iArr;
    }

    public static float getVisiblePercent(View view) {
        if (view != null) {
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                return 0.0f;
            }
            return ((rect.height() * rect.width()) * 100) / (view.getHeight() * view.getWidth());
        }
        return 0.0f;
    }

    public static boolean hasPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static boolean isNull(Object[] objArr) {
        boolean z;
        if (objArr != null && objArr.length > 0) {
            int length = objArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (objArr[i] == null) {
                    break;
                } else {
                    i++;
                }
            }
        }
        z = true;
        return z;
    }

    public static boolean isNullOrEmpty(String str) {
        if (str != null) {
            return str.isEmpty();
        }
        return true;
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static String loadMraid(Context context, String str) {
        String str2;
        try {
            InputStream open = context.getAssets().open(str);
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            str2 = new String(bArr);
        } catch (IOException e) {
            PMLog.error("POBUtils", "Failed to load Mraid!", new Object[0]);
            str2 = null;
        }
        return str2;
    }

    public static void logBidWinningStatus(boolean z, String str) {
        if (!z) {
            PMLog.debug("POBUtils", "AdServerWin", new Object[0]);
            return;
        }
        PMLog.debug("POBUtils", "Bid win for partner - " + str, new Object[0]);
    }

    public static String md5(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase(Locale.getDefault());
        } catch (Exception e) {
            return "";
        }
    }

    public static boolean openExternalBrowser(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            PMLog.error("POBUtils", "Open external browser %s", "Not able to parse url");
            return false;
        }
    }

    public static String readFile(String str) {
        String str2;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            str2 = new String(bArr);
        } catch (IOException e) {
            PMLog.error("POBUtils", "Failed to load file : %s", str);
            str2 = null;
        }
        return str2;
    }

    public static Context resolveWebViewContext(Context context) {
        int i = Build.VERSION.SDK_INT;
        Context context2 = context;
        if (i >= 21) {
            context2 = context;
            if (i <= 22) {
                context2 = context.getApplicationContext();
            }
        }
        return context2;
    }

    public static void runOnBackgroundThread(Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            new Thread(runnable).start();
        } else {
            runnable.run();
        }
    }

    public static void runOnMainThread(Runnable runnable) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            new Handler(Looper.getMainLooper()).post(runnable);
        } else {
            runnable.run();
        }
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase(Locale.getDefault());
        } catch (Exception e) {
            return "";
        }
    }

    public static void writeFile(String str, String str2) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(str2));
            bufferedWriter.write(str);
            bufferedWriter.close();
        } catch (IOException e) {
            PMLog.error("POBUtils", "Failed to write file : %s", str2);
        }
    }
}
