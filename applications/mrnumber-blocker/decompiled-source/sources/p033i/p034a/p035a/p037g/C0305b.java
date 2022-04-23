package p033i.p034a.p035a.p037g;
/* renamed from: i.a.a.g.b */
/* loaded from: classes2-dex2jar.jar:i/a/a/g/b.class */
public final class C0305b {
    /* renamed from: a */
    private static boolean m439a(char c) {
        return c >= ' ' && c <= '~';
    }

    /* renamed from: b */
    public static boolean m438b(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!m439a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m437c(String str) {
        if (str.isEmpty() || str.length() > 255) {
            return false;
        }
        return str.matches("[aA-zZ][aA-zZ0-9_\\-.]*");
    }
}
