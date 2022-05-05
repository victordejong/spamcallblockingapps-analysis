package com.google.android.gms.common.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f3940a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f3941b = b();
    private static final Method c = c();
    private static final Method d = d();
    private static final Method e = e();

    private static WorkSource a(int i, String str) {
        WorkSource workSource = new WorkSource();
        if (f3941b != null) {
            String str2 = str;
            if (str == null) {
                str2 = BuildConfig.FLAVOR;
            }
            try {
                f3941b.invoke(workSource, Integer.valueOf(i), str2);
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        } else if (f3940a != null) {
            try {
                f3940a.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e3) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e3);
            }
        }
        return workSource;
    }

    public static WorkSource a(Context context, String str) {
        WorkSource workSource;
        if (context == null || context.getPackageManager() == null) {
            workSource = null;
        } else {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    String valueOf = String.valueOf(str);
                    Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
                    workSource = null;
                } else {
                    workSource = a(applicationInfo.uid, str);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                String valueOf2 = String.valueOf(str);
                Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
                workSource = null;
            }
        }
        return workSource;
    }

    private static String a(WorkSource workSource, int i) {
        String str;
        if (e != null) {
            try {
                str = (String) e.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
            return str;
        }
        str = null;
        return str;
    }

    private static Method a() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE);
        } catch (Exception e2) {
        }
        return method;
    }

    public static List<String> a(WorkSource workSource) {
        List<String> list;
        int i = 0;
        int b2 = workSource == null ? 0 : b(workSource);
        if (b2 != 0) {
            ArrayList arrayList = new ArrayList();
            while (true) {
                list = arrayList;
                if (i >= b2) {
                    break;
                }
                String a2 = a(workSource, i);
                if (!m.a(a2)) {
                    arrayList.add(a2);
                }
                i++;
            }
        } else {
            list = Collections.EMPTY_LIST;
        }
        return list;
    }

    public static boolean a(Context context) {
        boolean z;
        if (context == null) {
            z = false;
        } else {
            PackageManager packageManager = context.getPackageManager();
            z = false;
            if (packageManager != null) {
                z = false;
                if (packageManager.checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    private static int b(WorkSource workSource) {
        int intValue;
        if (c != null) {
            try {
                intValue = ((Integer) c.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
            return intValue;
        }
        intValue = 0;
        return intValue;
    }

    private static Method b() {
        Method method = null;
        if (k.a(18)) {
            try {
                method = WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE, String.class);
            } catch (Exception e2) {
                method = null;
            }
        }
        return method;
    }

    private static Method c() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e2) {
        }
        return method;
    }

    private static Method d() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e2) {
        }
        return method;
    }

    private static Method e() {
        Method method = null;
        if (k.a(18)) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e2) {
                method = null;
            }
        }
        return method;
    }
}
