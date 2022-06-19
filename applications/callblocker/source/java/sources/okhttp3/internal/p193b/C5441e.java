package okhttp3.internal.p193b;

import java.util.List;
import java.util.regex.Pattern;
import okhttp3.AbstractC5527m;
import okhttp3.C5404ac;
import okhttp3.C5526l;
import okhttp3.C5539s;
import okhttp3.C5541t;
/* renamed from: okhttp3.internal.b.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/e.class */
public final class C5441e {

    /* renamed from: a */
    private static final Pattern f22732a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    /* renamed from: a */
    public static int m708a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static int m707a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: a */
    private static long m709a(String str) {
        char c;
        if (str == null) {
            c = 65535;
        } else {
            try {
                c = Long.parseLong(str);
            } catch (NumberFormatException e) {
                c = 65535;
            }
        }
        return c;
    }

    /* renamed from: a */
    public static long m706a(C5404ac c5404ac) {
        return m704a(c5404ac.m804e());
    }

    /* renamed from: a */
    public static long m704a(C5539s c5539s) {
        return m709a(c5539s.m282a("Content-Length"));
    }

    /* renamed from: a */
    public static void m705a(AbstractC5527m abstractC5527m, C5541t c5541t, C5539s c5539s) {
        if (abstractC5527m == AbstractC5527m.f23105a) {
            return;
        }
        List<C5526l> m329a = C5526l.m329a(c5541t, c5539s);
        if (m329a.isEmpty()) {
            return;
        }
        abstractC5527m.mo324a(c5541t, m329a);
    }

    /* renamed from: b */
    public static int m703b(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            i = parseLong > 2147483647L ? Integer.MAX_VALUE : parseLong < 0 ? 0 : (int) parseLong;
        } catch (NumberFormatException e) {
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m702b(C5404ac c5404ac) {
        boolean z = false;
        if (!c5404ac.m810a().m825b().equals("HEAD")) {
            int m807b = c5404ac.m807b();
            if ((m807b < 100 || m807b >= 200) && m807b != 204 && m807b != 304) {
                z = true;
            } else if (m706a(c5404ac) != -1 || "chunked".equalsIgnoreCase(c5404ac.m809a("Transfer-Encoding"))) {
                z = true;
            }
        }
        return z;
    }
}
