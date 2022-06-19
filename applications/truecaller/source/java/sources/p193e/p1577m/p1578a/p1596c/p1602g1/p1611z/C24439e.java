package p193e.p1577m.p1578a.p1596c.p1602g1.p1611z;

import com.google.android.exoplayer2.Format;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24794r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24819h;
/* renamed from: e.m.a.c.g1.z.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/z/e.class */
public final class C24439e extends AbstractC24437d {

    /* renamed from: b */
    public final C24798t f68198b = new C24798t(C24794r.f69480a);

    /* renamed from: c */
    public final C24798t f68199c = new C24798t(4);

    /* renamed from: d */
    public int f68200d;

    /* renamed from: e */
    public boolean f68201e;

    /* renamed from: f */
    public boolean f68202f;

    /* renamed from: g */
    public int f68203g;

    public C24439e(AbstractC24422s abstractC24422s) {
        super(abstractC24422s);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: b */
    public boolean mo5121b(C24798t c24798t) throws AbstractC24437d.C24438a {
        int m4529q = c24798t.m4529q();
        int i = (m4529q >> 4) & 15;
        int i2 = m4529q & 15;
        if (i2 == 7) {
            this.f68203g = i;
            return i != 5;
        }
        throw new AbstractC24437d.C24438a(C22128a.m8611i2("Video format not supported: ", i2));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: c */
    public boolean mo5120c(C24798t c24798t, long j) throws C24560m0 {
        int m4529q = c24798t.m4529q();
        byte[] bArr = c24798t.f69504a;
        int i = c24798t.f69505b;
        int i2 = i + 1;
        c24798t.f69505b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        c24798t.f69505b = i3;
        byte b2 = bArr[i2];
        c24798t.f69505b = i3 + 1;
        long j2 = (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
        if (m4529q == 0 && !this.f68201e) {
            C24798t c24798t2 = new C24798t(new byte[c24798t.m4545a()]);
            c24798t.m4542d(c24798t2.f69504a, 0, c24798t.m4545a());
            C24819h m4484b = C24819h.m4484b(c24798t2);
            this.f68200d = m4484b.f69558b;
            this.f68197a.mo4928b(Format.m39247n(null, "video/avc", null, -1, -1, m4484b.f69559c, m4484b.f69560d, -1.0f, m4484b.f69557a, -1, m4484b.f69561e, null));
            this.f68201e = true;
            return false;
        } else if (m4529q != 1 || !this.f68201e) {
            return false;
        } else {
            int i4 = this.f68203g == 1 ? 1 : 0;
            if (!this.f68202f && i4 == 0) {
                return false;
            }
            byte[] bArr2 = this.f68199c.f69504a;
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            bArr2[2] = (byte) 0;
            int i5 = this.f68200d;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (c24798t.m4545a() <= 0) {
                    this.f68197a.mo4927c((j2 * 1000) + j, i4, i7, 0, null);
                    this.f68202f = true;
                    return true;
                }
                c24798t.m4542d(this.f68199c.f69504a, 4 - i5, this.f68200d);
                this.f68199c.m4547C(0);
                int m4526t = this.f68199c.m4526t();
                this.f68198b.m4547C(0);
                this.f68197a.mo4929a(this.f68198b, 4);
                this.f68197a.mo4929a(c24798t, m4526t);
                i6 = i7 + 4 + m4526t;
            }
        }
    }
}
