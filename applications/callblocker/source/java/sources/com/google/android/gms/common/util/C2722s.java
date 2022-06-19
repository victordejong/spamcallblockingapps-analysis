package com.google.android.gms.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.p132c.C2586c;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.common.util.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/s.class */
public class C2722s {

    /* renamed from: a */
    private static final int f7530a = Process.myUid();

    /* renamed from: b */
    private static final Method f7531b = m13823a();

    /* renamed from: c */
    private static final Method f7532c = m13816b();

    /* renamed from: d */
    private static final Method f7533d = m13814c();

    /* renamed from: e */
    private static final Method f7534e = m13813d();

    /* renamed from: f */
    private static final Method f7535f = m13812e();

    /* renamed from: g */
    private static final Method f7536g = m13811f();

    /* renamed from: h */
    private static final Method f7537h = m13810g();

    /* renamed from: a */
    private static WorkSource m13822a(int i, String str) {
        WorkSource workSource = new WorkSource();
        m13817a(workSource, i, str);
        return workSource;
    }

    /* renamed from: a */
    public static WorkSource m13820a(Context context, String str) {
        WorkSource workSource;
        if (context == null || context.getPackageManager() == null || str == null) {
            workSource = null;
        } else {
            try {
                ApplicationInfo m14198a = C2586c.m14193a(context).m14198a(str, 0);
                if (m14198a == null) {
                    String valueOf = String.valueOf(str);
                    Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
                    workSource = null;
                } else {
                    workSource = m13822a(m14198a.uid, str);
                }
            } catch (PackageManager.NameNotFoundException e) {
                String valueOf2 = String.valueOf(str);
                Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
                workSource = null;
            }
        }
        return workSource;
    }

    /* renamed from: a */
    private static String m13818a(WorkSource workSource, int i) {
        String str;
        if (f7535f != null) {
            try {
                str = (String) f7535f.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
            return str;
        }
        str = null;
        return str;
    }

    /* renamed from: a */
    private static Method m13823a() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
        }
        return method;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.List] */
    /* renamed from: a */
    public static List<String> m13819a(WorkSource workSource) {
        ArrayList arrayList;
        int i = 0;
        int m13815b = workSource == null ? 0 : m13815b(workSource);
        if (m13815b != 0) {
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                arrayList = arrayList2;
                if (i >= m13815b) {
                    break;
                }
                String m13818a = m13818a(workSource, i);
                if (!C2720q.m13826a(m13818a)) {
                    arrayList2.add(m13818a);
                }
                i++;
            }
        } else {
            arrayList = Collections.emptyList();
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m13817a(WorkSource workSource, int i, String str) {
        if (f7532c == null) {
            if (f7531b == null) {
                return;
            }
            try {
                f7531b.invoke(workSource, Integer.valueOf(i));
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        try {
            f7532c.invoke(workSource, Integer.valueOf(i), str2);
        } catch (Exception e2) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
        }
    }

    /* renamed from: a */
    public static boolean m13821a(Context context) {
        boolean z;
        if (context == null) {
            z = false;
        } else {
            z = false;
            if (context.getPackageManager() != null) {
                z = false;
                if (C2586c.m14193a(context).m14196a("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private static int m13815b(WorkSource workSource) {
        int intValue;
        if (f7533d != null) {
            try {
                intValue = ((Integer) f7533d.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
            return intValue;
        }
        intValue = 0;
        return intValue;
    }

    /* renamed from: b */
    private static Method m13816b() {
        Method method = null;
        if (C2716m.m13838e()) {
            try {
                method = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception e) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: c */
    private static Method m13814c() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
        }
        return method;
    }

    /* renamed from: d */
    private static Method m13813d() {
        Method method = null;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
        }
        return method;
    }

    /* renamed from: e */
    private static Method m13812e() {
        Method method = null;
        if (C2716m.m13838e()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: f */
    private static final Method m13811f() {
        Method method = null;
        if (C2716m.m13831l()) {
            try {
                method = WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e);
                method = null;
            }
        }
        return method;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: g */
    private static final Method m13810g() {
        Method method = null;
        if (C2716m.m13831l()) {
            try {
                method = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e) {
                Log.w("WorkSourceUtil", "Missing WorkChain class", e);
                method = null;
            }
        }
        return method;
    }
}
