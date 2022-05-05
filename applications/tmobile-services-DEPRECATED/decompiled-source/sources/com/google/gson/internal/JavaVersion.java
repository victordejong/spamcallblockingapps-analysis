package com.google.gson.internal;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/JavaVersion.class */
public final class JavaVersion {

    /* renamed from: a */
    private static final int f11993a = m8328a();

    private JavaVersion() {
    }

    /* renamed from: a */
    private static int m8328a() {
        return m8325d(System.getProperty("java.version"));
    }

    /* renamed from: b */
    private static int m8327b(String str) {
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

    /* renamed from: c */
    public static int m8326c() {
        return f11993a;
    }

    /* renamed from: d */
    static int m8325d(String str) {
        int f = m8323f(str);
        int i = f;
        if (f == -1) {
            i = m8327b(str);
        }
        if (i == -1) {
            return 6;
        }
        return i;
    }

    /* renamed from: e */
    public static boolean m8324e() {
        return f11993a >= 9;
    }

    /* renamed from: f */
    private static int m8323f(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }
}
