package com.callerid.block.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
/* renamed from: com.callerid.block.util.d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/d.class */
public class C1170d {
    /* renamed from: a */
    private static int m9901a(Context context) {
        String str;
        NetworkInfo activeNetworkInfo;
        int i = -1;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            str = null;
            activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (activeNetworkInfo == null) {
            return -1;
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            Log.e("networkInfo.getExtraInf", "networkInfo.getExtraInfo()is" + activeNetworkInfo.getExtraInfo());
            String extraInfo = activeNetworkInfo != null ? activeNetworkInfo.getExtraInfo() : null;
            if (extraInfo != null) {
                str = extraInfo.toLowerCase();
            }
            if (str != null) {
                if (str.equals("cmnet")) {
                    i = 3;
                }
            }
            i = 2;
        } else if (type == 1) {
            i = 1;
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m9900b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && networkInfo.isConnected()) {
                C1186k.m9816c().m9812g("is_connected_mobile");
                return true;
            } else if (networkInfo2 == null || !networkInfo2.isConnected()) {
                return false;
            } else {
                C1186k.m9816c().m9812g("is_connected_wifi");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m9899c(Context context) {
        int a = m9901a(context);
        return (a == -1 || a == 1) ? false : true;
    }

    /* renamed from: d */
    public static boolean m9898d(Context context) {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null) {
                return false;
            }
            return networkInfo.isConnected();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
