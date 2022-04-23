package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.StatFs;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.core.content.b;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.verizon.ads.EnvironmentInfo;
import java.io.File;
import java.net.SocketException;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/DeviceUtils.class */
public class DeviceUtils {

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/DeviceUtils$ForceOrientation.class */
    public enum ForceOrientation {
        FORCE_PORTRAIT(EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT),
        FORCE_LANDSCAPE(EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");
        
        private final String mKey;

        ForceOrientation(String str) {
            this.mKey = str;
        }

        public static ForceOrientation getForceOrientation(String str) {
            ForceOrientation[] values;
            for (ForceOrientation forceOrientation : values()) {
                if (forceOrientation.mKey.equalsIgnoreCase(str)) {
                    return forceOrientation;
                }
            }
            return UNDEFINED;
        }
    }

    @Deprecated
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/util/DeviceUtils$IP.class */
    public enum IP {
        IPv4,
        IPv6
    }

    private DeviceUtils() {
    }

    private static int a(int i, int i2) {
        if (1 == i2) {
            return (i == 1 || i == 2) ? 9 : 1;
        }
        if (2 == i2) {
            return (i == 2 || i == 3) ? 8 : 0;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unknown screen orientation. Defaulting to portrait.");
        return 9;
    }

    public static long diskCacheSizeBytes(File file) {
        return diskCacheSizeBytes(file, 31457280L);
    }

    public static long diskCacheSizeBytes(File file, long j) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(j, 104857600L), 31457280L);
    }

    public static Point getDeviceDimensions(Context context) {
        Integer num;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Integer num2 = null;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int i = point.x;
            int i2 = point.y;
            num2 = Integer.valueOf(i);
            num = Integer.valueOf(i2);
        } else {
            num = null;
        }
        Integer num3 = num2;
        if (num2 == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            num3 = Integer.valueOf(displayMetrics.widthPixels);
            num = Integer.valueOf(displayMetrics.heightPixels);
        }
        return new Point(num3.intValue(), num.intValue());
    }

    @Deprecated
    public static String getHashedUdid(Context context) {
        return null;
    }

    @Deprecated
    public static String getIpAddress(IP ip) throws SocketException {
        return null;
    }

    public static int getScreenOrientation(Activity activity) {
        return a(activity.getWindowManager().getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
    }

    public static boolean isNetworkAvailable(Context context) {
        if (context == null || !isPermissionGranted(context, "android.permission.INTERNET")) {
            return false;
        }
        if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected();
        } catch (NullPointerException e) {
            return false;
        }
    }

    public static boolean isPermissionGranted(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        try {
            return b.a(context, str) == 0;
        } catch (Exception e) {
            return false;
        }
    }

    public static void lockOrientation(Activity activity, CreativeOrientation creativeOrientation) {
        if (Preconditions.NoThrow.checkNotNull(creativeOrientation) && Preconditions.NoThrow.checkNotNull(activity)) {
            int a2 = a(((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
            int i = 8;
            if (CreativeOrientation.PORTRAIT == creativeOrientation) {
                i = 9 == a2 ? 9 : 1;
            } else if (CreativeOrientation.LANDSCAPE != creativeOrientation) {
                i = 4;
            } else if (8 != a2) {
                i = 0;
            }
            activity.setRequestedOrientation(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int memoryCacheSizeBytes(android.content.Context r7) {
        /*
            r0 = r7
            java.lang.String r1 = "activity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0
            r8 = r0
            r0 = r8
            int r0 = r0.getMemoryClass()
            long r0 = (long) r0
            r9 = r0
            java.lang.Class<android.content.pm.ApplicationInfo> r0 = android.content.pm.ApplicationInfo.class
            java.lang.String r1 = "FLAG_LARGE_HEAP"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: Exception -> 0x004f
            r1 = 0
            int r0 = r0.getInt(r1)     // Catch: Exception -> 0x004f
            r11 = r0
            r0 = r9
            r12 = r0
            r0 = r7
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo()     // Catch: Exception -> 0x004f
            int r0 = r0.flags     // Catch: Exception -> 0x004f
            r1 = r11
            boolean r0 = com.mopub.common.util.Utils.bitMaskContainsFlag(r0, r1)     // Catch: Exception -> 0x004f
            if (r0 == 0) goto L_0x0063
            com.mopub.common.util.Reflection$MethodBuilder r0 = new com.mopub.common.util.Reflection$MethodBuilder     // Catch: Exception -> 0x004f
            r7 = r0
            r0 = r7
            r1 = r8
            java.lang.String r2 = "getLargeMemoryClass"
            r0.<init>(r1, r2)     // Catch: Exception -> 0x004f
            r0 = r7
            java.lang.Object r0 = r0.execute()     // Catch: Exception -> 0x004f
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: Exception -> 0x004f
            int r0 = r0.intValue()     // Catch: Exception -> 0x004f
            r11 = r0
            r0 = r11
            long r0 = (long) r0
            r12 = r0
            goto L_0x0063
        L_0x004f:
            r7 = move-exception
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Unable to reflectively determine large heap size."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r9
            r12 = r0
        L_0x0063:
            r0 = 31457280(0x1e00000, double:1.55419614E-316)
            r1 = r12
            r2 = 8
            long r1 = r1 / r2
            r2 = 1024(0x400, double:5.06E-321)
            long r1 = r1 * r2
            r2 = 1024(0x400, double:5.06E-321)
            long r1 = r1 * r2
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.util.DeviceUtils.memoryCacheSizeBytes(android.content.Context):int");
    }
}
