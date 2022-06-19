package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24411k;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24413l;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/b.class */
public final class C24340b extends AbstractC24347h {

    /* renamed from: n */
    public C24787m f67676n;

    /* renamed from: o */
    public C24341a f67677o;

    /* renamed from: e.m.a.c.g1.d0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/b$a.class */
    public class C24341a implements AbstractC24345f {

        /* renamed from: a */
        public long f67678a = -1;

        /* renamed from: b */
        public long f67679b = -1;

        public C24341a() {
            C24340b.this = r5;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: a */
        public AbstractC24418q mo5221a() {
            C26232y.m2286x(this.f67678a != -1);
            return new C24413l(C24340b.this.f67676n, this.f67678a);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: b */
        public long mo5220b(C24353e c24353e) throws IOException, InterruptedException {
            long j = this.f67679b;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f67679b = -1L;
                return j2;
            }
            return -1L;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: d */
        public void mo5219d(long j) {
            Objects.requireNonNull(C24340b.this.f67676n.f69473k);
            long[] jArr = C24340b.this.f67676n.f69473k.f69475a;
            this.f67679b = jArr[C24773d0.m4621c(jArr, j, true, true)];
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: c */
    public long mo5217c(C24798t c24798t) {
        byte[] bArr = c24798t.f69504a;
        if (!(bArr[0] == -1)) {
            return -1L;
        }
        int i = (bArr[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c24798t.m4546D(4);
            c24798t.m4523w();
        }
        int m5153c = C24411k.m5153c(c24798t, i);
        c24798t.m4547C(0);
        return m5153c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: d */
    public boolean mo5216d(C24798t c24798t, long j, AbstractC24347h.C24349b c24349b) {
        byte[] bArr = c24798t.f69504a;
        if (this.f67676n == null) {
            this.f67676n = new C24787m(bArr, 17);
            c24349b.f67712a = this.f67676n.m4580e(Arrays.copyOfRange(bArr, 9, c24798t.f69506c), null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.f67677o = new C24341a();
            this.f67676n = this.f67676n.m4583b(C26232y.m2450J1(c24798t));
            return true;
        } else {
            if (!(bArr[0] == -1)) {
                return true;
            }
            C24341a c24341a = this.f67677o;
            if (c24341a == null) {
                return false;
            }
            c24341a.f67678a = j;
            c24349b.f67713b = c24341a;
            return false;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: e */
    public void mo5215e(boolean z) {
        super.mo5215e(z);
        if (z) {
            this.f67676n = null;
            this.f67677o = null;
        }
    }
}
