package com.google.android.exoplayer2.text.p345i;

import com.google.android.exoplayer2.util.C11628u;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.i.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/a.class */
final class C11406a {

    /* renamed from: a */
    private static final Pattern f37645a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b */
    private final C11628u f37646b = new C11628u();

    /* renamed from: c */
    private final StringBuilder f37647c = new StringBuilder();

    /* renamed from: a */
    private static String m20660a(C11628u c11628u, StringBuilder sb) {
        m20657c(c11628u);
        if (c11628u.m19812a() == 0) {
            return null;
        }
        String m20656c = m20656c(c11628u, sb);
        if (!"".equals(m20656c)) {
            return m20656c;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) c11628u.m19804c());
        return sb2.toString();
    }

    /* renamed from: b */
    private static String m20659b(C11628u c11628u) {
        int i = c11628u.f38734b;
        int i2 = c11628u.f38735c;
        boolean z = false;
        while (i < i2 && !z) {
            z = ((char) c11628u.f38733a[i]) == ')';
            i++;
        }
        return c11628u.m19797f((i - 1) - c11628u.f38734b).trim();
    }

    /* renamed from: b */
    private static String m20658b(C11628u c11628u, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int i = c11628u.f38734b;
            String m20660a = m20660a(c11628u, sb);
            if (m20660a == null) {
                return null;
            }
            if ("}".equals(m20660a) || ";".equals(m20660a)) {
                c11628u.m19801d(i);
                z = true;
            } else {
                sb2.append(m20660a);
            }
        }
        return sb2.toString();
    }

    /* renamed from: c */
    private static String m20656c(C11628u c11628u, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = c11628u.f38734b;
        int i2 = c11628u.f38735c;
        while (i < i2 && !z) {
            char c = (char) c11628u.f38733a[i];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c);
            }
        }
        c11628u.m19799e(i - c11628u.f38734b);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[LOOP:1: B:3:0x0002->B:39:0x00bf, LOOP_END] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m20657c(com.google.android.exoplayer2.util.C11628u r4) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p345i.C11406a.m20657c(com.google.android.exoplayer2.util.u):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
        if (")".equals(m20660a(r0, r0)) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0355 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0187  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.exoplayer2.text.p345i.C11409d> m20661a(com.google.android.exoplayer2.util.C11628u r7) {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p345i.C11406a.m20661a(com.google.android.exoplayer2.util.u):java.util.List");
    }
}
