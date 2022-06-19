package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import java.util.ArrayList;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27416b;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.y0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/a.class */
public final class C27447a {

    /* renamed from: a */
    public final List<byte[]> f77239a;

    /* renamed from: b */
    public final int f77240b;

    /* renamed from: c */
    public final int f77241c;

    /* renamed from: d */
    public final int f77242d;

    /* renamed from: e */
    public final float f77243e;

    public C27447a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f77239a = list;
        this.f77240b = i;
        this.f77241c = i2;
        this.f77242d = i3;
        this.f77243e = f;
    }

    /* renamed from: a */
    public static byte[] m260a(C27434m c27434m) {
        int m321t = c27434m.m321t();
        int i = c27434m.f77201b;
        c27434m.m341A(m321t);
        byte[] bArr = c27434m.f77200a;
        byte[] bArr2 = C27416b.f77152a;
        byte[] bArr3 = new byte[bArr2.length + m321t];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, m321t);
        return bArr3;
    }

    /* renamed from: b */
    public static C27447a m259b(C27434m c27434m) throws C27074c0 {
        float f;
        int i;
        int i2;
        try {
            c27434m.m341A(4);
            int m326o = (c27434m.m326o() & 3) + 1;
            if (m326o == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m326o2 = c27434m.m326o() & 31;
            for (int i3 = 0; i3 < m326o2; i3++) {
                arrayList.add(m260a(c27434m));
            }
            int m326o3 = c27434m.m326o();
            for (int i4 = 0; i4 < m326o3; i4++) {
                arrayList.add(m260a(c27434m));
            }
            if (m326o2 > 0) {
                C27430k.C27432b m353d = C27430k.m353d((byte[]) arrayList.get(0), m326o, ((byte[]) arrayList.get(0)).length);
                int i5 = m353d.f77187e;
                int i6 = m353d.f77188f;
                f = m353d.f77189g;
                i2 = i5;
                i = i6;
            } else {
                f = 1.0f;
                i2 = -1;
                i = -1;
            }
            return new C27447a(arrayList, m326o, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new C27074c0("Error parsing AVC config", e);
        }
    }
}
