package com.mopub.common.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.StatFs;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/DeviceUtils.class */
public class DeviceUtils {

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/DeviceUtils$ForceOrientation.class */
    public enum ForceOrientation {
        FORCE_PORTRAIT(EnvironmentUtils.ORIENTATION_PORTRAIT),
        FORCE_LANDSCAPE(EnvironmentUtils.ORIENTATION_LANDSCAPE),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");
        

        /* renamed from: a */
        public final String f4515a;

        ForceOrientation(String str) {
            this.f4515a = str;
        }

        public static ForceOrientation getForceOrientation(String str) {
            ForceOrientation[] values;
            for (ForceOrientation forceOrientation : values()) {
                if (forceOrientation.f4515a.equalsIgnoreCase(str)) {
                    return forceOrientation;
                }
            }
            return UNDEFINED;
        }
    }

    @Deprecated
    /* renamed from: com.mopub.common.util.DeviceUtils$IP */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/DeviceUtils$IP.class */
    public enum EnumC1062IP {
        IPv4,
        IPv6
    }

    private DeviceUtils() {
    }

    /* renamed from: a */
    public static int m3792a(int i, int i2) {
        if (1 == i2) {
            return (i == 1 || i == 2) ? 9 : 1;
        } else if (2 == i2) {
            return (i == 2 || i == 3) ? 8 : 0;
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unknown screen orientation. Defaulting to portrait.");
            return 9;
        }
    }

    public static long diskCacheSizeBytes(File file) {
        return diskCacheSizeBytes(file, 31457280L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static long diskCacheSizeBytes(File file, long j) {
        ?? r7;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            r7 = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to calculate 2% of available disk space, defaulting to minimum");
            r7 = j;
        }
        return Math.max(Math.min((long) r7, 104857600L), 31457280L);
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
        Integer num3 = num;
        Integer num4 = num2;
        if (num2 == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            num4 = Integer.valueOf(displayMetrics.widthPixels);
            num3 = Integer.valueOf(displayMetrics.heightPixels);
        }
        return new Point(num4.intValue(), num3.intValue());
    }

    @Deprecated
    public static String getHashedUdid(Context context) {
        return null;
    }

    @Deprecated
    public static String getIpAddress(EnumC1062IP enumC1062IP) {
        return null;
    }

    public static int getScreenOrientation(Activity activity) {
        return m3792a(activity.getWindowManager().getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
    }

    public static boolean isNetworkAvailable(Context context) {
        if (context != null && isPermissionGranted(context, "android.permission.INTERNET")) {
            if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return true;
            }
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected();
            } catch (NullPointerException e) {
                return false;
            }
        }
        return false;
    }

    public static boolean isPermissionGranted(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        boolean z = false;
        try {
            if (g8.a(context, str) == 0) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    public static void lockOrientation(Activity activity, CreativeOrientation creativeOrientation) {
        if (!Preconditions.NoThrow.checkNotNull(creativeOrientation) || !Preconditions.NoThrow.checkNotNull(activity)) {
            return;
        }
        int m3792a = m3792a(((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
        int i = 8;
        if (CreativeOrientation.PORTRAIT == creativeOrientation) {
            i = 9 == m3792a ? 9 : 1;
        } else if (CreativeOrientation.LANDSCAPE != creativeOrientation) {
            return;
        } else {
            if (8 != m3792a) {
                i = 0;
            }
        }
        activity.setRequestedOrientation(i);
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public static int memoryCacheSizeBytes(Context context) {
        char c;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ?? memoryClass = activityManager.getMemoryClass();
        try {
            c = memoryClass;
            if (Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null))) {
                c = ((Integer) new Reflection.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to reflectively determine large heap size.");
            c = memoryClass;
        }
        return (int) Math.min(31457280L, (c / '\b') * PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID * PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
    }
}
