package com.pgl.sys.ces.a;

import android.app.Application;
import android.content.Context;
import android.os.Environment;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/a.class */
public final class a {
    public static Application a() {
        Application application = null;
        try {
            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
        }
        return application;
    }

    public static String a(Context context) {
        String str;
        try {
            str = context.getPackageName();
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }

    public static int b(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Throwable th) {
        }
        return i;
    }

    public static String b() {
        String str;
        try {
            str = Environment.getExternalStorageDirectory().getAbsolutePath();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String c() {
        String str;
        try {
            str = Environment.getDataDirectory().getPath();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    public static String c(Context context) {
        String str;
        try {
            str = context.getFilesDir().getAbsolutePath();
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }

    public static String d(Context context) {
        String str;
        try {
            str = context.getApplicationInfo().sourceDir;
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }
}
