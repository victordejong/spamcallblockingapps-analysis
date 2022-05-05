package p081h.p160h.p172b.p173a;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import java.io.File;
import java.util.List;
/* renamed from: h.h.b.a.e */
/* loaded from: classes2-dex2jar.jar:h/h/b/a/e.class */
public class C6298e {

    /* renamed from: a */
    public static final String f15604a = "h.h.b.a.e";

    /* renamed from: b */
    public static int f15605b;

    /* renamed from: a */
    public static int m23356a(int i) {
        if (m23357a()) {
            i = 2038;
        }
        return i;
    }

    /* renamed from: a */
    public static NotificationChannel m23350a(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3) {
        if (m23357a()) {
            return m23349a(context, str, str2, str3, 4, true);
        }
        return null;
    }

    @RequiresApi(26)
    /* renamed from: a */
    public static NotificationChannel m23349a(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, int i, boolean z) {
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, i);
        if (!TextUtils.isEmpty(str3)) {
            notificationChannel.setDescription(str3);
        }
        notificationChannel.setShowBadge(z);
        return notificationChannel;
    }

    /* renamed from: a */
    public static NotificationChannel m23348a(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, boolean z) {
        if (m23357a()) {
            return m23349a(context, str, str2, str3, 4, z);
        }
        return null;
    }

    /* renamed from: a */
    public static Uri m23351a(Context context, String str, String str2) {
        return m23357a() ? FileProvider.getUriForFile(context, str, new File(str2)) : Uri.fromFile(new File(str2));
    }

    /* renamed from: a */
    public static NotificationCompat.Builder m23352a(@NonNull Context context, @NonNull String str) {
        return m23357a() ? new NotificationCompat.Builder(context, str) : new NotificationCompat.Builder(context);
    }

    /* renamed from: a */
    public static Exception m23346a(@Nullable String str) {
        if (!m23345b()) {
            return null;
        }
        String processName = Application.getProcessName();
        try {
            if (TextUtils.equals(str, processName)) {
                return null;
            }
            if (!TextUtils.isEmpty(processName)) {
                WebView.setDataDirectorySuffix(processName);
                return null;
            }
            WebView.setDataDirectorySuffix("unknown.process");
            return new C6300g("Open WebView on unknown process");
        } catch (IllegalArgumentException e) {
            Log.e(f15604a, e.getMessage());
            return new C6300g("Process name contains path separator: " + processName, e);
        } catch (IllegalStateException e2) {
            Log.e(f15604a, e2.getMessage());
            return new C6300g("WebView already initialized in current process: " + processName, e2);
        } catch (Throwable th) {
            Log.e(f15604a, th.getMessage());
            return new C6300g("Open WebView on different process: " + processName, th);
        }
    }

    /* renamed from: a */
    public static void m23355a(@NonNull Service service, int i, @NonNull Notification notification) {
        if (m23357a()) {
            service.startForeground(i, notification);
        }
    }

    /* renamed from: a */
    public static void m23354a(@NonNull Service service, boolean z) {
        if (m23357a()) {
            service.stopForeground(z);
        }
    }

    /* renamed from: a */
    public static void m23353a(@NonNull Context context, @NonNull Intent intent) {
        if (m23357a()) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @RequiresApi(26)
    /* renamed from: a */
    public static void m23347a(@NonNull Context context, @NonNull List<NotificationChannel> list) {
        NotificationManager notificationManager;
        if (m23357a() && (notificationManager = (NotificationManager) context.getSystemService("notification")) != null) {
            notificationManager.createNotificationChannels(list);
        }
    }

    /* renamed from: a */
    public static boolean m23357a() {
        return Build.VERSION.SDK_INT >= 26 && f15605b >= 26;
    }

    /* renamed from: b */
    public static NotificationChannel m23343b(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, boolean z) {
        if (m23357a()) {
            return m23349a(context, str, str2, str3, 5, z);
        }
        return null;
    }

    /* renamed from: b */
    public static void m23344b(int i) {
        f15605b = i;
    }

    /* renamed from: b */
    public static boolean m23345b() {
        return Build.VERSION.SDK_INT >= 28 && f15605b >= 28;
    }

    /* renamed from: c */
    public static NotificationChannel m23341c(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, boolean z) {
        if (m23357a()) {
            return m23349a(context, str, str2, str3, 1, z);
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m23342c() {
        return Build.VERSION.SDK_INT >= 29 && f15605b >= 29;
    }
}
