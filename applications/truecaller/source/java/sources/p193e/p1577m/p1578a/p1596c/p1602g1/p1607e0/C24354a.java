package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24205g;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/a.class */
public final class C24354a implements AbstractC24408h {

    /* renamed from: a */
    public final C24356b f67730a = new C24356b(null);

    /* renamed from: b */
    public final C24798t f67731b = new C24798t(2786);

    /* renamed from: c */
    public boolean f67732c;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f67732c = false;
        this.f67730a.mo5184a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        int m5209f = c24353e.m5209f(this.f67731b.f69504a, 0, 2786);
        if (m5209f == -1) {
            return -1;
        }
        this.f67731b.m4547C(0);
        this.f67731b.m4548B(m5209f);
        if (!this.f67732c) {
            this.f67730a.f67752l = 0L;
            this.f67732c = true;
        }
        this.f67730a.mo5181d(this.f67731b);
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67730a.mo5180e(abstractC24409i, new AbstractC24361c0.C24365d(Integer.MIN_VALUE, 0, 1));
        abstractC24409i.mo4962g();
        abstractC24409i.mo4953s(new AbstractC24418q.C24420b(-9223372036854775807L, 0L));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        int i;
        C24798t c24798t = new C24798t(10);
        int i2 = 0;
        while (true) {
            c24353e.m5210e(c24798t.f69504a, 0, 10, false);
            c24798t.m4547C(0);
            if (c24798t.m4527s() != 4801587) {
                break;
            }
            c24798t.m4546D(3);
            int m4530p = c24798t.m4530p();
            i2 += m4530p + 10;
            c24353e.m5214a(m4530p, false);
        }
        c24353e.f67728f = 0;
        c24353e.m5214a(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            c24353e.m5210e(c24798t.f69504a, 0, 6, false);
            c24798t.m4547C(0);
            if (c24798t.m4524v() != 2935) {
                c24353e.f67728f = 0;
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                c24353e.m5214a(i4, false);
                i3 = 0;
            } else {
                int i5 = i3 + 1;
                if (i5 >= 4) {
                    return true;
                }
                byte[] bArr = c24798t.f69504a;
                if (bArr.length < 6) {
                    i = -1;
                } else {
                    i = ((bArr[5] & 248) >> 3) > 10 ? ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2 : C24205g.m5455a((bArr[4] & 192) >> 6, bArr[4] & 63);
                }
                if (i == -1) {
                    return false;
                }
                c24353e.m5214a(i - 6, false);
                i3 = i5;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
