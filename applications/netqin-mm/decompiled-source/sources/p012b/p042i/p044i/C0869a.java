package p012b.p042i.p044i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.util.TypedValue;
import java.io.File;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: b.i.i.a */
/* loaded from: classes-dex2jar.jar:b/i/i/a.class */
public class C0869a {

    /* renamed from: a */
    public static final Object f4058a = new Object();

    /* renamed from: b */
    public static TypedValue f4059b;

    /* renamed from: b.i.i.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/i/a$a.class */
    public static class ExecutorC0870a implements Executor {

        /* renamed from: a */
        public final Handler f4060a;

        public ExecutorC0870a(Handler handler) {
            this.f4060a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (!this.f4060a.post(runnable)) {
                throw new RejectedExecutionException(this.f4060a + " is shutting down");
            }
        }
    }

    /* renamed from: a */
    public static int m35693a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* renamed from: a */
    public static int m35690a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* renamed from: a */
    public static Context m35694a(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext();
        }
        return null;
    }

    /* renamed from: a */
    public static void m35692a(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    /* renamed from: a */
    public static void m35691a(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivity(intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    /* renamed from: a */
    public static boolean m35689a(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* renamed from: b */
    public static ColorStateList m35687b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    /* renamed from: b */
    public static File[] m35688b(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    /* renamed from: b */
    public static File[] m35686b(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    /* renamed from: c */
    public static Drawable m35684c(Context context, int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return context.getDrawable(i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f4058a) {
            if (f4059b == null) {
                f4059b = new TypedValue();
            }
            context.getResources().getValue(i, f4059b, true);
            i2 = f4059b.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    /* renamed from: c */
    public static Executor m35685c(Context context) {
        return Build.VERSION.SDK_INT >= 28 ? context.getMainExecutor() : new ExecutorC0870a(new Handler(context.getMainLooper()));
    }
}
