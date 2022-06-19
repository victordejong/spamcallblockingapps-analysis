package com.allinone.callerid.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
/* renamed from: com.allinone.callerid.util.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/e.class */
public class C3725e {
    /* renamed from: a */
    public static int m24418a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        int i = -1;
        if (activeNetworkInfo == null) {
            return -1;
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            Log.e("networkInfo.getExtraInf", "networkInfo.getExtraInfo()is" + activeNetworkInfo.getExtraInfo());
            String extraInfo = activeNetworkInfo.getExtraInfo();
            String str = null;
            if (extraInfo != null) {
                str = extraInfo.toLowerCase();
            }
            i = (str == null || !str.equals("cmnet")) ? 2 : 3;
        } else if (type == 1) {
            i = 1;
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m24417b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("TestNet", "当前为移动连接");
            }
            C3810q.m24071b().m24070c("is_connected_mobile");
            return true;
        } else if (networkInfo2 == null || !networkInfo2.isConnected()) {
            return false;
        } else {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("TestNet", "当前为WIFI连接");
            }
            C3810q.m24071b().m24070c("is_connected_wifi");
            return true;
        }
    }

    /* renamed from: c */
    public static boolean m24416c(Context context) {
        int m24418a = m24418a(context);
        return (m24418a == -1 || m24418a == 1) ? false : true;
    }

    /* renamed from: d */
    public static boolean m24415d(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null || !networkInfo.isConnected()) ? false : true;
    }
}
