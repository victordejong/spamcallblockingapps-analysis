package androidx.media2.exoplayer.external.text.p078h;

import androidx.media2.exoplayer.external.util.C2018p;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.text.h.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/a.class */
final class C1906a {

    /* renamed from: a */
    private static final Pattern f7662a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b */
    private final C2018p f7663b = new C2018p();

    /* renamed from: c */
    private final StringBuilder f7664c = new StringBuilder();

    /* renamed from: a */
    private static String m41912a(C2018p c2018p, StringBuilder sb) {
        m41909c(c2018p);
        if (c2018p.m41536b() == 0) {
            return null;
        }
        String m41908c = m41908c(c2018p, sb);
        if (!"".equals(m41908c)) {
            return m41908c;
        }
        char m41534c = (char) c2018p.m41534c();
        StringBuilder sb2 = new StringBuilder(1);
        sb2.append(m41534c);
        return sb2.toString();
    }

    /* renamed from: b */
    private static String m41911b(C2018p c2018p) {
        int i = c2018p.f8132b;
        int i2 = c2018p.f8133c;
        boolean z = false;
        while (i < i2 && !z) {
            z = ((char) c2018p.f8131a[i]) == ')';
            i++;
        }
        return c2018p.m41529e((i - 1) - c2018p.f8132b).trim();
    }

    /* renamed from: b */
    private static String m41910b(C2018p c2018p, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int i = c2018p.f8132b;
            String m41912a = m41912a(c2018p, sb);
            if (m41912a == null) {
                return null;
            }
            if ("}".equals(m41912a) || ";".equals(m41912a)) {
                c2018p.m41533c(i);
                z = true;
            } else {
                sb2.append(m41912a);
            }
        }
        return sb2.toString();
    }

    /* renamed from: c */
    private static String m41908c(C2018p c2018p, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = c2018p.f8132b;
        int i2 = c2018p.f8133c;
        while (i < i2 && !z) {
            char c = (char) c2018p.f8131a[i];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c);
            }
        }
        c2018p.m41531d(i - c2018p.f8132b);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[LOOP:1: B:3:0x0002->B:39:0x00bf, LOOP_END] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m41909c(androidx.media2.exoplayer.external.util.C2018p r4) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p078h.C1906a.m41909c(androidx.media2.exoplayer.external.util.p):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
        if (")".equals(m41912a(r0, r0)) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02e2 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<androidx.media2.exoplayer.external.text.p078h.C1909d> m41913a(androidx.media2.exoplayer.external.util.C2018p r6) {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p078h.C1906a.m41913a(androidx.media2.exoplayer.external.util.p):java.util.List");
    }
}
