package com.callerid.block.util;

import android.content.Context;
import android.util.Log;
import e.d.a.a.a;
/* renamed from: com.callerid.block.util.w */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/w.class */
public class C1227w {

    /* renamed from: a */
    public static boolean f5084a = true;

    /* renamed from: a */
    public static void m9527a(String str, String str2) {
        if (f5084a) {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public static void m9526b(Context context) {
        boolean N = C1216t0.m9598N(context);
        f5084a = N;
        if (N) {
            a.h(true);
        }
    }

    /* renamed from: c */
    public static void m9525c(String str, String str2) {
        if (f5084a) {
            long length = str2.length();
            long j = 2048;
            String str3 = str2;
            if (length >= j) {
                String str4 = str2;
                if (length != j) {
                    while (true) {
                        str3 = str4;
                        if (str4.length() <= 2048) {
                            break;
                        }
                        String substring = str4.substring(0, 2048);
                        str4 = str4.replace(substring, "");
                        Log.e(str, substring);
                    }
                } else {
                    str3 = str2;
                }
            }
            Log.e(str, str3);
        }
    }
}
