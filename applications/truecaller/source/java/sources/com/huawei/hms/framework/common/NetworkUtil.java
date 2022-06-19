package com.huawei.hms.framework.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.UserManager;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthNr;
import android.telephony.CellSignalStrengthTdscdma;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.HwTelephonyManager;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.huawei.android.os.BuildEx;
import com.huawei.android.telephony.ServiceStateEx;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/NetworkUtil.class */
public class NetworkUtil {
    private static final int INVALID_RSSI = -127;
    private static final String STR_NSA = "5G_NSA";
    private static final String STR_SA = "5G_SA";
    private static final String TAG = "NetworkUtil";
    private static final int TYPE_WIFI_P2P = 13;
    public static final int UNAVAILABLE = Integer.MAX_VALUE;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/NetworkUtil$NetType.class */
    public static final class NetType {
        public static final int TYPE_2G = 2;
        public static final int TYPE_3G = 3;
        public static final int TYPE_4G = 4;
        public static final int TYPE_4G_NSA = 7;
        public static final int TYPE_5G = 5;
        public static final int TYPE_5G_SA = 8;
        public static final int TYPE_MOBILE = 6;
        public static final int TYPE_NO_NETWORK = -1;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_WIFI = 1;
    }

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/NetworkUtil$SignalType.class */
    public static final class SignalType {
        public static final String LTE_CQI = "lteCqi";
        public static final String LTE_DBM = "lteDbm";
        public static final String LTE_RSRP = "lteRsrp";
        public static final String LTE_RSRQ = "lteRsrq";
        public static final String LTE_RSSI = "lteRssi";
        public static final String LTE_RSSNR = "lteRssnr";
        public static final String NR_CSIRSRP = "nrCSIRsrp";
        public static final String NR_CSIRSRQ = "nrCSIRsrq";
        public static final String NR_CSISINR = "nrCSISinr";
        public static final String NR_DBM = "nrDbm";
        public static final String NR_SSRSRP = "nrSSRsrp";
        public static final String NR_SSRSRQ = "nrSSRsrq";
        public static final String NR_SSSINR = "nrSSSinr";
    }

    public static String getDnsServerIps(Context context) {
        return Arrays.toString(getDnsServerIpsFromConnectionManager(context));
    }

    private static String[] getDnsServerIpsFromConnectionManager(Context context) {
        ConnectivityManager connectivityManager;
        Network[] allNetworks;
        LinkProperties linkProperties;
        LinkedList linkedList = new LinkedList();
        if (context != null && (connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, "connectivity")) != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    for (Network network : connectivityManager.getAllNetworks()) {
                        if (network != null) {
                            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                            if (networkInfo != null && networkInfo.getType() == activeNetworkInfo.getType() && (linkProperties = connectivityManager.getLinkProperties(network)) != null) {
                                for (InetAddress inetAddress : linkProperties.getDnsServers()) {
                                    linkedList.add(inetAddress.getHostAddress());
                                }
                            }
                        }
                    }
                }
            } catch (SecurityException e) {
                String str = TAG;
                StringBuilder m8728C = C22128a.m8728C("getActiveNetworkInfo failed, exception:");
                m8728C.append(e.getClass().getSimpleName());
                Logger.m38044i(str, m8728C.toString());
            } catch (RuntimeException e2) {
                String str2 = TAG;
                StringBuilder m8728C2 = C22128a.m8728C("getActiveNetworkInfo failed, exception:");
                m8728C2.append(e2.getClass().getSimpleName());
                Logger.m38044i(str2, m8728C2.toString());
            }
        }
        return linkedList.isEmpty() ? new String[0] : (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    public static String getHost(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new URI(str).getHost();
        } catch (URISyntaxException e) {
            Logger.m38040w(TAG, e.getClass().getSimpleName());
            return "";
        }
    }

    private static int getHwNetworkType(Context context) {
        if (!ReflectionUtils.checkCompatible(EmuiUtil.BUILDEX_VERSION)) {
            return 0;
        }
        int i = 0;
        if (context != null) {
            TelephonyManager telephonyManager = (TelephonyManager) ContextCompat.getSystemService(context, AnalyticsConstants.PHONE);
            i = 0;
            if (telephonyManager != null) {
                i = 0;
                try {
                    if (BuildEx.VERSION.EMUI_SDK_INT >= 21) {
                        ServiceState serviceState = telephonyManager.getServiceState();
                        i = 0;
                        if (serviceState != null) {
                            i = ServiceStateEx.getConfigRadioTechnology(serviceState);
                        }
                    }
                } catch (NoClassDefFoundError e) {
                    Logger.m38040w(TAG, "NoClassDefFoundError occur in method getHwNetworkType.");
                    i = 0;
                } catch (NoSuchMethodError e2) {
                    Logger.m38040w(TAG, "NoSuchMethodError occur in method getHwNetworkType.");
                    i = 0;
                } catch (SecurityException e3) {
                    Logger.m38040w(TAG, "requires permission maybe missing.");
                    i = 0;
                }
            }
        }
        return i;
    }

    public static int getInfoWithReflect(SignalStrength signalStrength, String str) {
        try {
            if (Build.VERSION.SDK_INT > 28) {
                return Integer.MAX_VALUE;
            }
            final Method declaredMethod = SignalStrength.class.getDeclaredMethod(str, new Class[0]);
            AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.NetworkUtil.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    declaredMethod.setAccessible(true);
                    return null;
                }
            });
            return ((Integer) declaredMethod.invoke(signalStrength, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            String str2 = TAG;
            Logger.m38044i(str2, str + " : cannot access");
            return Integer.MAX_VALUE;
        } catch (NoSuchMethodException e2) {
            String str3 = TAG;
            Logger.m38044i(str3, str + " : function not found");
            return Integer.MAX_VALUE;
        } catch (InvocationTargetException e3) {
            String str4 = TAG;
            Logger.m38044i(str4, str + " : InvocationTargetException");
            return Integer.MAX_VALUE;
        } catch (Throwable th) {
            String str5 = TAG;
            StringBuilder m8696K = C22128a.m8696K(str, " : throwable:");
            m8696K.append(th.getClass());
            Logger.m38044i(str5, m8696K.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getLteCqi(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                return getInfoWithReflect(signalStrength, "getLteCqi");
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getCqi();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteCqi: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getLteRsrp(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                return getInfoWithReflect(signalStrength, "getLteRsrp");
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRsrp();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRsrp: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getLteRsrq(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                return getInfoWithReflect(signalStrength, "getLteRsrq");
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRsrq();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRsrq: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getLteRssi(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRssi();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRssi: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getLteRssnr(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                return getInfoWithReflect(signalStrength, "getLteRssnr");
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRssnr();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRssnr: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static Map<String, Integer> getLteSignalInfo(Context context) {
        HashMap hashMap = new HashMap();
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return hashMap;
        }
        try {
            if (Build.VERSION.SDK_INT > 28) {
                List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
                if (cellSignalStrengths.size() > 0) {
                    hashMap.put(SignalType.LTE_DBM, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getDbm()));
                    hashMap.put(SignalType.LTE_RSRP, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRsrp()));
                    hashMap.put(SignalType.LTE_RSRQ, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRsrq()));
                    hashMap.put(SignalType.LTE_RSSNR, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRssnr()));
                    hashMap.put(SignalType.LTE_CQI, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getCqi()));
                    hashMap.put(SignalType.LTE_RSSI, Integer.valueOf(((CellSignalStrengthLte) cellSignalStrengths.get(0)).getRssi()));
                }
            } else {
                hashMap.put(SignalType.LTE_DBM, Integer.valueOf(getInfoWithReflect(signalStrength, "getDbm")));
                hashMap.put(SignalType.LTE_RSRP, Integer.valueOf(getInfoWithReflect(signalStrength, "getLteRsrp")));
                hashMap.put(SignalType.LTE_RSRQ, Integer.valueOf(getInfoWithReflect(signalStrength, "getLteRsrq")));
                hashMap.put(SignalType.LTE_RSSNR, Integer.valueOf(getInfoWithReflect(signalStrength, "getLteRssnr")));
                hashMap.put(SignalType.LTE_CQI, Integer.valueOf(getInfoWithReflect(signalStrength, "getLteCqi")));
            }
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRssi: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
        }
        return hashMap;
    }

    public static String getMNC(Context context) {
        if (context != null && isSimReady(context)) {
            Object systemService = ContextCompat.getSystemService(context, AnalyticsConstants.PHONE);
            TelephonyManager telephonyManager = null;
            if (systemService instanceof TelephonyManager) {
                telephonyManager = (TelephonyManager) systemService;
            }
            if (telephonyManager == null) {
                Logger.m38047e(TAG, "getSubscriptionOperatorType: other error!");
                return "unknown";
            }
            String networkOperator = telephonyManager.getNetworkOperator();
            return ("46001".equals(networkOperator) || "46006".equals(networkOperator) || "46009".equals(networkOperator)) ? "China_Unicom" : ("46000".equals(networkOperator) || "46002".equals(networkOperator) || "46004".equals(networkOperator) || "46007".equals(networkOperator)) ? "China_Mobile" : ("46003".equals(networkOperator) || "46005".equals(networkOperator) || "46011".equals(networkOperator)) ? "China_Telecom" : "other";
        }
        return "unknown";
    }

    public static int getMobileRsrp(Context context) {
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return Integer.MAX_VALUE;
        }
        try {
            return Build.VERSION.SDK_INT > 28 ? getMobileSingalStrengthUpPPlatfrom(context) : getInfoWithReflect(signalStrength, "getDbm");
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getDbm: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    private static int getMobileSingalStrengthUpPPlatfrom(Context context) {
        SignalStrength signalStrength;
        int i;
        if (Build.VERSION.SDK_INT > 28 && (signalStrength = getSignalStrength(context)) != null) {
            int networkType = getNetworkType(context);
            try {
            } catch (Throwable th) {
                String str = TAG;
                StringBuilder m8728C = C22128a.m8728C("getMobileSingalStrength: throwable:");
                m8728C.append(th.getClass());
                Logger.m38044i(str, m8728C.toString());
                i = Integer.MAX_VALUE;
            }
            if (networkType != 3) {
                if (networkType == 4) {
                    List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthLte.class);
                    i = Integer.MAX_VALUE;
                    if (cellSignalStrengths.size() > 0) {
                        i = ((CellSignalStrengthLte) cellSignalStrengths.get(0)).getDbm();
                    }
                    return i;
                }
                if (networkType != 5) {
                    i = Integer.MAX_VALUE;
                } else {
                    List cellSignalStrengths2 = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
                    i = Integer.MAX_VALUE;
                    if (cellSignalStrengths2.size() > 0) {
                        i = ((CellSignalStrengthNr) cellSignalStrengths2.get(0)).getDbm();
                    }
                }
                return i;
            }
            List cellSignalStrengths3 = signalStrength.getCellSignalStrengths(CellSignalStrengthCdma.class);
            if (cellSignalStrengths3.size() > 0) {
                i = ((CellSignalStrengthCdma) cellSignalStrengths3.get(0)).getDbm();
            } else {
                List cellSignalStrengths4 = signalStrength.getCellSignalStrengths(CellSignalStrengthTdscdma.class);
                if (cellSignalStrengths4.size() <= 0) {
                    List cellSignalStrengths5 = signalStrength.getCellSignalStrengths(CellSignalStrengthWcdma.class);
                    i = Integer.MAX_VALUE;
                    if (cellSignalStrengths5.size() > 0) {
                        i = ((CellSignalStrengthWcdma) cellSignalStrengths5.get(0)).getDbm();
                    }
                    return i;
                }
                i = ((CellSignalStrengthTdscdma) cellSignalStrengths4.get(0)).getDbm();
            }
            return i;
        }
        return Integer.MAX_VALUE;
    }

    public static String getNetWorkNSAorSA() {
        String str;
        try {
            HwTelephonyManager hwTelephonyManager = HwTelephonyManager.getDefault();
            int default4GSlotId = hwTelephonyManager.getDefault4GSlotId();
            String str2 = TAG;
            Logger.m38042v(str2, "phoneId " + default4GSlotId);
            boolean isNsaState = hwTelephonyManager.isNsaState(default4GSlotId);
            Logger.m38042v(str2, "isNsa " + isNsaState);
            str = isNsaState ? STR_NSA : STR_SA;
        } catch (Throwable th) {
            Logger.m38042v(TAG, "isNsaState error");
            str = null;
        }
        return str;
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        NetworkInfo networkInfo = null;
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, "connectivity");
            networkInfo = null;
            if (connectivityManager != null) {
                try {
                    networkInfo = connectivityManager.getActiveNetworkInfo();
                } catch (RuntimeException e) {
                    String str = TAG;
                    StringBuilder m8728C = C22128a.m8728C("getActiveNetworkInfo failed, exception:");
                    m8728C.append(e.getClass().getSimpleName());
                    m8728C.append(e.getMessage());
                    Logger.m38044i(str, m8728C.toString());
                    networkInfo = null;
                }
            }
        }
        return networkInfo;
    }

    public static NetworkInfo.DetailedState getNetworkStatus(Context context) {
        NetworkInfo.DetailedState detailedState = NetworkInfo.DetailedState.IDLE;
        NetworkInfo.DetailedState detailedState2 = detailedState;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context, "connectivity");
            if (systemService instanceof ConnectivityManager) {
                try {
                    if (!ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                        return detailedState;
                    }
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        detailedState2 = activeNetworkInfo.getDetailedState();
                    } else {
                        Logger.m38044i(TAG, "getNetworkStatus networkIsConnected netInfo is null!");
                        detailedState2 = detailedState;
                    }
                } catch (RuntimeException e) {
                    String str = TAG;
                    StringBuilder m8728C = C22128a.m8728C("getNetworkStatus exception");
                    m8728C.append(e.getClass().getSimpleName());
                    m8728C.append(e.getMessage());
                    Logger.m38044i(str, m8728C.toString());
                    detailedState2 = detailedState;
                }
            } else {
                Logger.m38044i(TAG, "getNetworkStatus ConnectivityManager is null!");
                detailedState2 = detailedState;
            }
        }
        return detailedState2;
    }

    public static int getNetworkType(Context context) {
        return context != null ? getNetworkType(getNetworkInfo(context), context) : 0;
    }

    public static int getNetworkType(NetworkInfo networkInfo) {
        return getNetworkType(networkInfo, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ec, code lost:
        if (r5 != 17) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getNetworkType(android.net.NetworkInfo r3, android.content.Context r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L101
            r0 = r3
            boolean r0 = r0.isConnected()
            if (r0 == 0) goto L101
            r0 = r3
            int r0 = r0.getType()
            r6 = r0
            r0 = r5
            r7 = r0
            r0 = 1
            r1 = r6
            if (r0 == r1) goto L104
            r0 = 13
            r1 = r6
            if (r0 != r1) goto L26
            r0 = r5
            r7 = r0
            goto L104
        L26:
            r0 = r6
            if (r0 != 0) goto Lfb
            r0 = r4
            int r0 = getHwNetworkType(r0)
            r7 = r0
            java.lang.String r0 = com.huawei.hms.framework.common.NetworkUtil.TAG
            r4 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "getHwNetworkType return is: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r8
            java.lang.String r1 = r1.toString()
            com.huawei.hms.framework.common.Logger.m38042v(r0, r1)
            r0 = r7
            r5 = r0
            r0 = r7
            if (r0 != 0) goto L64
            r0 = r3
            int r0 = r0.getSubtype()
            r5 = r0
        L64:
            r0 = 3
            r6 = r0
            r0 = r5
            r1 = 20
            if (r0 == r1) goto Ld0
            r0 = r5
            switch(r0) {
                case 1: goto Lca;
                case 2: goto Lca;
                case 3: goto Lc4;
                case 4: goto Lca;
                case 5: goto Lc4;
                case 6: goto Lc4;
                case 7: goto Lca;
                case 8: goto Lc4;
                case 9: goto Lc4;
                case 10: goto Lc4;
                case 11: goto Lca;
                case 12: goto Lc4;
                case 13: goto Lbe;
                case 14: goto Lc4;
                case 15: goto Lc4;
                default: goto Lb8;
            }
        Lb8:
            r0 = 0
            r7 = r0
            goto Ld3
        Lbe:
            r0 = 4
            r7 = r0
            goto Ld3
        Lc4:
            r0 = 3
            r7 = r0
            goto Ld3
        Lca:
            r0 = 2
            r7 = r0
            goto Ld3
        Ld0:
            r0 = 5
            r7 = r0
        Ld3:
            r0 = r7
            if (r0 != 0) goto Lf8
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 25
            if (r0 < r1) goto Lf8
            r0 = r5
            r1 = 16
            if (r0 == r1) goto Lf2
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = 17
            if (r0 == r1) goto L104
            goto Lfb
        Lf2:
            r0 = 2
            r7 = r0
            goto L104
        Lf8:
            goto L104
        Lfb:
            r0 = 0
            r7 = r0
            goto L104
        L101:
            r0 = -1
            r7 = r0
        L104:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.common.NetworkUtil.getNetworkType(android.net.NetworkInfo, android.content.Context):int");
    }

    public static int getNrCsiRsrp(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiRsrp();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrCsiRsrp: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getNrCsiRsrq(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiRsrq();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrCsiRsrq: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getNrCsiSinr(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiSinr();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrCsiSinr: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static Map<String, Integer> getNrSignalInfo(Context context) {
        HashMap hashMap = new HashMap();
        SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return hashMap;
        }
        try {
            if (Build.VERSION.SDK_INT > 28) {
                List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
                if (cellSignalStrengths.size() > 0) {
                    hashMap.put(SignalType.NR_DBM, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getDbm()));
                    hashMap.put(SignalType.NR_CSIRSRP, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiRsrp()));
                    hashMap.put(SignalType.NR_CSIRSRQ, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiRsrq()));
                    hashMap.put(SignalType.NR_CSISINR, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getCsiSinr()));
                    hashMap.put(SignalType.NR_SSRSRP, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsRsrp()));
                    hashMap.put(SignalType.NR_SSRSRQ, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsRsrq()));
                    hashMap.put(SignalType.NR_SSSINR, Integer.valueOf(((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsSinr()));
                }
            }
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getLteRssi: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
        }
        return hashMap;
    }

    public static int getNrSsRsrp(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsRsrp();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrSsRsrp: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getNrSsRsrq(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsRsrq();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrSsRsrq: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getNrSsSinr(Context context) {
        SignalStrength signalStrength;
        try {
            if (Build.VERSION.SDK_INT <= 28 || (signalStrength = getSignalStrength(context)) == null) {
                return Integer.MAX_VALUE;
            }
            List cellSignalStrengths = signalStrength.getCellSignalStrengths(CellSignalStrengthNr.class);
            if (cellSignalStrengths.size() <= 0) {
                return Integer.MAX_VALUE;
            }
            return ((CellSignalStrengthNr) cellSignalStrengths.get(0)).getSsSinr();
        } catch (Throwable th) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("getNrSsSinr: throwable:");
            m8728C.append(th.getClass());
            Logger.m38044i(str, m8728C.toString());
            return Integer.MAX_VALUE;
        }
    }

    public static int getPrimaryNetworkType(Context context) {
        return groupNetworkType(getNetworkType(getNetworkInfo(context), context));
    }

    public static int getPrimaryNetworkType(NetworkInfo networkInfo) {
        return groupNetworkType(getNetworkType(networkInfo));
    }

    private static SignalStrength getSignalStrength(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 28) {
            return null;
        }
        Object systemService = ContextCompat.getSystemService(context, AnalyticsConstants.PHONE);
        if (!(systemService instanceof TelephonyManager)) {
            return null;
        }
        return ((TelephonyManager) systemService).createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getSignalStrength();
    }

    public static String getWifiGatewayIp(Context context) {
        String str = StringConstant.SPACE;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context.getApplicationContext(), AnalyticsConstants.WIFI);
            str = StringConstant.SPACE;
            if (systemService instanceof WifiManager) {
                try {
                    int i = ((WifiManager) systemService).getDhcpInfo().gateway;
                    str = InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)}).getHostAddress();
                } catch (RuntimeException | UnknownHostException e) {
                    String str2 = TAG;
                    StringBuilder m8728C = C22128a.m8728C("getWifiGatewayIp error!");
                    m8728C.append(e.getClass().getSimpleName());
                    m8728C.append(e.getMessage());
                    Logger.m38044i(str2, m8728C.toString());
                    str = StringConstant.SPACE;
                }
            }
        }
        return str;
    }

    public static int getWifiRssi(Context context) {
        int i = INVALID_RSSI;
        if (context != null) {
            Object systemService = ContextCompat.getSystemService(context.getApplicationContext(), AnalyticsConstants.WIFI);
            i = INVALID_RSSI;
            if (systemService instanceof WifiManager) {
                try {
                    WifiInfo connectionInfo = ((WifiManager) systemService).getConnectionInfo();
                    i = INVALID_RSSI;
                    if (connectionInfo != null) {
                        i = INVALID_RSSI;
                        if (connectionInfo.getBSSID() != null) {
                            i = connectionInfo.getRssi();
                        }
                    }
                } catch (RuntimeException e) {
                    String str = TAG;
                    StringBuilder m8728C = C22128a.m8728C("getWifiRssiLevel did not has permission!");
                    m8728C.append(e.getClass().getSimpleName());
                    m8728C.append(e.getMessage());
                    Logger.m38044i(str, m8728C.toString());
                    i = INVALID_RSSI;
                }
            }
        }
        return i;
    }

    public static int getWifiRssiLevel(Context context) {
        return WifiManager.calculateSignalLevel(getWifiRssi(context), 5);
    }

    private static int groupNetworkType(int i) {
        int i2 = 1;
        if (i == -1) {
            i2 = -1;
        } else if (i != 1) {
            i2 = (i == 2 || i == 3 || i == 4 || i == 5) ? 6 : 0;
        }
        return i2;
    }

    public static boolean isChangeToConnected(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
        if ((networkInfo == null || !networkInfo.isConnected()) && networkInfo2.isConnected()) {
            Logger.m38042v(TAG, "Find network state changed to connected");
            return true;
        }
        return false;
    }

    public static boolean isConnectTypeChange(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
        if (networkInfo == null || !networkInfo.isConnected() || !networkInfo2.isConnected() || getPrimaryNetworkType(networkInfo) == getPrimaryNetworkType(networkInfo2)) {
            return false;
        }
        Logger.m38042v(TAG, "Find activity network changed");
        return true;
    }

    @Deprecated
    public static boolean isForeground(Context context) {
        return ActivityUtil.isForeground(context);
    }

    public static boolean isNetworkAvailable(Context context) {
        boolean z = true;
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo networkInfo = getNetworkInfo(context);
            z = networkInfo != null && networkInfo.isConnected();
        }
        return z;
    }

    public static boolean isSimReady(Context context) {
        Object systemService = ContextCompat.getSystemService(context, AnalyticsConstants.PHONE);
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        return telephonyManager != null && telephonyManager.getSimState() == 5;
    }

    public static boolean isUserUnlocked(Context context) {
        UserManager userManager;
        if (Build.VERSION.SDK_INT < 24 || (userManager = (UserManager) ContextCompat.getSystemService(context, "user")) == null) {
            return true;
        }
        try {
            return userManager.isUserUnlocked();
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "dealType rethrowFromSystemServer:", e);
            return true;
        }
    }

    public static int netWork(Context context) {
        int networkType = getNetworkType(context);
        Logger.m38042v(TAG, "newWorkType " + networkType);
        if (networkType == 4) {
            if (TextUtils.equals(STR_NSA, getNetWorkNSAorSA())) {
                networkType = 7;
            }
            return networkType;
        }
        int i = networkType;
        if (networkType == 5) {
            i = networkType;
            if (TextUtils.equals(STR_SA, getNetWorkNSAorSA())) {
                i = 8;
            }
        }
        return i;
    }

    @Deprecated
    public static NetworkInfo.DetailedState networkStatus(Context context) {
        return getNetworkStatus(context);
    }

    public static int readDataSaverMode(Context context) {
        int i = 0;
        if (context != null) {
            i = 0;
            if (Build.VERSION.SDK_INT >= 24) {
                i = 0;
                if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    Object systemService = ContextCompat.getSystemService(context, "connectivity");
                    i = 0;
                    if (systemService instanceof ConnectivityManager) {
                        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                        try {
                            if (connectivityManager.isActiveNetworkMetered()) {
                                i = connectivityManager.getRestrictBackgroundStatus();
                            } else {
                                Logger.m38042v(TAG, "ConnectType is not Mobile Network!");
                                i = 0;
                            }
                        } catch (RuntimeException e) {
                            Logger.m38046e(TAG, "SystemServer error:", e);
                            i = 0;
                        }
                    }
                }
            }
        }
        return i;
    }
}
