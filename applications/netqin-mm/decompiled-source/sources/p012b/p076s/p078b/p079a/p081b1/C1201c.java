package p012b.p076s.p078b.p079a.p081b1;

import androidx.media2.exoplayer.external.ParserException;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.b1.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/c.class */
public final class C1201c {

    /* renamed from: a */
    public final List<byte[]> f4801a;

    /* renamed from: b */
    public final int f4802b;

    public C1201c(List<byte[]> list, int i) {
        this.f4801a = list;
        this.f4802b = i;
    }

    /* renamed from: a */
    public static C1201c m34267a(C1184p pVar) throws ParserException {
        try {
            pVar.m34356f(21);
            int r = pVar.m34344r();
            int r2 = pVar.m34344r();
            int c = pVar.m34363c();
            int i = 0;
            for (int i2 = 0; i2 < r2; i2++) {
                pVar.m34356f(1);
                int x = pVar.m34338x();
                for (int i3 = 0; i3 < x; i3++) {
                    int x2 = pVar.m34338x();
                    i += x2 + 4;
                    pVar.m34356f(x2);
                }
            }
            pVar.m34358e(c);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < r2; i5++) {
                pVar.m34356f(1);
                int x3 = pVar.m34338x();
                for (int i6 = 0; i6 < x3; i6++) {
                    int x4 = pVar.m34338x();
                    System.arraycopy(C1180n.f4714a, 0, bArr, i4, C1180n.f4714a.length);
                    int length = i4 + C1180n.f4714a.length;
                    System.arraycopy(pVar.f4738a, pVar.m34363c(), bArr, length, x4);
                    i4 = length + x4;
                    pVar.m34356f(x4);
                }
            }
            return new C1201c(i == 0 ? null : Collections.singletonList(bArr), (r & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
