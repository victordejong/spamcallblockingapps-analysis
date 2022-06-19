package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Log;
/* renamed from: com.flurry.sdk.ku */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ku.class */
public final class C0478ku {

    /* renamed from: a */
    private static boolean f3502a = false;

    /* renamed from: b */
    private static int f3503b = 5;

    /* renamed from: c */
    private static boolean f3504c = false;

    /* renamed from: a */
    public static void m4598a() {
        f3502a = true;
    }

    /* renamed from: a */
    public static void m4597a(int i) {
        f3503b = i;
    }

    /* renamed from: a */
    public static void m4596a(int i, String str, String str2) {
        m4585d(i, str, str2);
    }

    /* renamed from: a */
    public static void m4595a(int i, String str, String str2, Throwable th) {
        m4585d(i, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: a */
    public static void m4594a(String str, String str2) {
        m4591b(3, str, str2);
    }

    /* renamed from: a */
    public static void m4593a(String str, String str2, Throwable th) {
        m4591b(6, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: b */
    public static void m4592b() {
        f3502a = false;
    }

    /* renamed from: b */
    private static void m4591b(int i, String str, String str2) {
        if (f3502a || f3503b > i) {
            return;
        }
        m4588c(i, str, str2);
    }

    /* renamed from: b */
    public static void m4590b(String str, String str2) {
        m4591b(6, str, str2);
    }

    /* renamed from: c */
    public static int m4589c() {
        return f3503b;
    }

    /* renamed from: c */
    private static void m4588c(int i, String str, String str2) {
        if (!f3504c) {
            str = "FlurryAgent";
        }
        int i2 = 0;
        int length = TextUtils.isEmpty(str2) ? 0 : str2.length();
        while (i2 < length) {
            int i3 = 4000 > length - i2 ? length : i2 + 4000;
            if (Log.println(i, str, str2.substring(i2, i3)) <= 0) {
                return;
            }
            i2 = i3;
        }
    }

    /* renamed from: c */
    public static void m4587c(String str, String str2) {
        m4591b(4, str, str2);
    }

    /* renamed from: d */
    private static void m4585d(int i, String str, String str2) {
        if (f3504c) {
            m4588c(i, str, str2);
        }
    }

    /* renamed from: d */
    public static void m4584d(String str, String str2) {
        m4591b(2, str, str2);
    }

    /* renamed from: d */
    public static boolean m4586d() {
        return f3504c;
    }

    /* renamed from: e */
    public static void m4583e(String str, String str2) {
        m4591b(5, str, str2);
    }
}
