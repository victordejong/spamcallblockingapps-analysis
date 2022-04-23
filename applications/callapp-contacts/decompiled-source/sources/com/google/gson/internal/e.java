package com.google.gson.internal;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f32792a;

    static {
        String property = System.getProperty("java.version");
        int a2 = a(property);
        int i = a2;
        if (a2 == -1) {
            i = b(property);
        }
        int i2 = i;
        if (i == -1) {
            i2 = 6;
        }
        f32792a = i2;
    }

    private e() {
    }

    public static int a() {
        return f32792a;
    }

    private static int a(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private static int b(String str) {
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

    public static boolean b() {
        return f32792a >= 9;
    }
}
