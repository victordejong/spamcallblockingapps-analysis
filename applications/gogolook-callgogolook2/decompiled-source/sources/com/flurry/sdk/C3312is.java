package com.flurry.sdk;

import android.telephony.TelephonyManager;
/* renamed from: com.flurry.sdk.is */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/is.class */
public class C3312is {

    /* renamed from: b */
    public static C3312is f5622b;

    /* renamed from: a */
    public static C3312is m32710a() {
        C3312is isVar;
        synchronized (C3312is.class) {
            try {
                if (f5622b == null) {
                    f5622b = new C3312is();
                }
                isVar = f5622b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return isVar;
    }

    /* renamed from: b */
    public static String m32709b() {
        TelephonyManager telephonyManager = (TelephonyManager) C3331jb.m32681a().f5679a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperatorName();
    }

    /* renamed from: c */
    public static String m32708c() {
        TelephonyManager telephonyManager = (TelephonyManager) C3331jb.m32681a().f5679a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }
}
