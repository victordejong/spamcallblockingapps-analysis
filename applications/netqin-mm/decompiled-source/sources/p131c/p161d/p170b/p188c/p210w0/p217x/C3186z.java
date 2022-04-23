package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3029a;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.z */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/z.class */
public final class C3186z implements AbstractC3042g {

    /* renamed from: a */
    public final C2881f0 f11760a;

    /* renamed from: b */
    public final SparseArray<C3187a> f11761b;

    /* renamed from: c */
    public final C2904v f11762c;

    /* renamed from: d */
    public final C3185y f11763d;

    /* renamed from: e */
    public boolean f11764e;

    /* renamed from: f */
    public boolean f11765f;

    /* renamed from: g */
    public boolean f11766g;

    /* renamed from: h */
    public long f11767h;

    /* renamed from: i */
    public C3182x f11768i;

    /* renamed from: j */
    public AbstractC3044i f11769j;

    /* renamed from: k */
    public boolean f11770k;

    /* renamed from: c.d.b.c.w0.x.z$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/z$a.class */
    public static final class C3187a {

        /* renamed from: a */
        public final AbstractC3168o f11771a;

        /* renamed from: b */
        public final C2881f0 f11772b;

        /* renamed from: c */
        public final C2903u f11773c = new C2903u(new byte[64]);

        /* renamed from: d */
        public boolean f11774d;

        /* renamed from: e */
        public boolean f11775e;

        /* renamed from: f */
        public boolean f11776f;

        /* renamed from: g */
        public int f11777g;

        /* renamed from: h */
        public long f11778h;

        public C3187a(AbstractC3168o oVar, C2881f0 f0Var) {
            this.f11771a = oVar;
            this.f11772b = f0Var;
        }

        /* renamed from: a */
        public final void m27558a() {
            this.f11773c.m28556c(8);
            this.f11774d = this.f11773c.m28554e();
            this.f11775e = this.f11773c.m28554e();
            this.f11773c.m28556c(6);
            this.f11777g = this.f11773c.m28565a(8);
        }

        /* renamed from: a */
        public void m27557a(C2904v vVar) throws ParserException {
            vVar.m28546a(this.f11773c.f10526a, 0, 3);
            this.f11773c.m28558b(0);
            m27558a();
            vVar.m28546a(this.f11773c.f10526a, 0, this.f11777g);
            this.f11773c.m28558b(0);
            m27556b();
            this.f11771a.mo27598a(this.f11778h, 4);
            this.f11771a.mo27597a(vVar);
            this.f11771a.mo27595b();
        }

        /* renamed from: b */
        public final void m27556b() {
            this.f11778h = 0L;
            if (this.f11774d) {
                this.f11773c.m28556c(4);
                long a = this.f11773c.m28565a(3);
                this.f11773c.m28556c(1);
                long a2 = this.f11773c.m28565a(15) << 15;
                this.f11773c.m28556c(1);
                long a3 = this.f11773c.m28565a(15);
                this.f11773c.m28556c(1);
                if (!this.f11776f && this.f11775e) {
                    this.f11773c.m28556c(4);
                    long a4 = this.f11773c.m28565a(3);
                    this.f11773c.m28556c(1);
                    long a5 = this.f11773c.m28565a(15) << 15;
                    this.f11773c.m28556c(1);
                    long a6 = this.f11773c.m28565a(15);
                    this.f11773c.m28556c(1);
                    this.f11772b.m28711b((a4 << 30) | a5 | a6);
                    this.f11776f = true;
                }
                this.f11778h = this.f11772b.m28711b((a << 30) | a2 | a3);
            }
        }

        /* renamed from: c */
        public void m27555c() {
            this.f11776f = false;
            this.f11771a.mo27599a();
        }
    }

    static {
        C3143d dVar = C3143d.f11459a;
    }

    public C3186z() {
        this(new C2881f0(0L));
    }

    public C3186z(C2881f0 f0Var) {
        this.f11760a = f0Var;
        this.f11762c = new C2904v(4096);
        this.f11761b = new SparseArray<>();
        this.f11763d = new C3185y();
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27559b() {
        return new AbstractC3042g[]{new C3186z()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        long a = hVar.mo28058a();
        if ((a != -1) && !this.f11763d.m27563c()) {
            return this.f11763d.m27570a(hVar, nVar);
        }
        m27560a(a);
        C3182x xVar = this.f11768i;
        AbstractC3168o oVar = null;
        if (xVar != null && xVar.m28101b()) {
            return this.f11768i.m28103a(hVar, nVar, (AbstractC3029a.C3032c) null);
        }
        hVar.mo28050c();
        long b = a != -1 ? a - hVar.mo28053b() : -1L;
        if ((b != -1 && b < 4) || !hVar.mo28051b(this.f11762c.f10530a, 0, 4, true)) {
            return -1;
        }
        this.f11762c.m28538e(0);
        int g = this.f11762c.m28535g();
        if (g == 441) {
            return -1;
        }
        if (g == 442) {
            hVar.mo28055a(this.f11762c.f10530a, 0, 10);
            this.f11762c.m28538e(9);
            hVar.mo28049c((this.f11762c.m28524r() & 7) + 14);
            return 0;
        } else if (g == 443) {
            hVar.mo28055a(this.f11762c.f10530a, 0, 2);
            this.f11762c.m28538e(0);
            hVar.mo28049c(this.f11762c.m28518x() + 6);
            return 0;
        } else if (((g & (-256)) >> 8) != 1) {
            hVar.mo28049c(1);
            return 0;
        } else {
            int i = g & 255;
            C3187a aVar = this.f11761b.get(i);
            C3187a aVar2 = aVar;
            if (!this.f11764e) {
                C3187a aVar3 = aVar;
                if (aVar == null) {
                    if (i == 189) {
                        oVar = new C3150g();
                        this.f11765f = true;
                        this.f11767h = hVar.getPosition();
                    } else if ((i & 224) == 192) {
                        oVar = new C3179u();
                        this.f11765f = true;
                        this.f11767h = hVar.getPosition();
                    } else if ((i & 240) == 224) {
                        oVar = new C3169p();
                        this.f11766g = true;
                        this.f11767h = hVar.getPosition();
                    }
                    aVar3 = aVar;
                    if (oVar != null) {
                        oVar.mo27596a(this.f11769j, new AbstractC3155h0.C3159d(i, 256));
                        aVar3 = new C3187a(oVar, this.f11760a);
                        this.f11761b.put(i, aVar3);
                    }
                }
                aVar2 = aVar3;
                if (hVar.getPosition() > ((!this.f11765f || !this.f11766g) ? 1048576L : this.f11767h + 8192)) {
                    this.f11764e = true;
                    this.f11769j.mo28046e();
                    aVar2 = aVar3;
                }
            }
            hVar.mo28055a(this.f11762c.f10530a, 0, 2);
            this.f11762c.m28538e(0);
            int x = this.f11762c.m28518x() + 6;
            if (aVar2 == null) {
                hVar.mo28049c(x);
                return 0;
            }
            this.f11762c.m28542c(x);
            hVar.readFully(this.f11762c.f10530a, 0, x);
            this.f11762c.m28538e(6);
            aVar2.m27557a(this.f11762c);
            C2904v vVar = this.f11762c;
            vVar.m28540d(vVar.m28545b());
            return 0;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    /* renamed from: a */
    public final void m27560a(long j) {
        if (!this.f11770k) {
            this.f11770k = true;
            if (this.f11763d.m27573a() != -9223372036854775807L) {
                C3182x xVar = new C3182x(this.f11763d.m27567b(), this.f11763d.m27573a(), j);
                this.f11768i = xVar;
                this.f11769j.mo28047a(xVar.m28107a());
                return;
            }
            this.f11769j.mo28047a(new AbstractC3050o.C3052b(this.f11763d.m27573a()));
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        if ((this.f11760a.m28710c() == -9223372036854775807L) || !(this.f11760a.m28714a() == 0 || this.f11760a.m28714a() == j2)) {
            this.f11760a.m28708d();
            this.f11760a.m28709c(j2);
        }
        C3182x xVar = this.f11768i;
        int i = 0;
        if (xVar != null) {
            xVar.m28100b(j2);
            i = 0;
        }
        while (i < this.f11761b.size()) {
            this.f11761b.valueAt(i).m27555c();
            i++;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11769j = iVar;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        boolean z = false;
        hVar.mo28055a(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        hVar.mo28057a(bArr[13] & 7);
        hVar.mo28055a(bArr, 0, 3);
        if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
            z = true;
        }
        return z;
    }
}
