package p246t9;

import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import p011aa.C0056i;
import p204p9.C4084b0;
import p204p9.C4121r;
/* renamed from: t9.e */
/* loaded from: classes2-dex2jar.jar:t9/e.class */
public final class C4436e {

    /* renamed from: a */
    public static final /* synthetic */ int f13787a = 0;

    static {
        C0056i.m8835f("\"\\");
        C0056i.m8835f("\t ,=");
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    public static long m933a(C4084b0 c4084b0) {
        char parseLong;
        String m1401c = c4084b0.f12802f.m1401c("Content-Length");
        if (m1401c != null) {
            try {
                parseLong = Long.parseLong(m1401c);
            } catch (NumberFormatException e) {
            }
            return parseLong;
        }
        parseLong = 65535;
        return parseLong;
    }

    /* renamed from: b */
    public static boolean m932b(C4084b0 c4084b0) {
        if (c4084b0.f12797a.f13042b.equals("HEAD")) {
            return false;
        }
        int i = c4084b0.f12799c;
        if (((i < 100 || i >= 200) && i != 204 && i != 304) || m933a(c4084b0) != -1) {
            return true;
        }
        String m1401c = c4084b0.f12802f.m1401c("Transfer-Encoding");
        if (m1401c == null) {
            m1401c = null;
        }
        return "chunked".equalsIgnoreCase(m1401c);
    }

    /* renamed from: c */
    public static int m931c(String str, int i) {
        long parseLong;
        try {
            parseLong = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        if (parseLong > 2147483647L) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (parseLong < 0) {
            return 0;
        }
        i = (int) parseLong;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x039c, code lost:
        if (r19 != 0) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x03b3, code lost:
        if (r19 == 0) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x03b6, code lost:
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x05c9, code lost:
        throw new java.lang.IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0143, code lost:
        if (r0 <= 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02e5, code lost:
        if (r0 > 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0350, code lost:
        if ((r0.equals(r37) || (r0.endsWith(r37) && r0.charAt((r0.length() - r37.length()) - 1) == '.' && !p214q9.C4171c.f13151h.matcher(r0).matches())) == false) goto L213;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v107, types: [byte[], byte[][], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v196, types: [java.util.concurrent.atomic.AtomicBoolean] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* JADX WARN: Type inference failed for: r0v238, types: [long] */
    /* JADX WARN: Type inference failed for: r0v250, types: [long] */
    /* JADX WARN: Type inference failed for: r0v285, types: [long] */
    /* JADX WARN: Type inference failed for: r1v67, types: [boolean] */
    /* JADX WARN: Type inference failed for: r29v4, types: [long] */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m930d(p204p9.AbstractC4111l r13, p204p9.C4123s r14, p204p9.C4121r r15) {
        /*
            Method dump skipped, instructions count: 1685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p246t9.C4436e.m930d(p9.l, p9.s, p9.r):void");
    }

    /* renamed from: e */
    public static int m929e(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: f */
    public static Set<String> m928f(C4121r c4121r) {
        Set<String> emptySet = Collections.emptySet();
        int m1398f = c4121r.m1398f();
        for (int i = 0; i < m1398f; i++) {
            if ("Vary".equalsIgnoreCase(c4121r.m1400d(i))) {
                String m1397g = c4121r.m1397g(i);
                TreeSet treeSet = emptySet;
                if (emptySet.isEmpty()) {
                    treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                String[] split = m1397g.split(",");
                int length = split.length;
                int i2 = 0;
                while (true) {
                    emptySet = treeSet;
                    if (i2 < length) {
                        treeSet.add(split[i2].trim());
                        i2++;
                    }
                }
            }
        }
        return emptySet;
    }
}
