package com.asus.privatecontacts.b;

import android.telephony.PhoneNumberUtils;
import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3006a = e.class.getSimpleName();

    public static String a(String str) {
        String str2;
        try {
            Method method = PhoneNumberUtils.class.getMethod("normalizeNumber", String.class);
            method.setAccessible(true);
            str2 = (String) method.invoke(null, str);
        } catch (Exception e) {
            Log.d(f3006a, "Failed to normalize number !");
            e.printStackTrace();
            str2 = null;
        }
        return str2;
    }

    public static String a(String str, String str2) {
        String str3;
        Log.d(f3006a, "Default Country Iso: " + str2);
        try {
            Method method = PhoneNumberUtils.class.getMethod("formatNumberToE164", String.class, String.class);
            method.setAccessible(true);
            str3 = (String) method.invoke(null, str, str2.toUpperCase());
        } catch (Exception e) {
            Log.d(f3006a, "Failed to format number to E164 !");
            e.printStackTrace();
            str3 = null;
        }
        return str3;
    }
}
