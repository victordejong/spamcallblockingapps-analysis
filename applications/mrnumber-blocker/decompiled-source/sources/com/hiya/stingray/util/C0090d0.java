package com.hiya.stingray.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ITelephony;
import com.google.common.base.j;
import com.google.common.base.r;
import java.lang.reflect.Method;
/* renamed from: com.hiya.stingray.util.d0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/d0.class */
public class C0090d0 {
    /* renamed from: a */
    public static boolean m1045a(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
            if (telecomManager == null) {
                return false;
            }
            return telecomManager.endCall();
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
        declaredMethod.setAccessible(true);
        return ((ITelephony) declaredMethod.invoke(telephonyManager, new Object[0])).endCall();
    }

    /* renamed from: b */
    public static j<String> m1044b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return j.a();
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) ? j.a() : activeNetworkInfo.getType() == 1 ? j.e("WIFI") : (activeNetworkInfo.getType() != 0 || r.b(activeNetworkInfo.getSubtypeName())) ? j.a() : j.e(activeNetworkInfo.getSubtypeName());
    }

    /* renamed from: c */
    public static j<String> m1043c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return (telephonyManager == null || r.b(telephonyManager.getNetworkOperatorName())) ? j.a() : j.e(telephonyManager.getNetworkOperatorName());
    }

    /* renamed from: d */
    public static j<String> m1042d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return (telephonyManager == null || r.b(telephonyManager.getSimCountryIso())) ? j.a() : j.e(telephonyManager.getSimCountryIso());
    }
}
