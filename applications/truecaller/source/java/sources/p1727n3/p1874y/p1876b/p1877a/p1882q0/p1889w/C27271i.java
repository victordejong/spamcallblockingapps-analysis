package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.i */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/i.class */
public final class C27271i implements AbstractC27272j {

    /* renamed from: a */
    public final List<AbstractC27260c0.C27261a> f76590a;

    /* renamed from: b */
    public final AbstractC27190p[] f76591b;

    /* renamed from: c */
    public boolean f76592c;

    /* renamed from: d */
    public int f76593d;

    /* renamed from: e */
    public int f76594e;

    /* renamed from: f */
    public long f76595f;

    public C27271i(List<AbstractC27260c0.C27261a> list) {
        this.f76590a = list;
        this.f76591b = new AbstractC27190p[list.size()];
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76592c = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
        if (this.f76592c) {
            for (AbstractC27190p abstractC27190p : this.f76591b) {
                abstractC27190p.mo741b(this.f76595f, 1, this.f76594e, 0, null);
            }
            this.f76592c = false;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f76592c = true;
        this.f76595f = j;
        this.f76594e = 0;
        this.f76593d = 2;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    public void mo626d(C27434m c27434m) {
        AbstractC27190p[] abstractC27190pArr;
        if (this.f76592c) {
            if (this.f76593d == 2 && !m636f(c27434m, 32)) {
                return;
            }
            if (this.f76593d == 1 && !m636f(c27434m, 0)) {
                return;
            }
            int i = c27434m.f77201b;
            int m340a = c27434m.m340a();
            for (AbstractC27190p abstractC27190p : this.f76591b) {
                c27434m.m315z(i);
                abstractC27190p.mo739d(c27434m, m340a);
            }
            this.f76594e += m340a;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        for (int i = 0; i < this.f76591b.length; i++) {
            AbstractC27260c0.C27261a c27261a = this.f76590a.get(i);
            c27264d.m647a();
            AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 3);
            m750i.mo740c(Format.m42841l(c27264d.m646b(), "application/dvbsubs", null, -1, 0, Collections.singletonList(c27261a.f76518b), c27261a.f76517a, null));
            this.f76591b[i] = m750i;
        }
    }

    /* renamed from: f */
    public final boolean m636f(C27434m c27434m, int i) {
        if (c27434m.m340a() == 0) {
            return false;
        }
        if (c27434m.m326o() != i) {
            this.f76592c = false;
        }
        this.f76593d--;
        return this.f76592c;
    }
}
