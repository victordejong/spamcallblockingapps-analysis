package p131c.p161d.p170b.p188c.p210w0.p216w;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
/* renamed from: c.d.b.c.w0.w.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/b.class */
public final class C3115b implements AbstractC3123g {

    /* renamed from: a */
    public final C3122f f11375a = new C3122f();

    /* renamed from: b */
    public final long f11376b;

    /* renamed from: c */
    public final long f11377c;

    /* renamed from: d */
    public final AbstractC3125i f11378d;

    /* renamed from: e */
    public int f11379e;

    /* renamed from: f */
    public long f11380f;

    /* renamed from: g */
    public long f11381g;

    /* renamed from: h */
    public long f11382h;

    /* renamed from: i */
    public long f11383i;

    /* renamed from: j */
    public long f11384j;

    /* renamed from: k */
    public long f11385k;

    /* renamed from: l */
    public long f11386l;

    /* renamed from: c.d.b.c.w0.w.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/b$b.class */
    public final class C3117b implements AbstractC3050o {
        public C3117b() {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public AbstractC3050o.C3051a mo27544b(long j) {
            return new AbstractC3050o.C3051a(new C3053p(j, C2885h0.m28649b((C3115b.this.f11376b + ((C3115b.this.f11378d.m27755b(j) * (C3115b.this.f11377c - C3115b.this.f11376b)) / C3115b.this.f11380f)) - 30000, C3115b.this.f11376b, C3115b.this.f11377c - 1)));
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public boolean mo27545b() {
            return true;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: c */
        public long mo27543c() {
            return C3115b.this.f11378d.m27760a(C3115b.this.f11380f);
        }
    }

    public C3115b(AbstractC3125i iVar, long j, long j2, long j3, long j4, boolean z) {
        C2877e.m28734a(j >= 0 && j2 > j);
        this.f11378d = iVar;
        this.f11376b = j;
        this.f11377c = j2;
        if (j3 == j2 - j || z) {
            this.f11380f = j4;
            this.f11379e = 4;
            return;
        }
        this.f11379e = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
    /* renamed from: a */
    public long mo27752a(AbstractC3043h hVar) throws IOException, InterruptedException {
        int i = this.f11379e;
        if (i == 0) {
            long position = hVar.getPosition();
            this.f11381g = position;
            this.f11379e = 1;
            long j = this.f11377c - 65307;
            if (j > position) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long b = m27787b(hVar);
                if (b != -1) {
                    return b;
                }
                this.f11379e = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            m27781e(hVar);
            this.f11379e = 4;
            return -(this.f11385k + 2);
        }
        this.f11380f = m27785c(hVar);
        this.f11379e = 4;
        return this.f11381g;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
    /* renamed from: a */
    public C3117b mo27753a() {
        C3117b bVar = null;
        if (this.f11380f != 0) {
            bVar = new C3117b();
        }
        return bVar;
    }

    /* renamed from: a */
    public final boolean m27789a(AbstractC3043h hVar, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f11377c);
        int i2 = RecyclerView.AbstractC0495b0.FLAG_MOVED;
        byte[] bArr = new byte[RecyclerView.AbstractC0495b0.FLAG_MOVED];
        while (true) {
            int i3 = 0;
            if (hVar.getPosition() + i2 > min) {
                int position = (int) (min - hVar.getPosition());
                i2 = position;
                if (position < 4) {
                    return false;
                }
            }
            hVar.mo28051b(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        hVar.mo28049c(i3);
                        return true;
                    }
                    i3++;
                }
            }
            hVar.mo28049c(i);
        }
    }

    /* renamed from: b */
    public final long m27787b(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (this.f11383i == this.f11384j) {
            return -1L;
        }
        long position = hVar.getPosition();
        if (!m27789a(hVar, this.f11384j)) {
            long j = this.f11383i;
            if (j != position) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f11375a.m27764a(hVar, false);
        hVar.mo28050c();
        long j2 = this.f11382h;
        C3122f fVar = this.f11375a;
        long j3 = j2 - fVar.f11405c;
        int i = fVar.f11407e + fVar.f11408f;
        if (0 <= j3 && j3 < 72000) {
            return -1L;
        }
        if (j3 < 0) {
            this.f11384j = position;
            this.f11386l = this.f11375a.f11405c;
        } else {
            this.f11383i = hVar.getPosition() + i;
            this.f11385k = this.f11375a.f11405c;
        }
        long j4 = this.f11384j;
        long j5 = this.f11383i;
        if (j4 - j5 < 100000) {
            this.f11384j = j5;
            return j5;
        }
        long j6 = i;
        long j7 = j3 <= 0 ? 2L : 1L;
        long position2 = hVar.getPosition();
        long j8 = this.f11384j;
        long j9 = this.f11383i;
        return C2885h0.m28649b((position2 - (j6 * j7)) + ((j3 * (j8 - j9)) / (this.f11386l - this.f11385k)), j9, j8 - 1);
    }

    /* renamed from: c */
    public long m27785c(AbstractC3043h hVar) throws IOException, InterruptedException {
        m27783d(hVar);
        this.f11375a.m27765a();
        while ((this.f11375a.f11404b & 4) != 4 && hVar.getPosition() < this.f11377c) {
            this.f11375a.m27764a(hVar, false);
            C3122f fVar = this.f11375a;
            hVar.mo28049c(fVar.f11407e + fVar.f11408f);
        }
        return this.f11375a.f11405c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
    /* renamed from: c */
    public void mo27751c(long j) {
        this.f11382h = C2885h0.m28649b(j, 0L, this.f11380f - 1);
        this.f11379e = 2;
        this.f11383i = this.f11376b;
        this.f11384j = this.f11377c;
        this.f11385k = 0L;
        this.f11386l = this.f11380f;
    }

    /* renamed from: d */
    public void m27783d(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (!m27789a(hVar, this.f11377c)) {
            throw new EOFException();
        }
    }

    /* renamed from: e */
    public final void m27781e(AbstractC3043h hVar) throws IOException, InterruptedException {
        this.f11375a.m27764a(hVar, false);
        while (true) {
            C3122f fVar = this.f11375a;
            if (fVar.f11405c <= this.f11382h) {
                hVar.mo28049c(fVar.f11407e + fVar.f11408f);
                this.f11383i = hVar.getPosition();
                C3122f fVar2 = this.f11375a;
                this.f11385k = fVar2.f11405c;
                fVar2.m27764a(hVar, false);
            } else {
                hVar.mo28050c();
                return;
            }
        }
    }
}
