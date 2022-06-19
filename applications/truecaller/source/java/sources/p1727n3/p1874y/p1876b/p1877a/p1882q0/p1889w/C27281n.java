package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.n */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/n.class */
public final class C27281n implements AbstractC27272j {

    /* renamed from: a */
    public final C27434m f76694a = new C27434m(10);

    /* renamed from: b */
    public AbstractC27190p f76695b;

    /* renamed from: c */
    public boolean f76696c;

    /* renamed from: d */
    public long f76697d;

    /* renamed from: e */
    public int f76698e;

    /* renamed from: f */
    public int f76699f;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76696c = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
        int i;
        if (!this.f76696c || (i = this.f76698e) == 0 || this.f76699f != i) {
            return;
        }
        this.f76695b.mo741b(this.f76697d, 1, i, 0, null);
        this.f76696c = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f76696c = true;
        this.f76697d = j;
        this.f76698e = 0;
        this.f76699f = 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    public void mo626d(C27434m c27434m) {
        if (!this.f76696c) {
            return;
        }
        int m340a = c27434m.m340a();
        int i = this.f76699f;
        if (i < 10) {
            int min = Math.min(m340a, 10 - i);
            System.arraycopy(c27434m.f77200a, c27434m.f77201b, this.f76694a.f77200a, this.f76699f, min);
            if (this.f76699f + min == 10) {
                this.f76694a.m315z(0);
                if (73 != this.f76694a.m326o() || 68 != this.f76694a.m326o() || 51 != this.f76694a.m326o()) {
                    this.f76696c = false;
                    return;
                } else {
                    this.f76694a.m341A(3);
                    this.f76698e = this.f76694a.m327n() + 10;
                }
            }
        }
        int min2 = Math.min(m340a, this.f76698e - this.f76699f);
        this.f76695b.mo739d(c27434m, min2);
        this.f76699f += min2;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 4);
        this.f76695b = m750i;
        m750i.mo740c(Format.m42839n(c27264d.m646b(), "application/id3", null, -1, null));
    }
}
