package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.google.android.exoplayer2.Format;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/n.class */
public final class C24382n implements AbstractC24373j {

    /* renamed from: a */
    public final C24798t f67956a = new C24798t(10);

    /* renamed from: b */
    public AbstractC24422s f67957b;

    /* renamed from: c */
    public boolean f67958c;

    /* renamed from: d */
    public long f67959d;

    /* renamed from: e */
    public int f67960e;

    /* renamed from: f */
    public int f67961f;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67958c = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
        int i;
        if (!this.f67958c || (i = this.f67960e) == 0 || this.f67961f != i) {
            return;
        }
        this.f67957b.mo4927c(this.f67959d, 1, i, 0, null);
        this.f67958c = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f67958c = true;
        this.f67959d = j;
        this.f67960e = 0;
        this.f67961f = 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    public void mo5181d(C24798t c24798t) {
        if (!this.f67958c) {
            return;
        }
        int m4545a = c24798t.m4545a();
        int i = this.f67961f;
        if (i < 10) {
            int min = Math.min(m4545a, 10 - i);
            System.arraycopy(c24798t.f69504a, c24798t.f69505b, this.f67956a.f69504a, this.f67961f, min);
            if (this.f67961f + min == 10) {
                this.f67956a.m4547C(0);
                if (73 != this.f67956a.m4529q() || 68 != this.f67956a.m4529q() || 51 != this.f67956a.m4529q()) {
                    this.f67958c = false;
                    return;
                } else {
                    this.f67956a.m4546D(3);
                    this.f67960e = this.f67956a.m4530p() + 10;
                }
            }
        }
        int min2 = Math.min(m4545a, this.f67960e - this.f67961f);
        this.f67957b.mo4929a(c24798t, min2);
        this.f67961f += min2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 4);
        this.f67957b = mo4960i;
        mo4960i.mo4928b(Format.m39250k(c24365d.m5202b(), "application/id3", null, -1, null));
    }
}
