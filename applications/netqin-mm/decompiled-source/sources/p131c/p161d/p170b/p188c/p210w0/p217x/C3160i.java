package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p206s0.C2979h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/i.class */
public final class C3160i implements AbstractC3168o {

    /* renamed from: a */
    public final C2903u f11529a;

    /* renamed from: b */
    public final C2904v f11530b;

    /* renamed from: c */
    public final String f11531c;

    /* renamed from: d */
    public String f11532d;

    /* renamed from: e */
    public AbstractC3054q f11533e;

    /* renamed from: f */
    public int f11534f;

    /* renamed from: g */
    public int f11535g;

    /* renamed from: h */
    public boolean f11536h;

    /* renamed from: i */
    public boolean f11537i;

    /* renamed from: j */
    public long f11538j;

    /* renamed from: k */
    public Format f11539k;

    /* renamed from: l */
    public int f11540l;

    /* renamed from: m */
    public long f11541m;

    public C3160i() {
        this(null);
    }

    public C3160i(String str) {
        C2903u uVar = new C2903u(new byte[16]);
        this.f11529a = uVar;
        this.f11530b = new C2904v(uVar.f10526a);
        this.f11534f = 0;
        this.f11535g = 0;
        this.f11536h = false;
        this.f11537i = false;
        this.f11531c = str;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11534f = 0;
        this.f11535g = 0;
        this.f11536h = false;
        this.f11537i = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11541m = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int i = this.f11534f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(vVar.m28552a(), this.f11540l - this.f11535g);
                        this.f11533e.mo28036a(vVar, min);
                        int i2 = this.f11535g + min;
                        this.f11535g = i2;
                        int i3 = this.f11540l;
                        if (i2 == i3) {
                            this.f11533e.mo28037a(this.f11541m, 1, i3, 0, null);
                            this.f11541m += this.f11538j;
                            this.f11534f = 0;
                        }
                    }
                } else if (m27680a(vVar, this.f11530b.f10530a, 16)) {
                    m27678c();
                    this.f11530b.m28538e(0);
                    this.f11533e.mo28036a(this.f11530b, 16);
                    this.f11534f = 2;
                }
            } else if (m27679b(vVar)) {
                this.f11534f = 1;
                byte[] bArr = this.f11530b.f10530a;
                bArr[0] = (byte) (-84);
                bArr[1] = (byte) (this.f11537i ? 65 : 64);
                this.f11535g = 2;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11532d = dVar.m27683b();
        this.f11533e = iVar.mo28048a(dVar.m27682c(), 1);
    }

    /* renamed from: a */
    public final boolean m27680a(C2904v vVar, byte[] bArr, int i) {
        int min = Math.min(vVar.m28552a(), i - this.f11535g);
        vVar.m28546a(bArr, this.f11535g, min);
        int i2 = this.f11535g + min;
        this.f11535g = i2;
        return i2 == i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final boolean m27679b(C2904v vVar) {
        int r;
        boolean z;
        while (true) {
            z = false;
            boolean z2 = false;
            if (vVar.m28552a() <= 0) {
                return false;
            }
            if (!this.f11536h) {
                if (vVar.m28524r() == 172) {
                    z2 = true;
                }
                this.f11536h = z2;
            } else {
                r = vVar.m28524r();
                this.f11536h = r == 172;
                if (r == 64 || r == 65) {
                    break;
                }
            }
        }
        if (r == 65) {
            z = true;
        }
        this.f11537i = z;
        return true;
    }

    /* renamed from: c */
    public final void m27678c() {
        this.f11529a.m28558b(0);
        C2979h.C2981b a = C2979h.m28305a(this.f11529a);
        Format format = this.f11539k;
        if (format == null || a.f10724b != format.f21965v || a.f10723a != format.f21966w || !"audio/ac4".equals(format.f21952i)) {
            Format a2 = Format.m18698a(this.f11532d, "audio/ac4", null, -1, -1, a.f10724b, a.f10723a, null, null, 0, this.f11531c);
            this.f11539k = a2;
            this.f11533e.mo28034a(a2);
        }
        this.f11540l = a.f10725c;
        this.f11538j = (a.f10726d * 1000000) / this.f11539k.f21966w;
    }
}
