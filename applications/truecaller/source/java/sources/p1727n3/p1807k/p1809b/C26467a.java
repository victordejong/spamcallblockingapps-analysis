package p1727n3.p1807k.p1809b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.util.TypedValue;
import java.io.File;
import java.util.concurrent.Executor;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1816e.ExecutorC26510b;
/* renamed from: n3.k.b.a */
/* loaded from: classes-dex2jar.jar:n3/k/b/a.class */
public class C26467a {

    /* renamed from: a */
    public static final Object f74235a = new Object();

    /* renamed from: b */
    public static final Object f74236b = new Object();

    /* renamed from: n3.k.b.a$a */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$a.class */
    public static class C26468a {
        /* renamed from: a */
        public static void m1795a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        /* renamed from: b */
        public static void m1794b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* renamed from: n3.k.b.a$b */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$b.class */
    public static class C26469b {
        /* renamed from: a */
        public static File[] m1793a(Context context) {
            return context.getExternalCacheDirs();
        }

        /* renamed from: b */
        public static File[] m1792b(Context context, String str) {
            return context.getExternalFilesDirs(str);
        }

        /* renamed from: c */
        public static File[] m1791c(Context context) {
            return context.getObbDirs();
        }
    }

    /* renamed from: n3.k.b.a$c */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$c.class */
    public static class C26470c {
        /* renamed from: a */
        public static File m1790a(Context context) {
            return context.getCodeCacheDir();
        }

        /* renamed from: b */
        public static Drawable m1789b(Context context, int i) {
            return context.getDrawable(i);
        }

        /* renamed from: c */
        public static File m1788c(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* renamed from: n3.k.b.a$d */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$d.class */
    public static class C26471d {
        /* renamed from: a */
        public static int m1787a(Context context, int i) {
            return context.getColor(i);
        }

        /* renamed from: b */
        public static ColorStateList m1786b(Context context, int i) {
            return context.getColorStateList(i);
        }

        /* renamed from: c */
        public static <T> T m1785c(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        /* renamed from: d */
        public static String m1784d(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    /* renamed from: n3.k.b.a$e */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$e.class */
    public static class C26472e {
        /* renamed from: a */
        public static Context m1783a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        /* renamed from: b */
        public static File m1782b(Context context) {
            return context.getDataDir();
        }

        /* renamed from: c */
        public static boolean m1781c(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    /* renamed from: n3.k.b.a$f */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$f.class */
    public static class C26473f {
        /* renamed from: a */
        public static ComponentName m1780a(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    /* renamed from: n3.k.b.a$g */
    /* loaded from: classes-dex2jar.jar:n3/k/b/a$g.class */
    public static class C26474g {
        /* renamed from: a */
        public static Executor m1779a(Context context) {
            return context.getMainExecutor();
        }
    }

    /* renamed from: a */
    public static int m1801a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: b */
    public static int m1800b(Context context, int i) {
        return C26471d.m1787a(context, i);
    }

    /* renamed from: c */
    public static ColorStateList m1799c(Context context, int i) {
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        return resources.getColorStateList(i, theme);
    }

    /* renamed from: d */
    public static File m1798d(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return C26472e.m1782b(context);
        }
        String str = context.getApplicationInfo().dataDir;
        return str != null ? new File(str) : null;
    }

    /* renamed from: e */
    public static Executor m1797e(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? C26474g.m1779a(context) : new ExecutorC26510b(new Handler(context.getMainLooper()));
    }

    /* renamed from: f */
    public static void m1796f(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            C26473f.m1780a(context, intent);
        } else {
            context.startService(intent);
        }
    }
}
