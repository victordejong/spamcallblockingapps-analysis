package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
/* renamed from: com.bytedance.sdk.openadsdk.utils.t */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/t.class */
public class C5482t {
    /* renamed from: a */
    public static boolean m32091a(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (allNetworkInfo = connectivityManager.getAllNetworkInfo()) == null) {
                return false;
            }
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m32090a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    /* renamed from: b */
    public static int m32089b(Context context) {
        int m32088c = m32088c(context);
        if (m32088c != 1) {
            if (m32088c == 4) {
                return 1;
            }
            if (m32088c == 5) {
                return 4;
            }
            return m32088c;
        }
        return 0;
    }

    /* renamed from: c */
    public static int m32088c(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                switch (((TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getNetworkType()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
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
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        return 5;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        if (TextUtils.isEmpty(subtypeName)) {
                            return 1;
                        }
                        if (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA")) {
                            return 3;
                        }
                        return subtypeName.equalsIgnoreCase("CDMA2000") ? 3 : 1;
                }
            }
            return 0;
        } catch (Throwable th) {
            return 1;
        }
    }

    /* renamed from: d */
    public static boolean m32087d(Context context) {
        return m32088c(context) == 4;
    }

    /* renamed from: e */
    public static boolean m32086e(Context context) {
        return m32088c(context) == 5;
    }

    /* renamed from: f */
    public static String m32085f(Context context) {
        int m32088c = m32088c(context);
        return m32088c != 2 ? m32088c != 3 ? m32088c != 4 ? m32088c != 5 ? "mobile" : "4g" : "wifi" : "3g" : "2g";
    }
}
