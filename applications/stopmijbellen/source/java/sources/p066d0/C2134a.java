package p066d0;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import java.io.File;
import java.util.Objects;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: d0.a */
/* loaded from: classes-dex2jar.jar:d0/a.class */
public class C2134a {

    /* renamed from: a */
    public static final Object f7832a = new Object();

    /* renamed from: d0.a$a */
    /* loaded from: classes-dex2jar.jar:d0/a$a.class */
    public static class C2135a {
        /* renamed from: a */
        public static void m3844a(Context context, Intent[] intentArr, Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        /* renamed from: b */
        public static void m3843b(Context context, Intent intent, Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* renamed from: d0.a$b */
    /* loaded from: classes-dex2jar.jar:d0/a$b.class */
    public static class C2136b {
        /* renamed from: a */
        public static File m3842a(Context context) {
            return context.getCodeCacheDir();
        }

        /* renamed from: b */
        public static Drawable m3841b(Context context, int i) {
            return context.getDrawable(i);
        }

        /* renamed from: c */
        public static File m3840c(Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* renamed from: d0.a$c */
    /* loaded from: classes-dex2jar.jar:d0/a$c.class */
    public static class C2137c {
        /* renamed from: a */
        public static int m3839a(Context context, int i) {
            return context.getColor(i);
        }

        /* renamed from: b */
        public static <T> T m3838b(Context context, Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        /* renamed from: c */
        public static String m3837c(Context context, Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    /* renamed from: d0.a$d */
    /* loaded from: classes-dex2jar.jar:d0/a$d.class */
    public static class C2138d {
        /* renamed from: a */
        public static Context m3836a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }

        /* renamed from: b */
        public static File m3835b(Context context) {
            return context.getDataDir();
        }

        /* renamed from: c */
        public static boolean m3834c(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    /* renamed from: d0.a$e */
    /* loaded from: classes-dex2jar.jar:d0/a$e.class */
    public static class C2139e {
        /* renamed from: a */
        public static ComponentName m3833a(Context context, Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    /* renamed from: a */
    public static int m3846a(Context context, String str) {
        Objects.requireNonNull(str, "permission must be non-null");
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    /* renamed from: b */
    public static int m3845b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? C2137c.m3839a(context, i) : context.getResources().getColor(i);
    }
}
