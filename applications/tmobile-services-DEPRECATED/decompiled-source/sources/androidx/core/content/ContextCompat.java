package androidx.core.content;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.app.job.JobScheduler;
import android.app.usage.UsageStatsManager;
import android.appwidget.AppWidgetManager;
import android.bluetooth.BluetoothManager;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.RestrictionsManager;
import android.content.pm.LauncherApps;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.hardware.ConsumerIrManager;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraManager;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionManager;
import android.media.session.MediaSessionManager;
import android.media.tv.TvInputManager;
import android.net.ConnectivityManager;
import android.net.nsd.NsdManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import android.os.UserManager;
import android.os.Vibrator;
import android.os.storage.StorageManager;
import android.print.PrintManager;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.TextServicesManager;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/ContextCompat.class */
public class ContextCompat {

    /* renamed from: a */
    private static final Object f2981a = new Object();

    /* renamed from: b */
    private static TypedValue f2982b;

    /* loaded from: classes-dex2jar.jar:androidx/core/content/ContextCompat$LegacyServiceMapHolder.class */
    private static final class LegacyServiceMapHolder {

        /* renamed from: a */
        static final HashMap<Class<?>, String> f2983a = new HashMap<>();

        static {
            if (Build.VERSION.SDK_INT >= 22) {
                f2983a.put(SubscriptionManager.class, "telephony_subscription_service");
                f2983a.put(UsageStatsManager.class, "usagestats");
            }
            if (Build.VERSION.SDK_INT >= 21) {
                f2983a.put(AppWidgetManager.class, "appwidget");
                f2983a.put(BatteryManager.class, "batterymanager");
                f2983a.put(CameraManager.class, "camera");
                f2983a.put(JobScheduler.class, "jobscheduler");
                f2983a.put(LauncherApps.class, "launcherapps");
                f2983a.put(MediaProjectionManager.class, "media_projection");
                f2983a.put(MediaSessionManager.class, "media_session");
                f2983a.put(RestrictionsManager.class, "restrictions");
                f2983a.put(TelecomManager.class, "telecom");
                f2983a.put(TvInputManager.class, "tv_input");
            }
            if (Build.VERSION.SDK_INT >= 19) {
                f2983a.put(AppOpsManager.class, "appops");
                f2983a.put(CaptioningManager.class, "captioning");
                f2983a.put(ConsumerIrManager.class, "consumer_ir");
                f2983a.put(PrintManager.class, "print");
            }
            if (Build.VERSION.SDK_INT >= 18) {
                f2983a.put(BluetoothManager.class, "bluetooth");
            }
            if (Build.VERSION.SDK_INT >= 17) {
                f2983a.put(DisplayManager.class, Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION);
                f2983a.put(UserManager.class, "user");
            }
            if (Build.VERSION.SDK_INT >= 16) {
                f2983a.put(InputManager.class, "input");
                f2983a.put(MediaRouter.class, "media_router");
                f2983a.put(NsdManager.class, "servicediscovery");
            }
            f2983a.put(AccessibilityManager.class, "accessibility");
            f2983a.put(AccountManager.class, "account");
            f2983a.put(ActivityManager.class, "activity");
            f2983a.put(AlarmManager.class, "alarm");
            f2983a.put(AudioManager.class, "audio");
            f2983a.put(ClipboardManager.class, "clipboard");
            f2983a.put(ConnectivityManager.class, "connectivity");
            f2983a.put(DevicePolicyManager.class, "device_policy");
            f2983a.put(DownloadManager.class, "download");
            f2983a.put(DropBoxManager.class, "dropbox");
            f2983a.put(InputMethodManager.class, "input_method");
            f2983a.put(KeyguardManager.class, "keyguard");
            f2983a.put(LayoutInflater.class, "layout_inflater");
            f2983a.put(LocationManager.class, FirebaseAnalytics.Param.LOCATION);
            f2983a.put(NfcManager.class, "nfc");
            f2983a.put(NotificationManager.class, "notification");
            f2983a.put(PowerManager.class, "power");
            f2983a.put(SearchManager.class, FirebaseAnalytics.Event.SEARCH);
            f2983a.put(SensorManager.class, "sensor");
            f2983a.put(StorageManager.class, "storage");
            f2983a.put(TelephonyManager.class, "phone");
            f2983a.put(TextServicesManager.class, "textservices");
            f2983a.put(UiModeManager.class, "uimode");
            f2983a.put(UsbManager.class, "usb");
            f2983a.put(Vibrator.class, "vibrator");
            f2983a.put(WallpaperManager.class, "wallpaper");
            f2983a.put(WifiP2pManager.class, "wifip2p");
            f2983a.put(WifiManager.class, "wifi");
            f2983a.put(WindowManager.class, "window");
        }

        private LegacyServiceMapHolder() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/ContextCompat$MainHandlerExecutor.class */
    private static class MainHandlerExecutor implements Executor {

        /* renamed from: f */
        private final Handler f2984f;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (!this.f2984f.post(runnable)) {
                throw new RejectedExecutionException(this.f2984f + " is shutting down");
            }
        }
    }

    /* renamed from: a */
    public static int m19678a(@NonNull Context context, @NonNull String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Nullable
    /* renamed from: b */
    public static Context m19677b(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext();
        }
        return null;
    }

    /* renamed from: c */
    private static File m19676c(File file) {
        synchronized (ContextCompat.class) {
            try {
                if (file.exists() || file.mkdirs()) {
                    return file;
                }
                if (file.exists()) {
                    return file;
                }
                Log.w("ContextCompat", "Unable to create files subdir " + file.getPath());
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @ColorInt
    /* renamed from: d */
    public static int m19675d(@NonNull Context context, @ColorRes int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    @Nullable
    /* renamed from: e */
    public static ColorStateList m19674e(@NonNull Context context, @ColorRes int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    @Nullable
    /* renamed from: f */
    public static Drawable m19673f(@NonNull Context context, @DrawableRes int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return context.getDrawable(i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f2981a) {
            if (f2982b == null) {
                f2982b = new TypedValue();
            }
            context.getResources().getValue(i, f2982b, true);
            i2 = f2982b.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    @NonNull
    /* renamed from: g */
    public static File[] m19672g(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    @NonNull
    /* renamed from: h */
    public static File[] m19671h(@NonNull Context context, @Nullable String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    @Nullable
    /* renamed from: i */
    public static File m19670i(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getNoBackupFilesDir() : m19676c(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    /* renamed from: j */
    public static boolean m19669j(@NonNull Context context, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }
}
