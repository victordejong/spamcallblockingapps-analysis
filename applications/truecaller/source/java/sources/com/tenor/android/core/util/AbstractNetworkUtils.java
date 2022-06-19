package com.tenor.android.core.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractNetworkUtils.class */
public abstract class AbstractNetworkUtils {
    private static int sBatchSize = -1;

    public static int getBatchSize(Context context) {
        int i = sBatchSize;
        if (i <= 0) {
            i = updateBatchSize(context);
        }
        return i;
    }

    public static String getIpAddress() {
        String str;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            loop0: while (true) {
                str = "";
                if (!networkInterfaces.hasMoreElements()) {
                    break;
                }
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        String hostAddress = nextElement.getHostAddress();
                        if (!TextUtils.isEmpty(hostAddress)) {
                            str = parseIpAddress(hostAddress);
                            break loop0;
                        }
                    }
                }
            }
        } catch (SocketException e) {
            str = "";
        }
        return str;
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        NetworkInfo networkInfo;
        if (context == null) {
            return null;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            networkInfo = null;
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (SecurityException e) {
            networkInfo = null;
        }
        return networkInfo;
    }

    public static String getNetworkSubtypeName(Context context) {
        if (context == null) {
            return "";
        }
        NetworkInfo networkInfo = getNetworkInfo(context);
        return (networkInfo == null || !networkInfo.isConnected()) ? "UNKNOWN" : networkInfo.getSubtypeName();
    }

    public static String getNetworkTypeName(Context context) {
        if (context == null) {
            return "";
        }
        NetworkInfo networkInfo = getNetworkInfo(context);
        return (networkInfo == null || !networkInfo.isConnected()) ? "UNKNOWN" : networkInfo.getTypeName();
    }

    private static String getNetworkTypeNameCompat(int i, int i2) {
        String str;
        String str2 = "UNKNOWN";
        if (i != 17) {
            switch (i) {
                case 0:
                    str = "MOBILE";
                    break;
                case 1:
                    str = "WIFI";
                    break;
                case 2:
                    str = "MOBILE_MMS";
                    break;
                case 3:
                    str = "MOBILE_SUPL";
                    break;
                case 4:
                    str = "MOBILE_DUN";
                    break;
                case 5:
                    str = "MOBILE_HIPRI";
                    break;
                case 6:
                    str = "WIMAX";
                    break;
                case 7:
                    str = "BLUETOOTH";
                    break;
                case 8:
                    str = "DUMMY";
                    break;
                case 9:
                    str = "ETHERNET";
                    break;
                default:
                    str = "UNKNOWN";
                    break;
            }
        } else {
            str = "VPN";
        }
        switch (i2) {
            case 1:
                str2 = "GPRS";
                break;
            case 2:
                str2 = "EDGE";
                break;
            case 3:
                str2 = "UMTS";
                break;
            case 4:
                str2 = "CDMA";
                break;
            case 5:
                str2 = "EVDO_0";
                break;
            case 6:
                str2 = "EVDO_A";
                break;
            case 7:
                str2 = "1xRTT";
                break;
            case 8:
                str2 = "HSDPA";
                break;
            case 9:
                str2 = "HSUPA";
                break;
            case 10:
                str2 = "HSPA";
                break;
            case 11:
                str2 = "IDEN";
                break;
            case 12:
                str2 = "EVDO_B";
                break;
            case 13:
                str2 = "LTE";
                break;
            case 14:
                str2 = "EHRPD";
                break;
            case 15:
                str2 = "HSPAP";
                break;
            case 16:
                str2 = "GSM";
                break;
            case 17:
                str2 = "TD_SCDMA";
                break;
            case 18:
                str2 = "IWLAN";
                break;
        }
        return C22128a.m8725C2(str, StringConstant.DASH, str2);
    }

    public static String getNetworkTypeNameCompat(Context context) {
        if (context == null) {
            return "";
        }
        NetworkInfo networkInfo = getNetworkInfo(context);
        String str = "";
        if (networkInfo != null) {
            str = "";
            if (networkInfo.isConnected()) {
                str = getNetworkTypeNameCompat(networkInfo.getType(), networkInfo.getSubtype());
            }
        }
        return str;
    }

    public static boolean isCellularConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 0;
    }

    public static boolean isFastNetworkConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && isNetworkConnected(networkInfo.getType(), networkInfo.getSubtype());
    }

    private static boolean isNetworkConnected(int i, int i2) {
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

    public static boolean isNetworkConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isWifiConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        boolean z = true;
        if (networkInfo == null || !networkInfo.isConnected() || networkInfo.getType() != 1) {
            z = false;
        }
        return z;
    }

    public static String parseIpAddress(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.indexOf(58) < 0) {
                return str;
            }
            int indexOf = str.indexOf(37);
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
            return str.toUpperCase();
        }
        throw new IllegalArgumentException(C22128a.m8725C2("input: ", str, " is neither IPv4, nor IPv6"));
    }

    public static int updateBatchSize(Context context) {
        if (context == null) {
            sBatchSize = 6;
            return 6;
        }
        NetworkInfo networkInfo = getNetworkInfo(context);
        if (networkInfo == null || !networkInfo.isConnected()) {
            sBatchSize = 6;
            return 6;
        } else if (networkInfo.getType() == 1) {
            sBatchSize = 24;
            return 24;
        } else {
            if (networkInfo.getType() == 0) {
                switch (networkInfo.getSubtype()) {
                    case 3:
                    case 5:
                    case 6:
                    case 10:
                        sBatchSize = 12;
                        break;
                    case 4:
                    case 7:
                    case 11:
                    default:
                        sBatchSize = 6;
                        break;
                    case 8:
                    case 9:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        sBatchSize = 24;
                        break;
                }
            } else {
                sBatchSize = 6;
            }
            return sBatchSize;
        }
    }

    public static void updateBatchSize(float f) {
        int i = (int) (f * 8.0f);
        sBatchSize = i > 1000 ? 24 : i > 400 ? 12 : 6;
    }
}
