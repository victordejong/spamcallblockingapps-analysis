package io.agora.rtc.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/Connectivity.class */
public class Connectivity {
    public static final int Network_2G = 3;
    public static final int Network_3G = 4;
    public static final int Network_4G = 5;
    public static final int Network_5G = 6;
    public static final int Network_DISCONNECTED = 0;
    public static final int Network_LAN = 1;
    public static final int Network_SubType_WIFI_2P4G = 100;
    public static final int Network_SubType_WIFI_5G = 101;
    public static final int Network_UNKNOWN = -1;
    public static final int Network_WIFI = 2;

    public static ArrayList<String> getDnsList() {
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            ArrayList<String> arrayList = new ArrayList<>();
            for (int i = 0; i < 4; i++) {
                String str = (String) method.invoke(null, new String[]{"net.dns1", "net.dns2", "net.dns3", "net.dns4"}[i]);
                if (str != null && !"".equals(str) && !arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (Exception e) {
            return null;
        }
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        if (context == null) {
            return null;
        }
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static int getNetworkType(Context context) {
        return getNetworkType(getNetworkInfo(context));
    }

    public static int getNetworkType(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnected()) {
            int type = networkInfo.getType();
            if (type == 1) {
                return 2;
            }
            if (type != 0) {
                return -1;
            }
            int subtype = networkInfo.getSubtype();
            if (subtype == 20) {
                return 6;
            }
            switch (subtype) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return 3;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return 4;
                case 13:
                    return 5;
                default:
                    return -1;
            }
        }
        return 0;
    }

    public static boolean isConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isConnectedFast(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && isConnectionFast(networkInfo.getType(), networkInfo.getSubtype());
    }

    public static boolean isConnectedMobile(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 0;
    }

    public static boolean isConnectedWifi(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        boolean z = true;
        if (networkInfo == null || !networkInfo.isConnected() || networkInfo.getType() != 1) {
            z = false;
        }
        return z;
    }

    public static boolean isConnectionFast(int i, int i2) {
        if (i == 1) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        switch (i2) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            case 4:
            case 7:
            case 11:
            default:
                return false;
        }
    }
}
