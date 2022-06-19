package androidx.core.p017a;

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
/* renamed from: androidx.core.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a.class */
public class C0438a {

    /* renamed from: a */
    private static final Object f1728a = new Object();

    /* renamed from: b */
    private static TypedValue f1729b;

    /* renamed from: a */
    public static int m20898a(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    /* renamed from: a */
    public static Drawable m20900a(Context context, int i) {
        int i2;
        Drawable drawable;
        if (Build.VERSION.SDK_INT >= 21) {
            drawable = context.getDrawable(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            drawable = context.getResources().getDrawable(i);
        } else {
            synchronized (f1728a) {
                if (f1729b == null) {
                    f1729b = new TypedValue();
                }
                context.getResources().getValue(i, f1729b, true);
                i2 = f1729b.resourceId;
            }
            drawable = context.getResources().getDrawable(i2);
        }
        return drawable;
    }

    /* renamed from: a */
    public static File m20901a(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getNoBackupFilesDir() : m20896a(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    /* renamed from: a */
    private static File m20896a(File file) {
        File file2;
        synchronized (C0438a.class) {
            file2 = file;
            try {
                if (!file.exists()) {
                    file2 = file;
                    if (!file.mkdirs()) {
                        if (file.exists()) {
                            file2 = file;
                        } else {
                            Log.w("ContextCompat", "Unable to create files subdir " + file.getPath());
                            file2 = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return file2;
    }

    /* renamed from: a */
    public static void m20899a(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivity(intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }

    /* renamed from: a */
    public static boolean m20897a(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* renamed from: b */
    public static Context m20895b(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? context.createDeviceProtectedStorageContext() : null;
    }

    /* renamed from: b */
    public static ColorStateList m20894b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    /* renamed from: c */
    public static int m20892c(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* renamed from: c */
    public static boolean m20893c(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? context.isDeviceProtectedStorage() : false;
    }
}
