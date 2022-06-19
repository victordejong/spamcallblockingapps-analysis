package p193e.p1577m.p1578a.p1596c.p1637r1;

import java.util.ArrayList;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24777g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.r1.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/h.class */
public final class C24819h {

    /* renamed from: a */
    public final List<byte[]> f69557a;

    /* renamed from: b */
    public final int f69558b;

    /* renamed from: c */
    public final int f69559c;

    /* renamed from: d */
    public final int f69560d;

    /* renamed from: e */
    public final float f69561e;

    public C24819h(List<byte[]> list, int i, int i2, int i3, float f) {
        this.f69557a = list;
        this.f69558b = i;
        this.f69559c = i2;
        this.f69560d = i3;
        this.f69561e = f;
    }

    /* renamed from: a */
    public static byte[] m4485a(C24798t c24798t) {
        int m4524v = c24798t.m4524v();
        int i = c24798t.f69505b;
        c24798t.m4546D(m4524v);
        byte[] bArr = c24798t.f69504a;
        byte[] bArr2 = C24777g.f69444a;
        byte[] bArr3 = new byte[bArr2.length + m4524v];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, m4524v);
        return bArr3;
    }

    /* renamed from: b */
    public static C24819h m4484b(C24798t c24798t) throws C24560m0 {
        float f;
        int i;
        int i2;
        try {
            c24798t.m4546D(4);
            int m4529q = (c24798t.m4529q() & 3) + 1;
            if (m4529q == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int m4529q2 = c24798t.m4529q() & 31;
            for (int i3 = 0; i3 < m4529q2; i3++) {
                arrayList.add(m4485a(c24798t));
            }
            int m4529q3 = c24798t.m4529q();
            for (int i4 = 0; i4 < m4529q3; i4++) {
                arrayList.add(m4485a(c24798t));
            }
            if (m4529q2 > 0) {
                C24794r.C24796b m4563d = C24794r.m4563d((byte[]) arrayList.get(0), m4529q, ((byte[]) arrayList.get(0)).length);
                i = m4563d.f69491e;
                i2 = m4563d.f69492f;
                f = m4563d.f69493g;
            } else {
                f = 1.0f;
                i = -1;
                i2 = -1;
            }
            return new C24819h(arrayList, m4529q, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new C24560m0("Error parsing AVC config", e);
        }
    }
}
