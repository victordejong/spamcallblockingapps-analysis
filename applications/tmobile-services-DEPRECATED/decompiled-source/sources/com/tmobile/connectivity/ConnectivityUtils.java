package com.tmobile.connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tmobile.tmoid.helperlib.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/tmobile/connectivity/ConnectivityUtils.class */
public final class ConnectivityUtils {

    /* renamed from: a */
    private static final String f12568a = "TMO-Agent." + ConnectivityUtils.class.getSimpleName();

    /* renamed from: a */
    private static boolean m7675a(TelephonyManager telephonyManager) {
        return telephonyManager.getDataState() == 0;
    }

    /* renamed from: b */
    public static Runnable m7674b(Context context) {
        final Context applicationContext = context.getApplicationContext();
        return new Runnable() { // from class: com.tmobile.connectivity.a
            @Override // java.lang.Runnable
            public final void run() {
                ConnectivityUtils.m7662n(applicationContext);
            }
        };
    }

    /* renamed from: c */
    private static void m7673c(WifiManager wifiManager) {
        m7665k(wifiManager, false, "Disabling");
    }

    /* renamed from: d */
    private static void m7672d(WifiManager wifiManager) {
        m7665k(wifiManager, true, "Enabling");
    }

    /* renamed from: e */
    public static boolean m7671e(Context context) {
        boolean z;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            z = m7670f(context.getSystemService("connectivity"), "getMobileDataEnabled");
        } else if (i >= 26) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            z = telephonyManager != null && telephonyManager.isDataEnabled();
        } else {
            z = m7670f(context.getSystemService("phone"), "getDataEnabled");
        }
        return !z;
    }

    /* renamed from: f */
    private static boolean m7670f(@Nullable Object obj, String str) {
        if (obj == null) {
            return false;
        }
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException e) {
            String str2 = f12568a;
            Log.m4651e(str2, "Can't access " + m7668h(obj, str), e);
            return false;
        } catch (NoSuchMethodException e2) {
            String str3 = f12568a;
            Log.m4651e(str3, "There is no " + m7668h(obj, str), e2);
            return false;
        } catch (InvocationTargetException e3) {
            String str4 = f12568a;
            Log.m4651e(str4, "Can't call " + m7668h(obj, str), e3);
            return false;
        }
    }

    @NonNull
    /* renamed from: h */
    private static String m7668h(Object obj, String str) {
        return "method " + obj.getClass().getSimpleName() + "#" + str;
    }

    /* renamed from: i */
    private static int m7667i(ConnectivityManager connectivityManager, String str) {
        try {
            return ((Integer) ConnectivityManager.class.getMethod(str, Integer.TYPE, String.class).invoke(connectivityManager, 0, "enableMMS")).intValue();
        } catch (IllegalAccessException e) {
            String str2 = f12568a;
            Log.m4651e(str2, "Can't access " + m7668h(connectivityManager, str), e);
            return -1;
        } catch (NoSuchMethodException e2) {
            String str3 = f12568a;
            Log.m4651e(str3, "There is no " + m7668h(connectivityManager, str), e2);
            return -1;
        } catch (InvocationTargetException e3) {
            String str4 = f12568a;
            Log.m4651e(str4, "Can't call " + m7668h(connectivityManager, str), e3);
            return -1;
        }
    }

    /* renamed from: j */
    public static boolean m7666j(ConnectivityManager connectivityManager, int i) {
        try {
            return ((Boolean) ConnectivityManager.class.getMethod("requestRouteToHost", Integer.TYPE, Integer.TYPE).invoke(connectivityManager, 2, Integer.valueOf(i))).booleanValue();
        } catch (IllegalAccessException e) {
            String str = f12568a;
            Log.m4651e(str, "Can't access " + m7668h(connectivityManager, "requestRouteToHost"), e);
            return false;
        } catch (NoSuchMethodException e2) {
            String str2 = f12568a;
            Log.m4651e(str2, "There is no " + m7668h(connectivityManager, "requestRouteToHost"), e2);
            return false;
        } catch (InvocationTargetException e3) {
            String str3 = f12568a;
            Log.m4651e(str3, "Can't call " + m7668h(connectivityManager, "requestRouteToHost"), e3);
            return false;
        }
    }

    /* renamed from: k */
    private static void m7665k(WifiManager wifiManager, boolean z, String str) {
        boolean wifiEnabled = wifiManager.setWifiEnabled(z);
        StringBuilder sb = new StringBuilder(str);
        sb.append(" WiFi request is ");
        if (!wifiEnabled) {
            sb.append("not ");
        }
        sb.append("handled");
        Log.m4654d(f12568a, sb.toString());
    }

    /* renamed from: l */
    public static int m7664l(ConnectivityManager connectivityManager) {
        return m7667i(connectivityManager, "startUsingNetworkFeature");
    }

    /* renamed from: m */
    public static int m7663m(ConnectivityManager connectivityManager) {
        return m7667i(connectivityManager, "stopUsingNetworkFeature");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static void m7662n(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (telephonyManager != null && wifiManager != null && m7675a(telephonyManager) && wifiManager.isWifiEnabled()) {
            Log.m4654d(f12568a, "To request network, necessary is TelephonyManager.DATA_CONNECTED data state but is TelephonyManager.DATA_DISCONNECTED");
            m7673c(wifiManager);
            m7672d(wifiManager);
        }
    }
}
