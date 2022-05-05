package com.android.contacts.j;

import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1543a;

    /* renamed from: b  reason: collision with root package name */
    private static int f1544b;
    private static int c;
    private static String d;

    static {
        f1543a = CompatUtils.isNCompatible() || !PhoneCapabilityTester.IsAsusDevice();
        f1544b = 0;
        c = 0;
        d = BuildConfig.FLAVOR;
    }

    public static String a(String str) {
        char[] charArray;
        StringBuilder sb = new StringBuilder(0);
        for (char c2 : str.toCharArray()) {
            if (c2 == '+' || c2 == ',' || c2 == ';' || (c2 >= '0' && c2 <= '9')) {
                sb.append(c2);
            }
        }
        return sb.toString();
    }

    public static void a(int i) {
        f1544b = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0069, code lost:
        if (r0.equals("zh_TW_#Hant") != false) goto L_0x006c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.h.a(android.content.Context):void");
    }

    public static boolean a() {
        return !PhoneCapabilityTester.IsAsusDevice();
    }

    public static void b(int i) {
        c = i;
    }

    public static boolean b() {
        return f1543a;
    }

    public static int c() {
        return f1544b;
    }

    public static int d() {
        return c;
    }

    public static String e() {
        return d;
    }
}
