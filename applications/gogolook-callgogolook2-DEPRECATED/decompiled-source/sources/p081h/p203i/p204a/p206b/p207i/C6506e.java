package p081h.p203i.p204a.p206b.p207i;
/* renamed from: h.i.a.b.i.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/e.class */
public final class C6506e {
    /* renamed from: a */
    public static String m22443a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
