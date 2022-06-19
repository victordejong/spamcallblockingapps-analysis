package com.telguarder.helpers.backend;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.telguarder.helpers.log.Logger;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/NetworkHelper.class */
public class NetworkHelper {
    private static Integer getCurrentActiveTransport(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            if (Build.VERSION.SDK_INT < 23) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    return null;
                }
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    return 0;
                }
                return type != 1 ? null : 1;
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(12) || !networkCapabilities.hasCapability(16)) {
                return null;
            }
            if (networkCapabilities.hasTransport(1)) {
                return 1;
            }
            if (networkCapabilities.hasTransport(0)) {
                return 0;
            }
            return networkCapabilities.hasTransport(4) ? 4 : null;
        }
        return null;
    }

    public static String getNetworkClass(Context context) {
        Integer currentActiveTransport = getCurrentActiveTransport(context);
        if (currentActiveTransport != null) {
            if (currentActiveTransport.intValue() == 1) {
                return "WIFI";
            }
            if (currentActiveTransport.intValue() == 4) {
                return "VPN";
            }
            if (currentActiveTransport.intValue() != 0) {
                return "?";
            }
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                    return "2G-GPRS";
                case 2:
                    return "2G-EDGE";
                case 3:
                    return "3G-UMTS";
                case 4:
                    return "2G-CDMA";
                case 5:
                    return "3G-EVDO_0";
                case 6:
                    return "3G-EVDO_A";
                case 7:
                    return "2G-1xRTT";
                case 8:
                    return "3G-HSDPA";
                case 9:
                    return "3G-HSUPA";
                case 10:
                    return "3G-HSPA";
                case 11:
                    return "2G-iDen";
                case 12:
                    return "3G-EVDO_B";
                case 13:
                    return "4G-LTE";
                case 14:
                    return "3G-eHRPD";
                case 15:
                    return "3G-HSPA+";
                case 16:
                    return "2G-GSM";
                case 17:
                    return "3G-TD_SCDMA";
                case 18:
                    return "4G-IWLAN";
                case 19:
                    return "4G-LTE_CA";
                case 20:
                    return "5G_NR";
                default:
                    return "?";
            }
        }
        return "-";
    }

    public static boolean isNetworkAvailable(Context context) {
        return getCurrentActiveTransport(context) != null;
    }

    public static void registerNetworkCallback(Context context, ConnectivityManager.NetworkCallback networkCallback) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), networkCallback);
            } catch (Exception e) {
                Logger.error("registerNetworkCallback error: " + e.getMessage());
            }
        }
    }

    public static void unregisterNetworkCallback(Context context, ConnectivityManager.NetworkCallback networkCallback) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                connectivityManager.unregisterNetworkCallback(networkCallback);
            } catch (Exception e) {
                Logger.error("unregisterNetworkCallback error: " + e.getMessage());
            }
        }
    }
}
