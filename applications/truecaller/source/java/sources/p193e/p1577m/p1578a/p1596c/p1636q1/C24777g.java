package p193e.p1577m.p1578a.p1596c.p1636q1;

import android.util.Pair;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24560m0;
/* renamed from: e.m.a.c.q1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/g.class */
public final class C24777g {

    /* renamed from: a */
    public static final byte[] f69444a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final int[] f69445b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, JosStatusCodes.RTN_CODE_COMMON_ERROR, 7350};

    /* renamed from: c */
    public static final int[] f69446c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    public static int m4594a(C24797s c24797s) {
        int i;
        int m4556f = c24797s.m4556f(4);
        if (m4556f == 15) {
            i = c24797s.m4556f(24);
        } else {
            C26232y.m2310r(m4556f < 13);
            i = f69445b[m4556f];
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
        if (r8 == 29) goto L9;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m4593b(p193e.p1577m.p1578a.p1596c.p1636q1.C24797s r5, boolean r6) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1636q1.C24777g.m4593b(e.m.a.c.q1.s, boolean):android.util.Pair");
    }

    /* renamed from: c */
    public static Pair<Integer, Integer> m4592c(byte[] bArr) throws C24560m0 {
        return m4593b(new C24797s(bArr), false);
    }
}
