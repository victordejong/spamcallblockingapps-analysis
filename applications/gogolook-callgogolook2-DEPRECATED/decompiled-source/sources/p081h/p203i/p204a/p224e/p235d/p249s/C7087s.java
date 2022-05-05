package p081h.p203i.p204a.p224e.p235d.p249s;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.s.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/s.class */
public class C7087s {

    /* renamed from: a */
    public static final Method f17193a = m21104d();

    /* renamed from: b */
    public static final Method f17194b = m21103e();

    /* renamed from: c */
    public static final Method f17195c = m21102f();

    /* renamed from: d */
    public static final Method f17196d = m21114a();

    static {
        Process.myUid();
        m21101g();
        m21107b();
        m21105c();
    }

    /* renamed from: a */
    public static WorkSource m21113a(int i, String str) {
        WorkSource workSource = new WorkSource();
        m21108a(workSource, i, str);
        return workSource;
    }

    @Nullable
    /* renamed from: a */
    public static WorkSource m21111a(Context context, @Nullable String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo a = C7097c.m21085b(context).m21091a(str, 0);
            if (a != null) {
                return m21113a(a.uid, str);
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

    @Nullable
    /* renamed from: a */
    public static String m21109a(WorkSource workSource, int i) {
        Method method = f17196d;
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

    /* renamed from: a */
    public static Method m21114a() {
        Method method;
        if (C7083o.m21127e()) {
            try {
                method = WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: a */
    public static List<String> m21110a(@Nullable WorkSource workSource) {
        int b = workSource == null ? 0 : m21106b(workSource);
        if (b == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            String a = m21109a(workSource, i);
            if (!C7085q.m21117a(a)) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m21108a(WorkSource workSource, int i, @Nullable String str) {
        if (f17194b != null) {
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            try {
                f17194b.invoke(workSource, Integer.valueOf(i), str2);
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        } else {
            Method method = f17193a;
            if (method != null) {
                try {
                    method.invoke(workSource, Integer.valueOf(i));
                } catch (Exception e2) {
                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m21112a(Context context) {
        return (context == null || context.getPackageManager() == null || C7097c.m21085b(context).m21089a("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    /* renamed from: b */
    public static int m21106b(WorkSource workSource) {
        Method method = f17195c;
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

    /* renamed from: b */
    public static final Method m21107b() {
        Method method;
        if (C7083o.m21121k()) {
            try {
                method = WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: c */
    public static final Method m21105c() {
        Method method;
        if (C7083o.m21121k()) {
            try {
                method = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: d */
    public static Method m21104d() {
        Method method;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: e */
    public static Method m21103e() {
        Method method;
        if (C7083o.m21127e()) {
            try {
                method = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception e) {
            }
            return method;
        }
        method = null;
        return method;
    }

    /* renamed from: f */
    public static Method m21102f() {
        Method method;
        try {
            method = WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }

    /* renamed from: g */
    public static Method m21101g() {
        Method method;
        try {
            method = WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        return method;
    }
}
