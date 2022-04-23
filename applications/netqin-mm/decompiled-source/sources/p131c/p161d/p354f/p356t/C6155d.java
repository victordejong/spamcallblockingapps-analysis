package p131c.p161d.p354f.p356t;
/* renamed from: c.d.f.t.d */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/d.class */
public final class C6155d {

    /* renamed from: a */
    public static final int f19672a = m21923a();

    /* renamed from: a */
    public static int m21923a() {
        return m21920b(System.getProperty("java.version"));
    }

    /* renamed from: a */
    public static int m21922a(String str) {
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
    public static int m21921b() {
        return f19672a;
    }

    /* renamed from: b */
    public static int m21920b(String str) {
        int c = m21918c(str);
        int i = c;
        if (c == -1) {
            i = m21922a(str);
        }
        if (i == -1) {
            return 6;
        }
        return i;
    }

    /* renamed from: c */
    public static int m21918c(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: c */
    public static boolean m21919c() {
        return f19672a >= 9;
    }
}
