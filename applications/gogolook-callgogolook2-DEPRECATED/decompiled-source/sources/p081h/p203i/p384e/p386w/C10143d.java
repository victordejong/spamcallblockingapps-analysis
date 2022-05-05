package p081h.p203i.p384e.p386w;
/* renamed from: h.i.e.w.d */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/d.class */
public final class C10143d {

    /* renamed from: a */
    public static final int f22856a = m13328a();

    /* renamed from: a */
    public static int m13328a() {
        return m13325b(System.getProperty("java.version"));
    }

    /* renamed from: a */
    public static int m13327a(String str) {
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
    public static int m13326b() {
        return f22856a;
    }

    /* renamed from: b */
    public static int m13325b(String str) {
        int c = m13323c(str);
        int i = c;
        if (c == -1) {
            i = m13327a(str);
        }
        if (i == -1) {
            return 6;
        }
        return i;
    }

    /* renamed from: c */
    public static int m13323c(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: c */
    public static boolean m13324c() {
        return f22856a >= 9;
    }
}
