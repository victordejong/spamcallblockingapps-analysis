package p012b.p076s.p078b.p079a.p107x0.p109d;

import androidx.media2.exoplayer.external.ParserException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.x0.d.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/x0/d/b.class */
public final class C1651b {

    /* renamed from: a */
    public static final Pattern f6791a = Pattern.compile("^NOTE(( |\t).*)?$");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m32485a(java.lang.String r5) throws java.lang.NumberFormatException {
        /*
            r0 = r5
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34451b(r0, r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 0
            r0 = r0[r1]
            java.lang.String r1 = ":"
            java.lang.String[] r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34474a(r0, r1)
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0018:
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto L_0x0032
            r0 = r9
            r1 = 60
            long r0 = r0 * r1
            r1 = r5
            r2 = r7
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
            int r7 = r7 + 1
            goto L_0x0018
        L_0x0032:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 2
            if (r0 != r1) goto L_0x004f
            r0 = r11
            r1 = r6
            r2 = 1
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
        L_0x004f:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p107x0.p109d.C1651b.m32485a(java.lang.String):long");
    }

    /* renamed from: a */
    public static Matcher m32486a(C1184p pVar) {
        String h;
        while (true) {
            String h2 = pVar.m34354h();
            if (h2 == null) {
                return null;
            }
            if (f6791a.matcher(h2).matches()) {
                do {
                    h = pVar.m34354h();
                    if (h != null) {
                    }
                } while (!h.isEmpty());
            } else {
                Matcher matcher = C1650a.f6790a.matcher(h2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    /* renamed from: b */
    public static boolean m32484b(C1184p pVar) {
        String h = pVar.m34354h();
        return h != null && h.startsWith("WEBVTT");
    }

    /* renamed from: c */
    public static void m32483c(C1184p pVar) throws ParserException {
        int c = pVar.m34363c();
        if (!m32484b(pVar)) {
            pVar.m34358e(c);
            String valueOf = String.valueOf(pVar.m34354h());
            throw new ParserException(valueOf.length() != 0 ? "Expected WEBVTT. Got ".concat(valueOf) : new String("Expected WEBVTT. Got "));
        }
    }
}
