package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.google.android.exoplayer2.Format;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24416o;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/p.class */
public final class C24384p implements AbstractC24373j {

    /* renamed from: a */
    public final C24798t f67982a;

    /* renamed from: c */
    public final String f67984c;

    /* renamed from: d */
    public String f67985d;

    /* renamed from: e */
    public AbstractC24422s f67986e;

    /* renamed from: g */
    public int f67988g;

    /* renamed from: h */
    public boolean f67989h;

    /* renamed from: i */
    public boolean f67990i;

    /* renamed from: j */
    public long f67991j;

    /* renamed from: k */
    public int f67992k;

    /* renamed from: l */
    public long f67993l;

    /* renamed from: f */
    public int f67987f = 0;

    /* renamed from: b */
    public final C24416o f67983b = new C24416o();

    public C24384p(String str) {
        C24798t c24798t = new C24798t(4);
        this.f67982a = c24798t;
        c24798t.f69504a[0] = (byte) (-1);
        this.f67984c = str;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67987f = 0;
        this.f67988g = 0;
        this.f67990i = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        this.f67993l = j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    public void mo5181d(C24798t c24798t) {
        while (c24798t.m4545a() > 0) {
            int i = this.f67987f;
            if (i == 0) {
                byte[] bArr = c24798t.f69504a;
                int i2 = c24798t.f69505b;
                int i3 = c24798t.f69506c;
                while (true) {
                    if (i2 >= i3) {
                        c24798t.m4547C(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.f67990i && (bArr[i2] & 224) == 224;
                    this.f67990i = z;
                    if (z2) {
                        c24798t.m4547C(i2 + 1);
                        this.f67990i = false;
                        this.f67982a.f69504a[1] = bArr[i2];
                        this.f67988g = 2;
                        this.f67987f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(c24798t.m4545a(), 4 - this.f67988g);
                c24798t.m4542d(this.f67982a.f69504a, this.f67988g, min);
                int i4 = this.f67988g + min;
                this.f67988g = i4;
                if (i4 >= 4) {
                    this.f67982a.m4547C(0);
                    if (!C24416o.m5145d(this.f67982a.m4541e(), this.f67983b)) {
                        this.f67988g = 0;
                        this.f67987f = 1;
                    } else {
                        C24416o c24416o = this.f67983b;
                        this.f67992k = c24416o.f68111c;
                        if (!this.f67989h) {
                            long j = c24416o.f68115g;
                            int i5 = c24416o.f68112d;
                            this.f67991j = (j * 1000000) / i5;
                            this.f67986e.mo4928b(Format.m39253g(this.f67985d, c24416o.f68110b, null, -1, 4096, c24416o.f68113e, i5, null, null, 0, this.f67984c));
                            this.f67989h = true;
                        }
                        this.f67982a.m4547C(0);
                        this.f67986e.mo4929a(this.f67982a, 4);
                        this.f67987f = 2;
                    }
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c24798t.m4545a(), this.f67992k - this.f67988g);
                this.f67986e.mo4929a(c24798t, min2);
                int i6 = this.f67988g + min2;
                this.f67988g = i6;
                int i7 = this.f67992k;
                if (i6 >= i7) {
                    this.f67986e.mo4927c(this.f67993l, 1, i7, 0, null);
                    this.f67993l += this.f67991j;
                    this.f67988g = 0;
                    this.f67987f = 0;
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        this.f67985d = c24365d.m5202b();
        this.f67986e = abstractC24409i.mo4960i(c24365d.m5201c(), 1);
    }
}
