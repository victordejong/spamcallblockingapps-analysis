package com.yanzhenjie.nohttp.tools;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.yanzhenjie.nohttp.Logger;
import com.yanzhenjie.nohttp.NoHttp;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/NetUtils.class */
public class NetUtils {
    private static ConnectivityManager sConnectivityManager;
    private static final Pattern IPV4_PATTERN = Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
    private static final Pattern IPV6_STD_PATTERN = Pattern.compile("^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$");
    private static final Pattern IPV6_HEX_COMPRESSED_PATTERN = Pattern.compile("^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$");

    /* renamed from: com.yanzhenjie.nohttp.tools.NetUtils$1 */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/NetUtils$1.class */
    public static /* synthetic */ class C94441 {
        static final /* synthetic */ int[] $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[NetType.values().length];
            $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType = iArr;
            try {
                iArr[NetType.Wifi.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[NetType.Wired.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[NetType.Mobile.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[NetType.Mobile2G.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[NetType.Mobile3G.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[NetType.Mobile4G.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/NetUtils$NetType.class */
    public enum NetType {
        Wifi,
        Wired,
        Mobile,
        Mobile2G,
        Mobile3G,
        Mobile4G
    }

    private static ConnectivityManager getConnectivityManager() {
        if (sConnectivityManager == null) {
            synchronized (NetUtils.class) {
                try {
                    if (sConnectivityManager == null) {
                        sConnectivityManager = (ConnectivityManager) NoHttp.getContext().getSystemService("connectivity");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sConnectivityManager;
    }

    public static String getLocalIPAddress() {
        Enumeration<NetworkInterface> enumeration;
        try {
            enumeration = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            Logger.m557w(e);
            enumeration = null;
        }
        if (enumeration != null) {
            while (enumeration.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = enumeration.nextElement().getInetAddresses();
                if (inetAddresses != null) {
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement = inetAddresses.nextElement();
                        if (!nextElement.isLoopbackAddress() && isIPv4Address(nextElement.getHostAddress())) {
                            return nextElement.getHostAddress();
                        }
                    }
                    continue;
                }
            }
            return "";
        }
        return "";
    }

    private static boolean isConnected(NetworkInfo networkInfo) {
        return networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected();
    }

    private static boolean isConnected(NetType netType, NetworkInfo networkInfo) {
        boolean z = false;
        if (networkInfo == null) {
            return false;
        }
        switch (C94441.$SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType[netType.ordinal()]) {
            case 1:
                if (!isConnected(networkInfo)) {
                    return false;
                }
                boolean z2 = false;
                if (networkInfo.getType() == 1) {
                    z2 = true;
                }
                return z2;
            case 2:
                if (!isConnected(networkInfo)) {
                    return false;
                }
                boolean z3 = false;
                if (Build.VERSION.SDK_INT >= 13) {
                    z3 = false;
                    if (networkInfo.getType() == 9) {
                        z3 = true;
                    }
                }
                return z3;
            case 3:
                if (!isConnected(networkInfo)) {
                    return false;
                }
                if (networkInfo.getType() == 0) {
                    z = true;
                }
                return z;
            case 4:
                if (isConnected(NetType.Mobile, networkInfo)) {
                    return isMobileSubType(NetType.Mobile2G, networkInfo);
                }
                return false;
            case 5:
                if (isConnected(NetType.Mobile, networkInfo)) {
                    return isMobileSubType(NetType.Mobile3G, networkInfo);
                }
                return false;
            case 6:
                if (isConnected(NetType.Mobile, networkInfo)) {
                    return isMobileSubType(NetType.Mobile4G, networkInfo);
                }
                return false;
            default:
                return false;
        }
    }

    public static boolean isGPRSOpen() {
        getConnectivityManager();
        try {
            Method method = sConnectivityManager.getClass().getMethod("getMobileDataEnabled", new Class[0]);
            method.setAccessible(true);
            return ((Boolean) method.invoke(sConnectivityManager, new Object[0])).booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean isIPv4Address(String str) {
        return IPV4_PATTERN.matcher(str).matches();
    }

    public static boolean isIPv6Address(String str) {
        return isIPv6StdAddress(str) || isIPv6HexCompressedAddress(str);
    }

    public static boolean isIPv6HexCompressedAddress(String str) {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= str.length()) {
                break;
            }
            int i4 = i;
            if (str.charAt(i2) == ':') {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        boolean z = false;
        if (i <= 7) {
            z = false;
            if (IPV6_HEX_COMPRESSED_PATTERN.matcher(str).matches()) {
                z = true;
            }
        }
        return z;
    }

    public static boolean isIPv6StdAddress(String str) {
        return IPV6_STD_PATTERN.matcher(str).matches();
    }

    public static boolean isMobile2GConnected() {
        return isNetworkAvailable(NetType.Mobile2G);
    }

    public static boolean isMobile3GConnected() {
        return isNetworkAvailable(NetType.Mobile3G);
    }

    public static boolean isMobile4GConnected() {
        return isNetworkAvailable(NetType.Mobile4G);
    }

    public static boolean isMobileConnected() {
        return isNetworkAvailable(NetType.Mobile);
    }

    private static boolean isMobileSubType(NetType netType, NetworkInfo networkInfo) {
        boolean z = true;
        switch (networkInfo.getType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return netType == NetType.Mobile2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return netType == NetType.Mobile3G;
            case 13:
            case 18:
                if (netType != NetType.Mobile4G) {
                    z = false;
                }
                return z;
            default:
                String subtypeName = networkInfo.getSubtypeName();
                if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                    return false;
                }
                return netType == NetType.Mobile3G;
        }
    }

    public static boolean isNetworkAvailable() {
        return isWifiConnected() || isWiredConnected() || isMobileConnected();
    }

    public static boolean isNetworkAvailable(NetType netType) {
        getConnectivityManager();
        return isConnected(netType, sConnectivityManager.getActiveNetworkInfo());
    }

    public static boolean isWifiConnected() {
        return isNetworkAvailable(NetType.Wifi);
    }

    public static boolean isWiredConnected() {
        return isNetworkAvailable(NetType.Wired);
    }

    public static void openSetting() {
        Intent intent = new Intent("android.settings.WIRELESS_SETTINGS");
        intent.addFlags(268435456);
        NoHttp.getContext().startActivity(intent);
    }

    public static void setGPRSEnable(boolean z) {
        getConnectivityManager();
        try {
            Method method = sConnectivityManager.getClass().getMethod("setMobileDataEnabled", Boolean.TYPE);
            method.setAccessible(true);
            method.invoke(sConnectivityManager, Boolean.valueOf(z));
        } catch (Throwable th) {
        }
    }
}
