package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p206s0.C2976g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/g.class */
public final class C3150g implements AbstractC3168o {

    /* renamed from: a */
    public final C2903u f11478a;

    /* renamed from: b */
    public final C2904v f11479b;

    /* renamed from: c */
    public final String f11480c;

    /* renamed from: d */
    public String f11481d;

    /* renamed from: e */
    public AbstractC3054q f11482e;

    /* renamed from: f */
    public int f11483f;

    /* renamed from: g */
    public int f11484g;

    /* renamed from: h */
    public boolean f11485h;

    /* renamed from: i */
    public long f11486i;

    /* renamed from: j */
    public Format f11487j;

    /* renamed from: k */
    public int f11488k;

    /* renamed from: l */
    public long f11489l;

    public C3150g() {
        this(null);
    }

    public C3150g(String str) {
        C2903u uVar = new C2903u(new byte[128]);
        this.f11478a = uVar;
        this.f11479b = new C2904v(uVar.f10526a);
        this.f11483f = 0;
        this.f11480c = str;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11483f = 0;
        this.f11484g = 0;
        this.f11485h = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11489l = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int i = this.f11483f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(vVar.m28552a(), this.f11488k - this.f11484g);
                        this.f11482e.mo28036a(vVar, min);
                        int i2 = this.f11484g + min;
                        this.f11484g = i2;
                        int i3 = this.f11488k;
                        if (i2 == i3) {
                            this.f11482e.mo28037a(this.f11489l, 1, i3, 0, null);
                            this.f11489l += this.f11486i;
                            this.f11483f = 0;
                        }
                    }
                } else if (m27712a(vVar, this.f11479b.f10530a, 128)) {
                    m27710c();
                    this.f11479b.m28538e(0);
                    this.f11482e.mo28036a(this.f11479b, 128);
                    this.f11483f = 2;
                }
            } else if (m27711b(vVar)) {
                this.f11483f = 1;
                byte[] bArr = this.f11479b.f10530a;
                bArr[0] = (byte) 11;
                bArr[1] = (byte) 119;
                this.f11484g = 2;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11481d = dVar.m27683b();
        this.f11482e = iVar.mo28048a(dVar.m27682c(), 1);
    }

    /* renamed from: a */
    public final boolean m27712a(C2904v vVar, byte[] bArr, int i) {
        int min = Math.min(vVar.m28552a(), i - this.f11484g);
        vVar.m28546a(bArr, this.f11484g, min);
        int i2 = this.f11484g + min;
        this.f11484g = i2;
        return i2 == i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final boolean m27711b(C2904v vVar) {
        while (true) {
            boolean z = false;
            boolean z2 = false;
            if (vVar.m28552a() <= 0) {
                return false;
            }
            if (!this.f11485h) {
                if (vVar.m28524r() == 11) {
                    z2 = true;
                }
                this.f11485h = z2;
            } else {
                int r = vVar.m28524r();
                if (r == 119) {
                    this.f11485h = false;
                    return true;
                }
                if (r == 11) {
                    z = true;
                }
                this.f11485h = z;
            }
        }
    }

    /* renamed from: c */
    public final void m27710c() {
        this.f11478a.m28558b(0);
        C2976g.C2978b a = C2976g.m28314a(this.f11478a);
        Format format = this.f11487j;
        if (!(format != null && a.f10719c == format.f21965v && a.f10718b == format.f21966w && a.f10717a == format.f21952i)) {
            Format a2 = Format.m18698a(this.f11481d, a.f10717a, null, -1, -1, a.f10719c, a.f10718b, null, null, 0, this.f11480c);
            this.f11487j = a2;
            this.f11482e.mo28034a(a2);
        }
        this.f11488k = a.f10720d;
        this.f11486i = (a.f10721e * 1000000) / this.f11487j.f21966w;
    }
}
