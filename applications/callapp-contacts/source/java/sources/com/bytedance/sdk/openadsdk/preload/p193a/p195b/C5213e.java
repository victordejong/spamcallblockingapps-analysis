package com.bytedance.sdk.openadsdk.preload.p193a.p195b;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/e.class */
public final class C5213e {

    /* renamed from: a */
    private static final int f18571a = m32836c();

    /* renamed from: a */
    public static int m32840a() {
        return f18571a;
    }

    /* renamed from: a */
    static int m32839a(String str) {
        int m32837b = m32837b(str);
        int i = m32837b;
        if (m32837b == -1) {
            i = m32835c(str);
        }
        if (i == -1) {
            return 6;
        }
        return i;
    }

    /* renamed from: b */
    private static int m32837b(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: b */
    public static boolean m32838b() {
        return f18571a >= 9;
    }

    /* renamed from: c */
    private static int m32836c() {
        return m32839a(System.getProperty("java.version"));
    }

    /* renamed from: c */
    private static int m32835c(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!Character.isDigit(charAt)) {
                    break;
                }
                sb.append(charAt);
            }
            return Integer.parseInt(sb.toString());
        } catch (NumberFormatException e) {
            return -1;
        }
    }
}
