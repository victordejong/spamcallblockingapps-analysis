package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.w.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/i.class */
public abstract class AbstractC3125i {

    /* renamed from: a */
    public final C3121e f11413a = new C3121e();

    /* renamed from: b */
    public AbstractC3054q f11414b;

    /* renamed from: c */
    public AbstractC3044i f11415c;

    /* renamed from: d */
    public AbstractC3123g f11416d;

    /* renamed from: e */
    public long f11417e;

    /* renamed from: f */
    public long f11418f;

    /* renamed from: g */
    public long f11419g;

    /* renamed from: h */
    public int f11420h;

    /* renamed from: i */
    public int f11421i;

    /* renamed from: j */
    public C3127b f11422j;

    /* renamed from: k */
    public long f11423k;

    /* renamed from: l */
    public boolean f11424l;

    /* renamed from: m */
    public boolean f11425m;

    /* renamed from: c.d.b.c.w0.w.i$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/i$b.class */
    public static class C3127b {

        /* renamed from: a */
        public Format f11426a;

        /* renamed from: b */
        public AbstractC3123g f11427b;
    }

    /* renamed from: c.d.b.c.w0.w.i$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/i$c.class */
    public static final class C3128c implements AbstractC3123g {
        public C3128c() {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: a */
        public long mo27752a(AbstractC3043h hVar) {
            return -1L;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: a */
        public AbstractC3050o mo27753a() {
            return new AbstractC3050o.C3052b(-9223372036854775807L);
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: c */
        public void mo27751c(long j) {
        }
    }

    /* renamed from: a */
    public final int m27758a(AbstractC3043h hVar) throws IOException, InterruptedException {
        boolean z = true;
        while (z) {
            if (!this.f11413a.m27769a(hVar)) {
                this.f11420h = 3;
                return -1;
            }
            this.f11423k = hVar.getPosition() - this.f11418f;
            boolean a = mo27741a(this.f11413a.m27768b(), this.f11418f, this.f11422j);
            z = a;
            if (a) {
                this.f11418f = hVar.getPosition();
                z = a;
            }
        }
        Format format = this.f11422j.f11426a;
        this.f11421i = format.f21966w;
        if (!this.f11425m) {
            this.f11414b.mo28034a(format);
            this.f11425m = true;
        }
        AbstractC3123g gVar = this.f11422j.f11427b;
        if (gVar != null) {
            this.f11416d = gVar;
        } else if (hVar.mo28058a() == -1) {
            this.f11416d = new C3128c();
        } else {
            C3122f a2 = this.f11413a.m27771a();
            this.f11416d = new C3115b(this, this.f11418f, hVar.mo28058a(), a2.f11407e + a2.f11408f, a2.f11405c, (a2.f11404b & 4) != 0);
        }
        this.f11422j = null;
        this.f11420h = 2;
        this.f11413a.m27766d();
        return 0;
    }

    /* renamed from: a */
    public final int m27757a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        int i = this.f11420h;
        if (i == 0) {
            return m27758a(hVar);
        }
        if (i == 1) {
            hVar.mo28049c((int) this.f11418f);
            this.f11420h = 2;
            return 0;
        } else if (i == 2) {
            return m27754b(hVar, nVar);
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public long m27760a(long j) {
        return (j * 1000000) / this.f11421i;
    }

    /* renamed from: a */
    public abstract long mo27743a(C2904v vVar);

    /* renamed from: a */
    public final void m27759a(long j, long j2) {
        this.f11413a.m27767c();
        if (j == 0) {
            mo27740a(!this.f11424l);
        } else if (this.f11420h != 0) {
            long b = m27755b(j2);
            this.f11417e = b;
            this.f11416d.mo27751c(b);
            this.f11420h = 2;
        }
    }

    /* renamed from: a */
    public void m27756a(AbstractC3044i iVar, AbstractC3054q qVar) {
        this.f11415c = iVar;
        this.f11414b = qVar;
        mo27740a(true);
    }

    /* renamed from: a */
    public void mo27740a(boolean z) {
        if (z) {
            this.f11422j = new C3127b();
            this.f11418f = 0L;
            this.f11420h = 0;
        } else {
            this.f11420h = 1;
        }
        this.f11417e = -1L;
        this.f11419g = 0L;
    }

    /* renamed from: a */
    public abstract boolean mo27741a(C2904v vVar, long j, C3127b bVar) throws IOException, InterruptedException;

    /* renamed from: b */
    public final int m27754b(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        long a = this.f11416d.mo27752a(hVar);
        if (a >= 0) {
            nVar.f10989a = a;
            return 1;
        }
        if (a < -1) {
            mo27738c(-(a + 2));
        }
        if (!this.f11424l) {
            this.f11415c.mo28047a(this.f11416d.mo27753a());
            this.f11424l = true;
        }
        if (this.f11423k > 0 || this.f11413a.m27769a(hVar)) {
            this.f11423k = 0L;
            C2904v b = this.f11413a.m27768b();
            long a2 = mo27743a(b);
            if (a2 >= 0) {
                long j = this.f11419g;
                if (j + a2 >= this.f11417e) {
                    long a3 = m27760a(j);
                    this.f11414b.mo28036a(b, b.m28541d());
                    this.f11414b.mo28037a(a3, 1, b.m28541d(), 0, null);
                    this.f11417e = -1L;
                }
            }
            this.f11419g += a2;
            return 0;
        }
        this.f11420h = 3;
        return -1;
    }

    /* renamed from: b */
    public long m27755b(long j) {
        return (this.f11421i * j) / 1000000;
    }

    /* renamed from: c */
    public void mo27738c(long j) {
        this.f11419g = j;
    }
}
