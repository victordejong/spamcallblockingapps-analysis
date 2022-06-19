package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/c.class */
public class C24342c implements AbstractC24408h {

    /* renamed from: a */
    public AbstractC24409i f67681a;

    /* renamed from: b */
    public AbstractC24347h f67682b;

    /* renamed from: c */
    public boolean f67683c;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        AbstractC24347h abstractC24347h = this.f67682b;
        if (abstractC24347h != null) {
            C24343d c24343d = abstractC24347h.f67699a;
            c24343d.f67684a.m5224b();
            c24343d.f67685b.m4522x();
            c24343d.f67686c = -1;
            c24343d.f67688e = false;
            if (j == 0) {
                abstractC24347h.mo5215e(!abstractC24347h.f67710l);
            } else if (abstractC24347h.f67706h == 0) {
            } else {
                long j3 = (abstractC24347h.f67707i * j2) / 1000000;
                abstractC24347h.f67703e = j3;
                abstractC24347h.f67702d.mo5219d(j3);
                abstractC24347h.f67706h = 2;
            }
        }
    }

    /* renamed from: b */
    public final boolean m5228b(C24353e c24353e) throws IOException, InterruptedException {
        boolean z;
        boolean z2;
        C24344e c24344e = new C24344e();
        if (!c24344e.m5225a(c24353e, true) || (c24344e.f67690b & 2) != 2) {
            return false;
        }
        int min = Math.min(c24344e.f67694f, 8);
        C24798t c24798t = new C24798t(min);
        c24353e.m5210e(c24798t.f69504a, 0, min, false);
        c24798t.m4547C(0);
        if (c24798t.m4545a() >= 5 && c24798t.m4529q() == 127 && c24798t.m4528r() == 1179402563) {
            this.f67682b = new C24340b();
            return true;
        }
        c24798t.m4547C(0);
        try {
            z = C26232y.m2356f2(1, c24798t, true);
        } catch (C24560m0 e) {
            z = false;
        }
        if (z) {
            this.f67682b = new C24351i();
            return true;
        }
        c24798t.m4547C(0);
        int m4545a = c24798t.m4545a();
        byte[] bArr = C24346g.f67697o;
        if (m4545a < bArr.length) {
            z2 = false;
        } else {
            byte[] bArr2 = new byte[bArr.length];
            int length = bArr.length;
            System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr2, 0, length);
            c24798t.f69505b += length;
            z2 = Arrays.equals(bArr2, bArr);
        }
        if (!z2) {
            return false;
        }
        this.f67682b = new C24346g();
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        int i = 0;
        if (this.f67682b == null) {
            if (!m5228b(c24353e)) {
                throw new C24560m0("Failed to determine bitstream type");
            }
            c24353e.f67728f = 0;
        }
        if (!this.f67683c) {
            AbstractC24422s mo4960i = this.f67681a.mo4960i(0, 1);
            this.f67681a.mo4962g();
            AbstractC24347h abstractC24347h = this.f67682b;
            abstractC24347h.f67701c = this.f67681a;
            abstractC24347h.f67700b = mo4960i;
            abstractC24347h.mo5215e(true);
            this.f67683c = true;
        }
        AbstractC24347h abstractC24347h2 = this.f67682b;
        int i2 = abstractC24347h2.f67706h;
        if (i2 != 0) {
            if (i2 == 1) {
                c24353e.m5206i((int) abstractC24347h2.f67704f);
                abstractC24347h2.f67706h = 2;
            } else if (i2 != 2) {
                throw new IllegalStateException();
            } else {
                long mo5220b = abstractC24347h2.f67702d.mo5220b(c24353e);
                if (mo5220b < 0) {
                    if (mo5220b < -1) {
                        abstractC24347h2.mo5218b(-(mo5220b + 2));
                    }
                    if (!abstractC24347h2.f67710l) {
                        abstractC24347h2.f67701c.mo4953s(abstractC24347h2.f67702d.mo5221a());
                        abstractC24347h2.f67710l = true;
                    }
                    if (abstractC24347h2.f67709k <= 0 && !abstractC24347h2.f67699a.m5226b(c24353e)) {
                        abstractC24347h2.f67706h = 3;
                        i = -1;
                        break;
                    }
                    abstractC24347h2.f67709k = 0L;
                    C24798t c24798t = abstractC24347h2.f67699a.f67685b;
                    long mo5217c = abstractC24347h2.mo5217c(c24798t);
                    if (mo5217c >= 0) {
                        long j = abstractC24347h2.f67705g;
                        if (j + mo5217c >= abstractC24347h2.f67703e) {
                            abstractC24347h2.f67700b.mo4929a(c24798t, c24798t.f69506c);
                            abstractC24347h2.f67700b.mo4927c((j * 1000000) / abstractC24347h2.f67707i, 1, c24798t.f69506c, 0, null);
                            abstractC24347h2.f67703e = -1L;
                        }
                    }
                    abstractC24347h2.f67705g += mo5217c;
                } else {
                    c24417p.f68116a = mo5220b;
                    i = 1;
                }
            }
            return i;
        }
        boolean z = true;
        while (z) {
            if (!abstractC24347h2.f67699a.m5226b(c24353e)) {
                abstractC24347h2.f67706h = 3;
                i = -1;
                break;
            }
            long j2 = c24353e.f67726d;
            long j3 = abstractC24347h2.f67704f;
            abstractC24347h2.f67709k = j2 - j3;
            boolean mo5216d = abstractC24347h2.mo5216d(abstractC24347h2.f67699a.f67685b, j3, abstractC24347h2.f67708j);
            z = mo5216d;
            if (mo5216d) {
                abstractC24347h2.f67704f = c24353e.f67726d;
                z = mo5216d;
            }
        }
        Format format = abstractC24347h2.f67708j.f67712a;
        abstractC24347h2.f67707i = format.f4861w;
        if (!abstractC24347h2.f67711m) {
            abstractC24347h2.f67700b.mo4928b(format);
            abstractC24347h2.f67711m = true;
        }
        AbstractC24345f abstractC24345f = abstractC24347h2.f67708j.f67713b;
        if (abstractC24345f != null) {
            abstractC24347h2.f67702d = abstractC24345f;
        } else {
            long j4 = c24353e.f67725c;
            if (j4 == -1) {
                abstractC24347h2.f67702d = new AbstractC24347h.C24350c(null);
            } else {
                C24344e c24344e = abstractC24347h2.f67699a.f67684a;
                abstractC24347h2.f67702d = new C24337a(abstractC24347h2, abstractC24347h2.f67704f, j4, c24344e.f67693e + c24344e.f67694f, c24344e.f67691c, (c24344e.f67690b & 4) != 0);
            }
        }
        abstractC24347h2.f67708j = null;
        abstractC24347h2.f67706h = 2;
        C24798t c24798t2 = abstractC24347h2.f67699a.f67685b;
        byte[] bArr = c24798t2.f69504a;
        if (bArr.length != 65025) {
            c24798t2.f69504a = Arrays.copyOf(bArr, Math.max(65025, c24798t2.f69506c));
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67681a = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        try {
            return m5228b(c24353e);
        } catch (C24560m0 e) {
            return false;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
