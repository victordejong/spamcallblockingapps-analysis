package com.google.gson.internal;
/* renamed from: com.google.gson.internal.e */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/e.class */
public final class C16067e {

    /* renamed from: a */
    private static final int f56812a;

    static {
        String property = System.getProperty("java.version");
        int m7887a = m7887a(property);
        int i = m7887a;
        if (m7887a == -1) {
            i = m7885b(property);
        }
        int i2 = i;
        if (i == -1) {
            i2 = 6;
        }
        f56812a = i2;
    }

    private C16067e() {
    }

    /* renamed from: a */
    public static int m7888a() {
        return f56812a;
    }

    /* renamed from: a */
    private static int m7887a(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: b */
    private static int m7885b(String str) {
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

    /* renamed from: b */
    public static boolean m7886b() {
        return f56812a >= 9;
    }
}
