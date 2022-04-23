package p131c.p368e.p369a.p370a;
/* renamed from: c.e.a.a.a */
/* loaded from: classes2-dex2jar.jar:c/e/a/a/a.class */
public class C6394a {

    /* renamed from: a */
    public static final char[] f20058a = {'.', '-', '_', ':'};

    /* renamed from: b */
    public static final boolean[] f20059b = new boolean[128];

    static {
        for (char c = 0; c < 128; c = (char) (c + 1)) {
            f20059b[c] = m20988c(c);
        }
        "<!--".toCharArray();
        "-->".toCharArray();
        "<?".toCharArray();
        "?>".toCharArray();
        "<!DOCTYPE".toCharArray();
        "<?xml".toCharArray();
        "encoding".toCharArray();
        "version".toCharArray();
        "<!".toCharArray();
        "&#".toCharArray();
        "<!ENTITY".toCharArray();
        "NDATA".toCharArray();
        "SYSTEM".toCharArray();
        "PUBLIC".toCharArray();
        "<![CDATA[".toCharArray();
        "]]>".toCharArray();
        "/>".toCharArray();
        "</".toCharArray();
    }

    /* renamed from: a */
    public static boolean m20991a(char c) {
        if (c == 183 || c == 903 || c == 1600 || c == 3654 || c == 3782 || c == 12293 || c == 720 || c == 721 || c == 12445 || c == 12446) {
            return true;
        }
        switch (c) {
            case 12337:
            case 12338:
            case 12339:
            case 12340:
            case 12341:
                return true;
            default:
                switch (c) {
                    case 12540:
                    case 12541:
                    case 12542:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* renamed from: a */
    public static final boolean m20990a(char c, char[] cArr) {
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m20989b(char c) {
        return "abcdefghijklmnopqrstuvwxyz".indexOf(Character.toLowerCase(c)) != -1;
    }

    /* renamed from: c */
    public static boolean m20988c(char c) {
        return Character.isDigit(c) || m20989b(c) || m20990a(c, f20058a) || m20991a(c);
    }

    /* renamed from: a */
    public AbstractC6395b m20992a() {
        throw null;
    }
}
