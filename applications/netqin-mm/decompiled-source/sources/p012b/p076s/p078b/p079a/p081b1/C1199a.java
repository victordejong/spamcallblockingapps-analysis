package p012b.p076s.p078b.p079a.p081b1;

import androidx.media2.exoplayer.external.ParserException;
import java.util.ArrayList;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1164c;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.b1.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/a.class */
public final class C1199a {

    /* renamed from: a */
    public final List<byte[]> f4795a;

    /* renamed from: b */
    public final int f4796b;

    /* renamed from: c */
    public final int f4797c;

    /* renamed from: d */
    public final int f4798d;

    /* renamed from: e */
    public final float f4799e;

    public C1199a(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f4795a = list;
        this.f4796b = i;
        this.f4797c = i2;
        this.f4798d = i3;
        this.f4799e = f;
    }

    /* renamed from: a */
    public static byte[] m34270a(C1184p pVar) {
        int x = pVar.m34338x();
        int c = pVar.m34363c();
        pVar.m34356f(x);
        return C1164c.m34503a(pVar.f4738a, c, x);
    }

    /* renamed from: b */
    public static C1199a m34269b(C1184p pVar) throws ParserException {
        float f;
        int i;
        int i2;
        try {
            pVar.m34356f(4);
            int r = (pVar.m34344r() & 3) + 1;
            if (r != 3) {
                ArrayList arrayList = new ArrayList();
                int r2 = pVar.m34344r() & 31;
                for (int i3 = 0; i3 < r2; i3++) {
                    arrayList.add(m34270a(pVar));
                }
                int r3 = pVar.m34344r();
                for (int i4 = 0; i4 < r3; i4++) {
                    arrayList.add(m34270a(pVar));
                }
                if (r2 > 0) {
                    C1180n.C1182b c = C1180n.m34387c((byte[]) arrayList.get(0), r, ((byte[]) arrayList.get(0)).length);
                    i2 = c.f4725e;
                    i = c.f4726f;
                    f = c.f4727g;
                } else {
                    i2 = -1;
                    i = -1;
                    f = 1.0f;
                }
                return new C1199a(arrayList, r, i2, i, f);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing AVC config", e);
        }
    }
}
