package com.allinone.callerid.util;

import android.content.Context;
import android.util.Log;
/* renamed from: com.allinone.callerid.util.c0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/c0.class */
public class C3718c0 {

    /* renamed from: a */
    public static boolean f11914a = true;

    /* renamed from: a */
    public static void m24436a(String str, String str2) {
        Log.e(str, str2);
    }

    /* renamed from: b */
    public static void m24435b(Context context) {
        f11914a = m24434c(context);
    }

    /* renamed from: c */
    private static boolean m24434c(Context context) {
        boolean z = false;
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public static void m24433d(String str, String str2) {
        int i = (str2.length() > 2048 ? 1 : (str2.length() == 2048 ? 0 : -1));
        if (i >= 0) {
            String str3 = str2;
            if (i != 0) {
                while (str3.length() > 2048) {
                    String substring = str3.substring(0, 2048);
                    str3 = str3.replace(substring, "");
                    Log.e(str, substring);
                }
                Log.e(str, str3);
                return;
            }
        }
        Log.e(str, str2);
    }
}
