package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.y0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/c.class */
public final class C27449c {

    /* renamed from: a */
    public final List<byte[]> f77245a;

    /* renamed from: b */
    public final int f77246b;

    public C27449c(List<byte[]> list, int i) {
        this.f77245a = list;
        this.f77246b = i;
    }

    /* renamed from: a */
    public static C27449c m258a(C27434m c27434m) throws C27074c0 {
        try {
            c27434m.m341A(21);
            int m326o = c27434m.m326o();
            int m326o2 = c27434m.m326o();
            int i = c27434m.f77201b;
            int i2 = 0;
            for (int i3 = 0; i3 < m326o2; i3++) {
                c27434m.m341A(1);
                int m321t = c27434m.m321t();
                for (int i4 = 0; i4 < m321t; i4++) {
                    int m321t2 = c27434m.m321t();
                    i2 += m321t2 + 4;
                    c27434m.m341A(m321t2);
                }
            }
            c27434m.m315z(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < m326o2; i6++) {
                c27434m.m341A(1);
                int m321t3 = c27434m.m321t();
                for (int i7 = 0; i7 < m321t3; i7++) {
                    int m321t4 = c27434m.m321t();
                    byte[] bArr2 = C27430k.f77176a;
                    System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                    int length = i5 + bArr2.length;
                    System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, length, m321t4);
                    i5 = length + m321t4;
                    c27434m.m341A(m321t4);
                }
            }
            return new C27449c(i2 == 0 ? null : Collections.singletonList(bArr), (m326o & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new C27074c0("Error parsing HEVC config", e);
        }
    }
}
