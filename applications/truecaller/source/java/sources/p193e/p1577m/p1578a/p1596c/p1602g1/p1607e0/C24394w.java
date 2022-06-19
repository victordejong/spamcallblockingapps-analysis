package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/w.class */
public final class C24394w implements AbstractC24361c0 {

    /* renamed from: a */
    public final AbstractC24393v f68040a;

    /* renamed from: b */
    public final C24798t f68041b = new C24798t(32);

    /* renamed from: c */
    public int f68042c;

    /* renamed from: d */
    public int f68043d;

    /* renamed from: e */
    public boolean f68044e;

    /* renamed from: f */
    public boolean f68045f;

    public C24394w(AbstractC24393v abstractC24393v) {
        this.f68040a = abstractC24393v;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: a */
    public void mo5169a() {
        this.f68045f = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: b */
    public void mo5168b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        this.f68040a.mo5165b(c24771c0, abstractC24409i, c24365d);
        this.f68045f = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: c */
    public void mo5167c(C24798t c24798t, int i) {
        boolean z = (i & 1) != 0;
        int m4529q = z ? c24798t.f69505b + c24798t.m4529q() : -1;
        if (this.f68045f) {
            if (!z) {
                return;
            }
            this.f68045f = false;
            c24798t.m4547C(m4529q);
            this.f68043d = 0;
        }
        while (c24798t.m4545a() > 0) {
            int i2 = this.f68043d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m4529q2 = c24798t.m4529q();
                    c24798t.m4547C(c24798t.f69505b - 1);
                    if (m4529q2 == 255) {
                        this.f68045f = true;
                        return;
                    }
                }
                int min = Math.min(c24798t.m4545a(), 3 - this.f68043d);
                c24798t.m4542d(this.f68041b.f69504a, this.f68043d, min);
                int i3 = this.f68043d + min;
                this.f68043d = i3;
                if (i3 == 3) {
                    this.f68041b.m4521y(3);
                    this.f68041b.m4546D(1);
                    int m4529q3 = this.f68041b.m4529q();
                    int m4529q4 = this.f68041b.m4529q();
                    this.f68044e = (m4529q3 & 128) != 0;
                    int i4 = (((m4529q3 & 15) << 8) | m4529q4) + 3;
                    this.f68042c = i4;
                    C24798t c24798t2 = this.f68041b;
                    byte[] bArr = c24798t2.f69504a;
                    if (bArr.length < i4) {
                        c24798t2.m4521y(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f68041b.f69504a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(c24798t.m4545a(), this.f68042c - this.f68043d);
                c24798t.m4542d(this.f68041b.f69504a, this.f68043d, min2);
                int i5 = this.f68043d + min2;
                this.f68043d = i5;
                int i6 = this.f68042c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (this.f68044e) {
                        byte[] bArr2 = this.f68041b.f69504a;
                        int i7 = C24773d0.f69427a;
                        int i8 = -1;
                        for (int i9 = 0; i9 < i6; i9++) {
                            i8 = C24773d0.f69437k[((i8 >>> 24) ^ (bArr2[i9] & 255)) & 255] ^ (i8 << 8);
                        }
                        if (i8 != 0) {
                            this.f68045f = true;
                            return;
                        }
                        this.f68041b.m4521y(this.f68042c - 4);
                    } else {
                        this.f68041b.m4521y(i6);
                    }
                    this.f68040a.mo5164d(this.f68041b);
                    this.f68043d = 0;
                }
            }
        }
    }
}
