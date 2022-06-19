package p193e.p194a.p1053m0.p1057c1;

import java.util.List;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.q */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/q.class */
public final class C18078q implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final List<Character> f51004a = i.T(new Character[]{'(', ')', '-', ' ', '+'});

    /* renamed from: b */
    public final boolean f51005b;

    public C18078q(boolean z, C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f51005b = z;
    }

    /* renamed from: a */
    public final String m15499a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!this.f51004a.contains(Character.valueOf(charAt))) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        l.d(sb2, "filterNotTo(StringBuilder(), predicate).toString()");
        return sb2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
        if (r14 != null) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0369 A[LOOP:5: B:101:0x0363->B:103:0x0369, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03a4 A[LOOP:6: B:105:0x039d->B:107:0x03a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0402 A[LOOP:7: B:109:0x03f8->B:111:0x0402, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0285 A[LOOP:2: B:83:0x027e->B:85:0x0285, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0306 A[LOOP:4: B:97:0x02fc->B:99:0x0306, LOOP_END] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor mo15459c(p193e.p194a.p372b0.p413i.AbstractC8448a r12, p193e.p194a.p372b0.p413i.p414e.C8456a r13, android.net.Uri r14, java.lang.String[] r15, java.lang.String r16, java.lang.String[] r17, java.lang.String r18, android.os.CancellationSignal r19) {
        /*
            Method dump skipped, instructions count: 1256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.p1057c1.C18078q.mo15459c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, android.os.CancellationSignal):android.database.Cursor");
    }
}
