package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
/* renamed from: com.huawei.secure.android.common.ssl.util.i */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/i.class */
public class C2495i {

    /* renamed from: a */
    private static final String f8106a = "aegis";

    /* renamed from: b */
    private static SharedPreferences f8107b;

    /* renamed from: a */
    public static int m36949a(String str, int i, Context context) {
        return m36945b(context).getInt(str, i);
    }

    /* renamed from: a */
    public static long m36948a(String str, long j, Context context) {
        return m36945b(context).getLong(str, j);
    }

    /* renamed from: a */
    public static String m36946a(String str, String str2, Context context) {
        return m36945b(context).getString(str, str2);
    }

    /* renamed from: a */
    public static void m36950a(Context context) {
        m36945b(context).edit().clear().apply();
    }

    /* renamed from: a */
    public static void m36947a(String str, Context context) {
        m36945b(context).edit().remove(str).apply();
    }

    /* renamed from: b */
    public static SharedPreferences m36945b(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (C2495i.class) {
            try {
                if (f8107b == null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        f8107b = context.createDeviceProtectedStorageContext().getSharedPreferences(f8106a, 0);
                    } else {
                        f8107b = context.getApplicationContext().getSharedPreferences(f8106a, 0);
                    }
                }
                sharedPreferences = f8107b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }

    /* renamed from: b */
    public static void m36944b(String str, int i, Context context) {
        m36945b(context).edit().putInt(str, i).apply();
    }

    /* renamed from: b */
    public static void m36943b(String str, long j, Context context) {
        m36945b(context).edit().putLong(str, j).apply();
    }

    /* renamed from: b */
    public static void m36942b(String str, String str2, Context context) {
        m36945b(context).edit().putString(str, str2).apply();
    }
}
