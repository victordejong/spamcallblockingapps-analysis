package p000;

import java.io.EOFException;
/* renamed from: bm */
/* loaded from: classes-dex2jar.jar:bm.class */
public final class C0253bm {

    /* renamed from: a */
    public int f1972a;

    /* renamed from: b */
    public int f1973b;

    /* renamed from: c */
    public long f1974c;

    /* renamed from: d */
    public int f1975d;

    /* renamed from: e */
    public int f1976e;

    /* renamed from: f */
    public int f1977f;

    /* renamed from: g */
    public final int[] f1978g = new int[255];

    /* renamed from: h */
    public final yt f1979h = new yt(255);

    /* renamed from: a */
    public boolean m5609a(AbstractC0251bk abstractC0251bk, boolean z) {
        this.f1979h.E();
        m5608b();
        if (!(abstractC0251bk.getLength() == -1 || abstractC0251bk.getLength() - abstractC0251bk.getPeekPosition() >= 27) || !abstractC0251bk.peekFully(this.f1979h.a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.f1979h.y() != 1332176723) {
            if (!z) {
                throw new C0315ch("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int w = this.f1979h.w();
            this.f1972a = w;
            if (w != 0) {
                if (!z) {
                    throw new C0315ch("unsupported bit stream revision");
                }
                return false;
            }
            this.f1973b = this.f1979h.w();
            this.f1974c = this.f1979h.l();
            this.f1979h.m();
            this.f1979h.m();
            this.f1979h.m();
            int w2 = this.f1979h.w();
            this.f1975d = w2;
            this.f1976e = w2 + 27;
            this.f1979h.E();
            abstractC0251bk.peekFully(this.f1979h.a, 0, this.f1975d);
            for (int i = 0; i < this.f1975d; i++) {
                this.f1978g[i] = this.f1979h.w();
                this.f1977f += this.f1978g[i];
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m5608b() {
        this.f1972a = 0;
        this.f1973b = 0;
        this.f1974c = 0L;
        this.f1975d = 0;
        this.f1976e = 0;
        this.f1977f = 0;
    }
}
