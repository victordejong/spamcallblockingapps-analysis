package p193e.p1577m.p1578a.p1596c.p1602g1.p1603a0;

import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.a0.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a0/e.class */
public final class C24304e {

    /* renamed from: a */
    public final C24798t f67481a = new C24798t(8);

    /* renamed from: b */
    public int f67482b;

    /* renamed from: a */
    public final long m5278a(C24353e c24353e) throws IOException, InterruptedException {
        c24353e.m5210e(this.f67481a.f69504a, 0, 1, false);
        int i = this.f67481a.f69504a[0] & 255;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = i & (i2 ^ (-1));
        c24353e.m5210e(this.f67481a.f69504a, 1, i3, false);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            int i7 = i6;
            if (i5 >= i3) {
                this.f67482b = i3 + 1 + this.f67482b;
                return i7;
            }
            i5++;
            i6 = (this.f67481a.f69504a[i5] & 255) + (i7 << 8);
        }
    }
}
