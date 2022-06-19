package com.huawei.hms.push;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.s */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/s.class */
public abstract class AbstractC2441s {

    /* renamed from: a */
    public static final Object f7768a = new Object();

    /* renamed from: b */
    public static int f7769b = -1;

    /* renamed from: a */
    public static boolean m37250a() {
        try {
            Class<?> cls = Class.forName("huawei.cust.HwCfgFilePolicy");
            int intValue = ((Integer) cls.getDeclaredField("CUST_TYPE_CONFIG").get(cls)).intValue();
            File file = (File) cls.getDeclaredMethod("getCfgFile", String.class, Integer.TYPE).invoke(cls, "jars/hwpush.jar", Integer.valueOf(intValue));
            if (file == null || !file.exists()) {
                return false;
            }
            HMSLog.m37198d("CommFun", "get push cust File path success.");
            return true;
        } catch (ClassNotFoundException e) {
            HMSLog.m37195e("CommFun", "HwCfgFilePolicy ClassNotFoundException");
            return false;
        } catch (IllegalAccessException e2) {
            HMSLog.m37195e("CommFun", "check cust exist push IllegalAccessException.");
            return false;
        } catch (IllegalArgumentException e3) {
            HMSLog.m37195e("CommFun", "check cust exist push IllegalArgumentException.");
            return false;
        } catch (NoSuchFieldException e4) {
            HMSLog.m37195e("CommFun", "check cust exist push NoSuchFieldException.");
            return false;
        } catch (NoSuchMethodException e5) {
            HMSLog.m37195e("CommFun", "check cust exist push NoSuchMethodException.");
            return false;
        } catch (SecurityException e6) {
            HMSLog.m37195e("CommFun", "check cust exist push SecurityException.");
            return false;
        } catch (InvocationTargetException e7) {
            HMSLog.m37195e("CommFun", "check cust exist push InvocationTargetException.");
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m37249a(Context context) {
        StringBuilder m8728C = C22128a.m8728C("existFrameworkPush:");
        m8728C.append(f7769b);
        HMSLog.m37198d("CommFun", m8728C.toString());
        boolean z = false;
        try {
            File file = new File("/system/framework/hwpush.jar");
            if (!m37250a()) {
                if (file.isFile()) {
                    HMSLog.m37198d("CommFun", "push jarFile is exist");
                }
                return z;
            }
            HMSLog.m37198d("CommFun", "push jarFile is exist");
            z = true;
            return z;
        } catch (Exception e) {
            StringBuilder m8728C2 = C22128a.m8728C("get Apk version faild ,Exception e= ");
            m8728C2.append(e.toString());
            HMSLog.m37195e("CommFun", m8728C2.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m37248a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        return jSONObject == null || (TextUtils.isEmpty(str) && jSONObject2 == null);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: b */
    public static long m37246b(Context context) {
        char c;
        try {
            c = context.getPackageManager().getPackageInfo("com.huawei.android.pushagent", 16384).versionCode;
        } catch (Exception e) {
            HMSLog.m37195e("CommFun", "get nc versionCode error");
            c = 65535;
        }
        return c;
    }

    /* renamed from: b */
    public static boolean m37247b() {
        return HwBuildEx.VERSION.EMUI_SDK_INT >= 21;
    }

    /* renamed from: c */
    public static String m37244c(Context context) {
        return AGConnectServicesConfig.fromContext(context).getString("client/project_id");
    }

    /* renamed from: c */
    public static boolean m37245c() {
        return HwBuildEx.VERSION.EMUI_SDK_INT < 19;
    }

    /* renamed from: d */
    public static boolean m37243d(Context context) {
        StringBuilder m8728C = C22128a.m8728C("existFrameworkPush:");
        m8728C.append(f7769b);
        HMSLog.m37198d("CommFun", m8728C.toString());
        synchronized (f7768a) {
            int i = f7769b;
            boolean z = false;
            if (-1 != i) {
                if (1 == i) {
                    z = true;
                }
                return z;
            }
            if (m37249a(context)) {
                f7769b = 1;
            } else {
                f7769b = 0;
            }
            boolean z2 = false;
            if (1 == f7769b) {
                z2 = true;
            }
            return z2;
        }
    }
}
