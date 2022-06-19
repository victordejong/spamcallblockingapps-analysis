package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.IOException;
import java.util.HashMap;
/* renamed from: com.google.android.exoplayer2.source.n */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/n.class */
public abstract class AbstractC5278n<T> extends AbstractC5275l {

    /* renamed from: f */
    private final HashMap<T, C5280b> f16750f = new HashMap<>();

    /* renamed from: g */
    private Handler f16751g;

    /* renamed from: h */
    private AbstractC5497x f16752h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.source.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/n$a.class */
    public final class C5279a implements AbstractC5297w {

        /* renamed from: d */
        private final T f16753d;

        /* renamed from: e */
        private AbstractC5297w.C5298a f16754e;

        public C5279a(T t) {
            AbstractC5278n.this = r5;
            this.f16754e = r5.m19874m(null);
            this.f16753d = t;
        }

        /* renamed from: a */
        private boolean m19856a(int i, AbstractC5294v.C5295a c5295a) {
            AbstractC5294v.C5295a c5295a2;
            if (c5295a != null) {
                AbstractC5294v.C5295a m19862t = AbstractC5278n.this.m19862t(this.f16753d, c5295a);
                c5295a2 = m19862t;
                if (m19862t == null) {
                    return false;
                }
            } else {
                c5295a2 = null;
            }
            int m19860v = AbstractC5278n.this.m19860v(this.f16753d, i);
            AbstractC5297w.C5298a c5298a = this.f16754e;
            if (c5298a.f16785a != m19860v || !C5515h0.m18843b(c5298a.f16786b, c5295a2)) {
                this.f16754e = AbstractC5278n.this.m19875l(m19860v, c5295a2, 0L);
                return true;
            }
            return true;
        }

        /* renamed from: b */
        private AbstractC5297w.C5301c m19855b(AbstractC5297w.C5301c c5301c) {
            long m19861u = AbstractC5278n.this.m19861u(this.f16753d, c5301c.f16802f);
            long m19861u2 = AbstractC5278n.this.m19861u(this.f16753d, c5301c.f16803g);
            return (m19861u == c5301c.f16802f && m19861u2 == c5301c.f16803g) ? c5301c : new AbstractC5297w.C5301c(c5301c.f16797a, c5301c.f16798b, c5301c.f16799c, c5301c.f16800d, c5301c.f16801e, m19861u, m19861u2);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: A */
        public void mo19840A(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5301c c5301c) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19817d(m19855b(c5301c));
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: e */
        public void mo19839e(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19797x(c5300b, m19855b(c5301c));
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: h */
        public void mo19838h(int i, AbstractC5294v.C5295a c5295a) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19823J();
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: i */
        public void mo19837i(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19800u(c5300b, m19855b(c5301c));
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: q */
        public void mo19836q(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19829D(c5300b, m19855b(c5301c));
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: r */
        public void mo19835r(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c, IOException iOException, boolean z) {
            if (m19856a(i, c5295a)) {
                this.f16754e.m19832A(c5300b, m19855b(c5301c), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: u */
        public void mo19834u(int i, AbstractC5294v.C5295a c5295a) {
            if (!m19856a(i, c5295a) || !AbstractC5278n.this.m19865A((AbstractC5294v.C5295a) C5508e.m18911e(this.f16754e.f16786b))) {
                return;
            }
            this.f16754e.m19825H();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5297w
        /* renamed from: w */
        public void mo19833w(int i, AbstractC5294v.C5295a c5295a) {
            if (!m19856a(i, c5295a) || !AbstractC5278n.this.m19865A((AbstractC5294v.C5295a) C5508e.m18911e(this.f16754e.f16786b))) {
                return;
            }
            this.f16754e.m19826G();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.source.n$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/n$b.class */
    public static final class C5280b {

        /* renamed from: a */
        public final AbstractC5294v f16756a;

        /* renamed from: b */
        public final AbstractC5294v.AbstractC5296b f16757b;

        /* renamed from: c */
        public final AbstractC5297w f16758c;

        public C5280b(AbstractC5294v abstractC5294v, AbstractC5294v.AbstractC5296b abstractC5296b, AbstractC5297w abstractC5297w) {
            this.f16756a = abstractC5294v;
            this.f16757b = abstractC5296b;
            this.f16758c = abstractC5297w;
        }
    }

    /* renamed from: A */
    protected boolean m19865A(AbstractC5294v.C5295a c5295a) {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: h */
    public void mo19724h() {
        for (C5280b c5280b : this.f16750f.values()) {
            c5280b.f16756a.mo19724h();
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: n */
    protected void mo19864n() {
        for (C5280b c5280b : this.f16750f.values()) {
            c5280b.f16756a.mo19845f(c5280b.f16757b);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: o */
    protected void mo19863o() {
        for (C5280b c5280b : this.f16750f.values()) {
            c5280b.f16756a.mo19843k(c5280b.f16757b);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: q */
    public void mo19722q(AbstractC5497x abstractC5497x) {
        this.f16752h = abstractC5497x;
        this.f16751g = new Handler();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: s */
    protected void mo19721s() {
        for (C5280b c5280b : this.f16750f.values()) {
            c5280b.f16756a.mo19848b(c5280b.f16757b);
            c5280b.f16756a.mo19846e(c5280b.f16758c);
        }
        this.f16750f.clear();
    }

    /* renamed from: t */
    protected AbstractC5294v.C5295a m19862t(T t, AbstractC5294v.C5295a c5295a) {
        return c5295a;
    }

    /* renamed from: u */
    protected long m19861u(T t, long j) {
        return j;
    }

    /* renamed from: v */
    protected int m19860v(T t, int i) {
        return i;
    }

    /* renamed from: y */
    public abstract void m19859w(T t, AbstractC5294v abstractC5294v, AbstractC5585y0 abstractC5585y0);

    /* renamed from: z */
    public final void m19857z(final T t, AbstractC5294v abstractC5294v) {
        C5508e.m18915a(!this.f16750f.containsKey(t));
        AbstractC5294v.AbstractC5296b abstractC5296b = new AbstractC5294v.AbstractC5296b() { // from class: com.google.android.exoplayer2.source.a
            @Override // com.google.android.exoplayer2.source.AbstractC5294v.AbstractC5296b
            /* renamed from: a */
            public final void mo19841a(AbstractC5294v abstractC5294v2, AbstractC5585y0 abstractC5585y0) {
                AbstractC5278n.this.m19858x(t, abstractC5294v2, abstractC5585y0);
            }
        };
        C5279a c5279a = new C5279a(t);
        this.f16750f.put(t, new C5280b(abstractC5294v, abstractC5296b, c5279a));
        abstractC5294v.mo19847d((Handler) C5508e.m18911e(this.f16751g), c5279a);
        abstractC5294v.mo19844j(abstractC5296b, this.f16752h);
        if (!m19873p()) {
            abstractC5294v.mo19845f(abstractC5296b);
        }
    }
}
