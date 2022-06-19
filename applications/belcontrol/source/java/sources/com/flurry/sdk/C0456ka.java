package com.flurry.sdk;

import android.telephony.TelephonyManager;
/* renamed from: com.flurry.sdk.ka */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ka.class */
public class C0456ka {

    /* renamed from: a */
    private static final String f3436a = "ka";

    /* renamed from: b */
    private static C0456ka f3437b;

    private C0456ka() {
    }

    /* renamed from: a */
    public static C0456ka m4666a() {
        C0456ka c0456ka;
        synchronized (C0456ka.class) {
            try {
                if (f3437b == null) {
                    f3437b = new C0456ka();
                }
                c0456ka = f3437b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0456ka;
    }

    /* renamed from: b */
    public static String m4665b() {
        TelephonyManager telephonyManager = (TelephonyManager) C0462kg.m4652a().f3460a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperatorName();
    }

    /* renamed from: c */
    public static String m4664c() {
        TelephonyManager telephonyManager = (TelephonyManager) C0462kg.m4652a().f3460a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }
}
