package androidx.media2.exoplayer.external.text.h;

import androidx.media2.exoplayer.external.util.p;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3910a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b  reason: collision with root package name */
    private final p f3911b = new p();

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f3912c = new StringBuilder();

    private static String a(p pVar, StringBuilder sb) {
        c(pVar);
        if (pVar.b() == 0) {
            return null;
        }
        String c2 = c(pVar, sb);
        if (!"".equals(c2)) {
            return c2;
        }
        char c3 = (char) pVar.c();
        StringBuilder sb2 = new StringBuilder(1);
        sb2.append(c3);
        return sb2.toString();
    }

    private static String b(p pVar) {
        int i = pVar.f4167b;
        int i2 = pVar.f4168c;
        boolean z = false;
        while (i < i2 && !z) {
            z = ((char) pVar.f4166a[i]) == ')';
            i++;
        }
        return pVar.e((i - 1) - pVar.f4167b).trim();
    }

    private static String b(p pVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int i = pVar.f4167b;
            String a2 = a(pVar, sb);
            if (a2 == null) {
                return null;
            }
            if ("}".equals(a2) || ";".equals(a2)) {
                pVar.c(i);
                z = true;
            } else {
                sb2.append(a2);
            }
        }
        return sb2.toString();
    }

    private static String c(p pVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = pVar.f4167b;
        int i2 = pVar.f4168c;
        while (i < i2 && !z) {
            char c2 = (char) pVar.f4166a[i];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c2);
            }
        }
        pVar.d(i - pVar.f4167b);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[LOOP:1: B:3:0x0002->B:39:0x00bf, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(androidx.media2.exoplayer.external.util.p r4) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.h.a.c(androidx.media2.exoplayer.external.util.p):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
        if (")".equals(a(r0, r0)) == false) goto L_0x0055;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02e2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<androidx.media2.exoplayer.external.text.h.d> a(androidx.media2.exoplayer.external.util.p r6) {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.h.a.a(androidx.media2.exoplayer.external.util.p):java.util.List");
    }
}
