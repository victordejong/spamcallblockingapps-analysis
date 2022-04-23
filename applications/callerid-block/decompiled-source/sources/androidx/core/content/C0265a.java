package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.util.TypedValue;
import java.io.File;
/* renamed from: androidx.core.content.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a.class */
public class C0265a {

    /* renamed from: a */
    private static final Object f1668a = new Object();

    /* renamed from: b */
    private static TypedValue f1669b;

    /* renamed from: a */
    public static int m13556a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: b */
    public static Context m13555b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext();
        }
        return null;
    }

    /* renamed from: c */
    private static File m13554c(File file) {
        synchronized (C0265a.class) {
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

    /* renamed from: d */
    public static int m13553d(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* renamed from: e */
    public static ColorStateList m13552e(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    /* renamed from: f */
    public static Drawable m13551f(Context context, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return context.getDrawable(i);
        }
        if (i2 < 16) {
            synchronized (f1668a) {
                try {
                    if (f1669b == null) {
                        f1669b = new TypedValue();
                    }
                    context.getResources().getValue(i, f1669b, true);
                    i = f1669b.resourceId;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return context.getResources().getDrawable(i);
    }

    /* renamed from: g */
    public static File[] m13550g(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    /* renamed from: h */
    public static File[] m13549h(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    /* renamed from: i */
    public static File m13548i(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getNoBackupFilesDir() : m13554c(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    /* renamed from: j */
    public static boolean m13547j(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* renamed from: k */
    public static void m13546k(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivity(intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    /* renamed from: l */
    public static void m13545l(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }
}
