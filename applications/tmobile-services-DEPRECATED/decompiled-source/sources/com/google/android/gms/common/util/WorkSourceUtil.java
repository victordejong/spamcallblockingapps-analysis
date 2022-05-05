package com.google.android.gms.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/WorkSourceUtil.class */
public class WorkSourceUtil {

    /* renamed from: a */
    private static final Method f7649a = m14295l();

    /* renamed from: b */
    private static final Method f7650b = m14294m();

    /* renamed from: c */
    private static final Method f7651c = m14293n();

    /* renamed from: d */
    private static final Method f7652d = m14298i();

    static {
        Process.myUid();
        m14299h();
        m14297j();
        m14296k();
    }

    private WorkSourceUtil() {
    }

    @Nullable
    @KeepForSdk
    /* renamed from: a */
    public static WorkSource m14306a(Context context, @Nullable String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo c = Wrappers.m14278a(context).m14285c(str, 0);
            if (c != null) {
                return m14302e(c.uid, str);
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return null;
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public static List<String> m14305b(@Nullable WorkSource workSource) {
        int d = workSource == null ? 0 : m14303d(workSource);
        if (d == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < d; i++) {
            String f = m14301f(workSource, i);
            if (!Strings.m14309a(f)) {
                arrayList.add(f);
            }
        }
        return arrayList;
    }

    @KeepForSdk
    /* renamed from: c */
    public static boolean m14304c(Context context) {
        return (context == null || context.getPackageManager() == null || Wrappers.m14278a(context).m14286b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    /* renamed from: d */
    private static int m14303d(WorkSource workSource) {
        Method method = f7651c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(workSource, new Object[0])).intValue();
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return 0;
        }
    }

    /* renamed from: e */
    private static WorkSource m14302e(int i, String str) {
        WorkSource workSource = new WorkSource();
        m14300g(workSource, i, str);
        return workSource;
    }

    @Nullable
    /* renamed from: f */
    private static String m14301f(WorkSource workSource, int i) {
        Method method = f7652d;
        if (method == null) {
            return null;
        }
        try {
            return (String) method.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            return null;
        }
    }

    /* renamed from: g */
    private static void m14300g(WorkSource workSource, int i, @Nullable String str) {
        if (f7650b != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                f7650b.invoke(workSource, Integer.valueOf(i), str2);
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        } else {
            Method method = f7649a;
            if (method != null) {
                try {
                    method.invoke(workSource, Integer.valueOf(i));
                } catch (Exception e2) {
                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                }
            }
        }
    }

    /* renamed from: h */
    private static Method m14299h() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: i */
    private static Method m14298i() {
        Method method;
        if (PlatformVersion.m14319d()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: j */
    private static final Method m14297j() {
        Method method;
        if (PlatformVersion.m14313j()) {
            try {
                method = WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: k */
    private static final Method m14296k() {
        Method method;
        if (PlatformVersion.m14313j()) {
            try {
                method = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e);
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: l */
    private static Method m14295l() {
        Method method;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: m */
    private static Method m14294m() {
        Method method;
        if (PlatformVersion.m14319d()) {
            try {
                method = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: n */
    private static Method m14293n() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }
}
