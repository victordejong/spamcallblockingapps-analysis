package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3048m;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.u */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/u.class */
public final class C3179u implements AbstractC3168o {

    /* renamed from: a */
    public final C2904v f11721a;

    /* renamed from: b */
    public final C3048m f11722b;

    /* renamed from: c */
    public final String f11723c;

    /* renamed from: d */
    public String f11724d;

    /* renamed from: e */
    public AbstractC3054q f11725e;

    /* renamed from: f */
    public int f11726f;

    /* renamed from: g */
    public int f11727g;

    /* renamed from: h */
    public boolean f11728h;

    /* renamed from: i */
    public boolean f11729i;

    /* renamed from: j */
    public long f11730j;

    /* renamed from: k */
    public int f11731k;

    /* renamed from: l */
    public long f11732l;

    public C3179u() {
        this(null);
    }

    public C3179u(String str) {
        this.f11726f = 0;
        C2904v vVar = new C2904v(4);
        this.f11721a = vVar;
        vVar.f10530a[0] = (byte) (-1);
        this.f11722b = new C3048m();
        this.f11723c = str;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11726f = 0;
        this.f11727g = 0;
        this.f11729i = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11732l = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int i = this.f11726f;
            if (i == 0) {
                m27594b(vVar);
            } else if (i == 1) {
                m27592d(vVar);
            } else if (i == 2) {
                m27593c(vVar);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11724d = dVar.m27683b();
        this.f11725e = iVar.mo28048a(dVar.m27682c(), 1);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final void m27594b(C2904v vVar) {
        byte[] bArr = vVar.f10530a;
        int d = vVar.m28541d();
        for (int c = vVar.m28543c(); c < d; c++) {
            boolean z = (bArr[c] & 255) == 255;
            boolean z2 = this.f11729i && (bArr[c] & 224) == 224;
            this.f11729i = z;
            if (z2) {
                vVar.m28538e(c + 1);
                this.f11729i = false;
                this.f11721a.f10530a[1] = bArr[c];
                this.f11727g = 2;
                this.f11726f = 1;
                return;
            }
        }
        vVar.m28538e(d);
    }

    /* renamed from: c */
    public final void m27593c(C2904v vVar) {
        int min = Math.min(vVar.m28552a(), this.f11731k - this.f11727g);
        this.f11725e.mo28036a(vVar, min);
        int i = this.f11727g + min;
        this.f11727g = i;
        int i2 = this.f11731k;
        if (i >= i2) {
            this.f11725e.mo28037a(this.f11732l, 1, i2, 0, null);
            this.f11732l += this.f11730j;
            this.f11727g = 0;
            this.f11726f = 0;
        }
    }

    /* renamed from: d */
    public final void m27592d(C2904v vVar) {
        int min = Math.min(vVar.m28552a(), 4 - this.f11727g);
        vVar.m28546a(this.f11721a.f10530a, this.f11727g, min);
        int i = this.f11727g + min;
        this.f11727g = i;
        if (i >= 4) {
            this.f11721a.m28538e(0);
            if (!C3048m.m28039a(this.f11721a.m28535g(), this.f11722b)) {
                this.f11727g = 0;
                this.f11726f = 1;
                return;
            }
            C3048m mVar = this.f11722b;
            this.f11731k = mVar.f10984c;
            if (!this.f11728h) {
                long j = mVar.f10988g;
                int i2 = mVar.f10985d;
                this.f11730j = (j * 1000000) / i2;
                this.f11725e.mo28034a(Format.m18698a(this.f11724d, mVar.f10983b, null, -1, 4096, mVar.f10986e, i2, null, null, 0, this.f11723c));
                this.f11728h = true;
            }
            this.f11721a.m28538e(0);
            this.f11725e.mo28036a(this.f11721a, 4);
            this.f11726f = 2;
        }
    }
}
