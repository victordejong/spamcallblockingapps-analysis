package com.pgl.sys.ces.p480a;

import android.app.Application;
import android.content.Context;
import android.os.Environment;
/* renamed from: com.pgl.sys.ces.a.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/a.class */
public final class C17065a {
    /* renamed from: a */
    public static Application m5941a() {
        Application application = null;
        try {
            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        } catch (Throwable th) {
        }
        return application;
    }

    /* renamed from: a */
    public static String m5940a(Context context) {
        String str;
        try {
            str = context.getPackageName();
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: b */
    public static int m5938b(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Throwable th) {
        }
        return i;
    }

    /* renamed from: b */
    public static String m5939b() {
        String str;
        try {
            str = Environment.getExternalStorageDirectory().getAbsolutePath();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: c */
    public static String m5937c() {
        String str;
        try {
            str = Environment.getDataDirectory().getPath();
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: c */
    public static String m5936c(Context context) {
        String str;
        try {
            str = context.getFilesDir().getAbsolutePath();
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }

    /* renamed from: d */
    public static String m5935d(Context context) {
        String str;
        try {
            str = context.getApplicationInfo().sourceDir;
        } catch (Throwable th) {
            str = "";
        }
        return str == null ? "" : str.trim();
    }
}
