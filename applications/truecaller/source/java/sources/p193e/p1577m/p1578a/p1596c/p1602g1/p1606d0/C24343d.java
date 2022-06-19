package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/d.class */
public final class C24343d {

    /* renamed from: a */
    public final C24344e f67684a = new C24344e();

    /* renamed from: b */
    public final C24798t f67685b = new C24798t(new byte[65025], 0);

    /* renamed from: c */
    public int f67686c = -1;

    /* renamed from: d */
    public int f67687d;

    /* renamed from: e */
    public boolean f67688e;

    /* renamed from: a */
    public final int m5227a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f67687d = 0;
        do {
            int i5 = this.f67687d;
            C24344e c24344e = this.f67684a;
            i2 = i4;
            if (i + i5 >= c24344e.f67692d) {
                break;
            }
            int[] iArr = c24344e.f67695g;
            this.f67687d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: b */
    public boolean m5226b(C24353e c24353e) throws IOException, InterruptedException {
        int i;
        C26232y.m2286x(c24353e != null);
        if (this.f67688e) {
            this.f67688e = false;
            this.f67685b.m4522x();
        }
        while (!this.f67688e) {
            if (this.f67686c < 0) {
                if (!this.f67684a.m5225a(c24353e, true)) {
                    return false;
                }
                C24344e c24344e = this.f67684a;
                int i2 = c24344e.f67693e;
                if ((c24344e.f67690b & 1) == 1 && this.f67685b.f69506c == 0) {
                    i2 += m5227a(0);
                    i = this.f67687d + 0;
                } else {
                    i = 0;
                }
                c24353e.m5206i(i2);
                this.f67686c = i;
            }
            int m5227a = m5227a(this.f67686c);
            int i3 = this.f67686c + this.f67687d;
            if (m5227a > 0) {
                C24798t c24798t = this.f67685b;
                byte[] bArr = c24798t.f69504a;
                int length = bArr.length;
                int i4 = c24798t.f69506c;
                if (length < i4 + m5227a) {
                    c24798t.f69504a = Arrays.copyOf(bArr, i4 + m5227a);
                }
                C24798t c24798t2 = this.f67685b;
                c24353e.m5207h(c24798t2.f69504a, c24798t2.f69506c, m5227a, false);
                C24798t c24798t3 = this.f67685b;
                c24798t3.m4548B(c24798t3.f69506c + m5227a);
                this.f67688e = this.f67684a.f67695g[i3 - 1] != 255;
            }
            int i5 = i3;
            if (i3 == this.f67684a.f67692d) {
                i5 = -1;
            }
            this.f67686c = i5;
        }
        return true;
    }
}
