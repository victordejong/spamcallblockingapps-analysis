package okhttp3.internal.p092b;

import com.google.android.gms.common.api.Api;
import com.google.firebase.perf.FirebasePerformance;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.AbstractC2077m;
import okhttp3.C1955ab;
import okhttp3.C2076l;
import okhttp3.C2087r;
import okhttp3.C2089s;
/* renamed from: okhttp3.internal.b.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/e.class */
public final class C1991e {

    /* renamed from: a */
    private static final Pattern f4958a = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    /* renamed from: a */
    public static int m2390a(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static int m2389a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    private static long m2391a(String str) {
        char c;
        if (str == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str);
        } catch (NumberFormatException e) {
            c = 65535;
        }
        return c;
    }

    /* renamed from: a */
    public static long m2388a(C1955ab c1955ab) {
        return m2386a(c1955ab.m2487f());
    }

    /* renamed from: a */
    public static long m2386a(C2087r c2087r) {
        return m2391a(c2087r.m1968a("Content-Length"));
    }

    /* renamed from: a */
    public static void m2387a(AbstractC2077m abstractC2077m, C2089s c2089s, C2087r c2087r) {
        if (abstractC2077m == AbstractC2077m.f5331a) {
            return;
        }
        List<C2076l> m2011a = C2076l.m2011a(c2089s, c2087r);
        if (m2011a.isEmpty()) {
            return;
        }
        abstractC2077m.mo2006a(c2089s, m2011a);
    }

    /* renamed from: b */
    public static int m2385b(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            if (parseLong >= 0) {
                return (int) parseLong;
            }
            return 0;
        } catch (NumberFormatException e) {
            return i;
        }
    }

    /* renamed from: b */
    public static boolean m2384b(C1955ab c1955ab) {
        if (c1955ab.m2494a().m1821b().equals(FirebasePerformance.HttpMethod.HEAD)) {
            return false;
        }
        int m2491b = c1955ab.m2491b();
        return (((m2491b >= 100 && m2491b < 200) || m2491b == 204 || m2491b == 304) && m2388a(c1955ab) == -1 && !"chunked".equalsIgnoreCase(c1955ab.m2493a("Transfer-Encoding"))) ? false : true;
    }
}
