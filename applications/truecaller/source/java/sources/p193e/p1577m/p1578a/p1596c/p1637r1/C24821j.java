package p193e.p1577m.p1578a.p1596c.p1637r1;

import java.util.Collections;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.r1.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/j.class */
public final class C24821j {

    /* renamed from: a */
    public final List<byte[]> f69563a;

    /* renamed from: b */
    public final int f69564b;

    public C24821j(List<byte[]> list, int i) {
        this.f69563a = list;
        this.f69564b = i;
    }

    /* renamed from: a */
    public static C24821j m4483a(C24798t c24798t) throws C24560m0 {
        try {
            c24798t.m4546D(21);
            int m4529q = c24798t.m4529q();
            int m4529q2 = c24798t.m4529q();
            int i = c24798t.f69505b;
            int i2 = 0;
            for (int i3 = 0; i3 < m4529q2; i3++) {
                c24798t.m4546D(1);
                int m4524v = c24798t.m4524v();
                for (int i4 = 0; i4 < m4524v; i4++) {
                    int m4524v2 = c24798t.m4524v();
                    i2 += m4524v2 + 4;
                    c24798t.m4546D(m4524v2);
                }
            }
            c24798t.m4547C(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < m4529q2; i6++) {
                c24798t.m4546D(1);
                int m4524v3 = c24798t.m4524v();
                for (int i7 = 0; i7 < m4524v3; i7++) {
                    int m4524v4 = c24798t.m4524v();
                    byte[] bArr2 = C24794r.f69480a;
                    System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                    int length = i5 + bArr2.length;
                    System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, length, m4524v4);
                    i5 = length + m4524v4;
                    c24798t.m4546D(m4524v4);
                }
            }
            return new C24821j(i2 == 0 ? null : Collections.singletonList(bArr), (m4529q & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new C24560m0("Error parsing HEVC config", e);
        }
    }
}
