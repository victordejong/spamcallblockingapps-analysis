package androidx.core.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.content.p007d.C0605f;
import java.io.File;
/* renamed from: androidx.core.content.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a.class */
public class C0586a {

    /* renamed from: a */
    private static final Object f2951a = new Object();

    /* renamed from: b */
    private static final Object f2952b = new Object();

    /* renamed from: c */
    private static TypedValue f2953c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$a.class */
    public static class C0587a {
        /* renamed from: a */
        static void m33341a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        /* renamed from: b */
        static void m33340b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$b.class */
    public static class C0588b {
        /* renamed from: a */
        static File[] m33339a(Context context) {
            return context.getExternalCacheDirs();
        }

        /* renamed from: b */
        static File[] m33338b(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        /* renamed from: c */
        static File[] m33337c(Context context) {
            return context.getObbDirs();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$c.class */
    public static class C0589c {
        /* renamed from: a */
        static File m33336a(Context context) {
            return context.getCodeCacheDir();
        }

        /* renamed from: b */
        static Drawable m33335b(Context context, int i) {
            return context.getDrawable(i);
        }

        /* renamed from: c */
        static File m33334c(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$d.class */
    public static class C0590d {
        /* renamed from: a */
        static int m33333a(Context context, int i) {
            return context.getColor(i);
        }

        /* renamed from: b */
        static ColorStateList m33332b(Context context, int i) {
            return context.getColorStateList(i);
        }

        /* renamed from: c */
        static <T> T m33331c(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        /* renamed from: d */
        static String m33330d(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$e.class */
    public static class C0591e {
        /* renamed from: a */
        static Context m33329a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        /* renamed from: b */
        static File m33328b(Context context) {
            return context.getDataDir();
        }

        /* renamed from: c */
        static boolean m33327c(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a$f.class */
    public static class C0592f {
        /* renamed from: a */
        static ComponentName m33326a(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    /* renamed from: a */
    public static int m33353a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: b */
    public static Context m33352b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return C0591e.m33329a(context);
        }
        return null;
    }

    /* renamed from: c */
    private static File m33351c(File file) {
        synchronized (f2952b) {
            if (!file.exists()) {
                if (file.mkdirs()) {
                    return file;
                }
                Log.w("ContextCompat", "Unable to create files subdir " + file.getPath());
            }
            return file;
        }
    }

    /* renamed from: d */
    public static int m33350d(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? C0590d.m33333a(context, i) : context.getResources().getColor(i);
    }

    /* renamed from: e */
    public static ColorStateList m33349e(Context context, int i) {
        return C0605f.m33275c(context.getResources(), i, context.getTheme());
    }

    /* renamed from: f */
    public static Drawable m33348f(Context context, int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return C0589c.m33335b(context, i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f2951a) {
            if (f2953c == null) {
                f2953c = new TypedValue();
            }
            context.getResources().getValue(i, f2953c, true);
            i2 = f2953c.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    /* renamed from: g */
    public static File[] m33347g(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? C0588b.m33339a(context) : new File[]{context.getExternalCacheDir()};
    }

    /* renamed from: h */
    public static File[] m33346h(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? C0588b.m33338b(context, str) : new File[]{context.getExternalFilesDir(str)};
    }

    /* renamed from: i */
    public static File m33345i(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? C0589c.m33334c(context) : m33351c(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    /* renamed from: j */
    public static boolean m33344j(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0587a.m33341a(context, intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* renamed from: k */
    public static void m33343k(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            C0587a.m33340b(context, intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    /* renamed from: l */
    public static void m33342l(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            C0592f.m33326a(context, intent);
        } else {
            context.startService(intent);
        }
    }
}
