package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/c.class */
public final class C24360c implements AbstractC24408h {

    /* renamed from: a */
    public final C24366d f67778a = new C24366d(null);

    /* renamed from: b */
    public final C24798t f67779b = new C24798t(16384);

    /* renamed from: c */
    public boolean f67780c;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f67780c = false;
        this.f67778a.mo5184a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        int m5209f = c24353e.m5209f(this.f67779b.f69504a, 0, 16384);
        if (m5209f == -1) {
            return -1;
        }
        this.f67779b.m4547C(0);
        this.f67779b.m4548B(m5209f);
        if (!this.f67780c) {
            this.f67778a.f67804m = 0L;
            this.f67780c = true;
        }
        this.f67778a.mo5181d(this.f67779b);
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67778a.mo5180e(abstractC24409i, new AbstractC24361c0.C24365d(Integer.MIN_VALUE, 0, 1));
        abstractC24409i.mo4962g();
        abstractC24409i.mo4953s(new AbstractC24418q.C24420b(-9223372036854775807L, 0L));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        int i;
        int i2;
        int i3;
        C24798t c24798t = new C24798t(10);
        int i4 = 0;
        while (true) {
            c24353e.m5210e(c24798t.f69504a, 0, 10, false);
            c24798t.m4547C(0);
            if (c24798t.m4527s() != 4801587) {
                break;
            }
            c24798t.m4546D(3);
            int m4530p = c24798t.m4530p();
            i4 += m4530p + 10;
            c24353e.m5214a(m4530p, false);
        }
        c24353e.f67728f = 0;
        c24353e.m5214a(i4, false);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            c24353e.m5210e(c24798t.f69504a, 0, 7, false);
            c24798t.m4547C(0);
            int m4524v = c24798t.m4524v();
            if (m4524v == 44096 || m4524v == 44097) {
                int i7 = i5 + 1;
                if (i7 >= 4) {
                    return true;
                }
                byte[] bArr = c24798t.f69504a;
                if (bArr.length < 7) {
                    i = -1;
                } else {
                    int i8 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i8 == 65535) {
                        i3 = 7;
                        i2 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i3 = 4;
                        i2 = i8;
                    }
                    int i9 = i3;
                    if (m4524v == 44097) {
                        i9 = i3 + 2;
                    }
                    i = i2 + i9;
                }
                if (i == -1) {
                    return false;
                }
                c24353e.m5214a(i - 7, false);
                i5 = i7;
            } else {
                c24353e.f67728f = 0;
                i6++;
                if (i6 - i4 >= 8192) {
                    return false;
                }
                c24353e.m5214a(i6, false);
                i5 = 0;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
