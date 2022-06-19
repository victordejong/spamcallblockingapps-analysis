package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.t.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/a.class */
public final class C24618a {

    /* renamed from: c */
    public static final Pattern f68941c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: a */
    public final C24798t f68942a = new C24798t();

    /* renamed from: b */
    public final StringBuilder f68943b = new StringBuilder();

    /* renamed from: a */
    public static String m4829a(C24798t c24798t, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = c24798t.f69505b;
        int i2 = c24798t.f69506c;
        while (i < i2 && !z) {
            char c = (char) c24798t.f69504a[i];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c);
            }
        }
        c24798t.m4546D(i - c24798t.f69505b);
        return sb.toString();
    }

    /* renamed from: b */
    public static String m4828b(C24798t c24798t, StringBuilder sb) {
        m4827c(c24798t);
        if (c24798t.m4545a() == 0) {
            return null;
        }
        String m4829a = m4829a(c24798t, sb);
        if (!"".equals(m4829a)) {
            return m4829a;
        }
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append((char) c24798t.m4529q());
        return m8728C.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[LOOP:1: B:3:0x0002->B:39:0x00bf, LOOP_END] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4827c(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r4) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24618a.m4827c(e.m.a.c.q1.t):void");
    }
}
