package com.callerid.block.util;

import android.content.Context;
/* renamed from: com.callerid.block.util.c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/c.class */
public class C1168c {
    /* renamed from: a */
    public static void m9904a(Context context) {
        int m9710e = C1199n0.m9710e();
        if (m9710e == 1) {
            C1183i0.m9830e(context);
        } else if (m9710e != 0) {
        } else {
            C1216t0.m9571h(context);
        }
    }

    /* renamed from: b */
    public static boolean m9903b(Context context, String str) {
        try {
            String country_code = C1184j.m9826d(context).getCountry_code();
            if (C1227w.f5084a) {
                C1227w.m9527a("customblock", "本地cc=" + country_code);
            }
            if (str.startsWith("+")) {
                return !str.substring(1).startsWith(country_code);
            } else if (!str.startsWith("00")) {
                return false;
            } else {
                String substring = str.substring(2);
                if (C1227w.f5084a) {
                    C1227w.m9527a("customblock", "以00开头" + str + "-->" + substring);
                }
                return !substring.startsWith(country_code);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
