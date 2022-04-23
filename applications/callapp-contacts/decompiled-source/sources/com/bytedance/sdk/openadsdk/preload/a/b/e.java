package com.bytedance.sdk.openadsdk.preload.a.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f10029a = c();

    public static int a() {
        return f10029a;
    }

    static int a(String str) {
        int b2 = b(str);
        int i = b2;
        if (b2 == -1) {
            i = c(str);
        }
        if (i == -1) {
            return 6;
        }
        return i;
    }

    private static int b(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public static boolean b() {
        return f10029a >= 9;
    }

    private static int c() {
        return a(System.getProperty("java.version"));
    }

    private static int c(String str) {
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
