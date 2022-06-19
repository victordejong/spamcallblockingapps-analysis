package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.hls.AbstractC5242h;
import com.google.android.exoplayer2.source.hls.playlist.C5263e;
import com.google.android.exoplayer2.source.hls.playlist.C5266f;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.C5494v;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C5508e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/c.class */
public final class C5260c implements HlsPlaylistTracker, Loader.AbstractC5462b<C5494v<AbstractC5268g>> {

    /* renamed from: d */
    public static final HlsPlaylistTracker.AbstractC5255a f16612d = C5258a.f16611a;

    /* renamed from: e */
    private final AbstractC5242h f16613e;

    /* renamed from: f */
    private final AbstractC5271i f16614f;

    /* renamed from: g */
    private final AbstractC5493u f16615g;

    /* renamed from: h */
    private final HashMap<Uri, RunnableC5261a> f16616h;

    /* renamed from: i */
    private final List<HlsPlaylistTracker.AbstractC5256b> f16617i;

    /* renamed from: j */
    private final double f16618j;

    /* renamed from: k */
    private C5494v.AbstractC5495a<AbstractC5268g> f16619k;

    /* renamed from: l */
    private AbstractC5297w.C5298a f16620l;

    /* renamed from: m */
    private Loader f16621m;

    /* renamed from: n */
    private Handler f16622n;

    /* renamed from: o */
    private HlsPlaylistTracker.AbstractC5257c f16623o;

    /* renamed from: p */
    private C5263e f16624p;

    /* renamed from: q */
    private Uri f16625q;

    /* renamed from: r */
    private C5266f f16626r;

    /* renamed from: s */
    private boolean f16627s;

    /* renamed from: t */
    private long f16628t;

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/c$a.class */
    public final class RunnableC5261a implements Loader.AbstractC5462b<C5494v<AbstractC5268g>>, Runnable {

        /* renamed from: d */
        private final Uri f16629d;

        /* renamed from: e */
        private final Loader f16630e = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: f */
        private final C5494v<AbstractC5268g> f16631f;

        /* renamed from: g */
        private C5266f f16632g;

        /* renamed from: h */
        private long f16633h;

        /* renamed from: i */
        private long f16634i;

        /* renamed from: j */
        private long f16635j;

        /* renamed from: k */
        private long f16636k;

        /* renamed from: l */
        private boolean f16637l;

        /* renamed from: m */
        private IOException f16638m;

        public RunnableC5261a(Uri uri) {
            C5260c.this = r9;
            this.f16629d = uri;
            this.f16631f = new C5494v<>(r9.f16613e.mo20058a(4), uri, 4, r9.f16619k);
        }

        /* renamed from: d */
        private boolean m19925d(long j) {
            this.f16636k = SystemClock.elapsedRealtime() + j;
            return this.f16629d.equals(C5260c.this.f16625q) && !C5260c.this.m19958F();
        }

        /* renamed from: h */
        private void m19921h() {
            long m19041n = this.f16630e.m19041n(this.f16631f, this, C5260c.this.f16615g.mo18958c(this.f16631f.f17831b));
            AbstractC5297w.C5298a c5298a = C5260c.this.f16620l;
            C5494v<AbstractC5268g> c5494v = this.f16631f;
            c5298a.m19827F(c5494v.f17830a, c5494v.f17831b, m19041n);
        }

        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* renamed from: o */
        public void m19916o(C5266f c5266f, long j) {
            C5266f c5266f2;
            C5266f c5266f3 = this.f16632g;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f16633h = elapsedRealtime;
            C5266f m19962B = C5260c.this.m19962B(c5266f3, c5266f);
            this.f16632g = m19962B;
            if (m19962B != c5266f3) {
                this.f16638m = null;
                this.f16634i = elapsedRealtime;
                C5260c.this.m19952L(this.f16629d, m19962B);
            } else if (!m19962B.f16671l) {
                if (c5266f.f16668i + c5266f.f16674o.size() < this.f16632g.f16668i) {
                    this.f16638m = new HlsPlaylistTracker.PlaylistResetException(this.f16629d);
                    C5260c.this.m19956H(this.f16629d, -9223372036854775807L);
                } else if (elapsedRealtime - this.f16634i > C5543v.m18629b(c5266f2.f16670k) * C5260c.this.f16618j) {
                    this.f16638m = new HlsPlaylistTracker.PlaylistStuckException(this.f16629d);
                    long mo18959b = C5260c.this.f16615g.mo18959b(4, j, this.f16638m, 1);
                    C5260c.this.m19956H(this.f16629d, mo18959b);
                    if (mo18959b != -9223372036854775807L) {
                        m19925d(mo18959b);
                    }
                }
            }
            C5266f c5266f4 = this.f16632g;
            this.f16635j = elapsedRealtime + C5543v.m18629b(c5266f4 != c5266f3 ? c5266f4.f16670k : c5266f4.f16670k / 2);
            if (!this.f16629d.equals(C5260c.this.f16625q) || this.f16632g.f16671l) {
                return;
            }
            m19922g();
        }

        /* renamed from: e */
        public C5266f m19924e() {
            return this.f16632g;
        }

        /* renamed from: f */
        public boolean m19923f() {
            int i;
            boolean z = false;
            if (this.f16632g == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, C5543v.m18629b(this.f16632g.f16675p));
            C5266f c5266f = this.f16632g;
            if (c5266f.f16671l || (i = c5266f.f16663d) == 2 || i == 1 || this.f16633h + max > elapsedRealtime) {
                z = true;
            }
            return z;
        }

        /* renamed from: g */
        public void m19922g() {
            this.f16636k = 0L;
            if (this.f16637l || this.f16630e.m19046i() || this.f16630e.m19047h()) {
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.f16635j) {
                m19921h();
                return;
            }
            this.f16637l = true;
            C5260c.this.f16622n.postDelayed(this, this.f16635j - elapsedRealtime);
        }

        /* renamed from: j */
        public void m19920j() {
            this.f16630e.m19045j();
            IOException iOException = this.f16638m;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }

        /* renamed from: l */
        public void mo19040i(C5494v<AbstractC5268g> c5494v, long j, long j2, boolean z) {
            C5260c.this.f16620l.m19798w(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b());
        }

        /* renamed from: m */
        public void mo19039k(C5494v<AbstractC5268g> c5494v, long j, long j2) {
            AbstractC5268g m18953e = c5494v.m18953e();
            if (!(m18953e instanceof C5266f)) {
                this.f16638m = new ParserException("Loaded playlist has unexpected type.");
                return;
            }
            m19916o((C5266f) m18953e, j2);
            C5260c.this.f16620l.m19795z(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b());
        }

        /* renamed from: n */
        public Loader.C5463c mo19038s(C5494v<AbstractC5268g> c5494v, long j, long j2, IOException iOException, int i) {
            Loader.C5463c c5463c;
            long mo18959b = C5260c.this.f16615g.mo18959b(c5494v.f17831b, j2, iOException, i);
            boolean z = mo18959b != -9223372036854775807L;
            boolean z2 = C5260c.this.m19956H(this.f16629d, mo18959b) || !z;
            boolean z3 = z2;
            if (z) {
                z3 = z2 | m19925d(mo18959b);
            }
            if (z3) {
                long mo18960a = C5260c.this.f16615g.mo18960a(c5494v.f17831b, j2, iOException, i);
                c5463c = mo18960a != -9223372036854775807L ? Loader.m19048g(false, mo18960a) : Loader.f17691d;
            } else {
                c5463c = Loader.f17690c;
            }
            C5260c.this.f16620l.m19830C(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b(), iOException, !c5463c.m19035c());
            return c5463c;
        }

        /* renamed from: p */
        public void m19915p() {
            this.f16630e.m19043l();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16637l = false;
            m19921h();
        }
    }

    public C5260c(AbstractC5242h abstractC5242h, AbstractC5493u abstractC5493u, AbstractC5271i abstractC5271i) {
        this(abstractC5242h, abstractC5493u, abstractC5271i, 3.5d);
    }

    public C5260c(AbstractC5242h abstractC5242h, AbstractC5493u abstractC5493u, AbstractC5271i abstractC5271i, double d) {
        this.f16613e = abstractC5242h;
        this.f16614f = abstractC5271i;
        this.f16615g = abstractC5493u;
        this.f16618j = d;
        this.f16617i = new ArrayList();
        this.f16616h = new HashMap<>();
        this.f16628t = -9223372036854775807L;
    }

    /* renamed from: A */
    private static C5266f.C5267a m19963A(C5266f c5266f, C5266f c5266f2) {
        int i = (int) (c5266f2.f16668i - c5266f.f16668i);
        List<C5266f.C5267a> list = c5266f.f16674o;
        return i < list.size() ? list.get(i) : null;
    }

    /* renamed from: B */
    public C5266f m19962B(C5266f c5266f, C5266f c5266f2) {
        if (!c5266f2.m19902f(c5266f)) {
            C5266f c5266f3 = c5266f;
            if (c5266f2.f16671l) {
                c5266f3 = c5266f.m19904d();
            }
            return c5266f3;
        }
        return c5266f2.m19905c(m19960D(c5266f, c5266f2), m19961C(c5266f, c5266f2));
    }

    /* renamed from: C */
    private int m19961C(C5266f c5266f, C5266f c5266f2) {
        C5266f.C5267a m19963A;
        if (c5266f2.f16666g) {
            return c5266f2.f16667h;
        }
        C5266f c5266f3 = this.f16626r;
        int i = c5266f3 != null ? c5266f3.f16667h : 0;
        if (c5266f != null && (m19963A = m19963A(c5266f, c5266f2)) != null) {
            return (c5266f.f16667h + m19963A.f16680h) - c5266f2.f16674o.get(0).f16680h;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: D */
    private long m19960D(C5266f c5266f, C5266f c5266f2) {
        if (c5266f2.f16672m) {
            return c5266f2.f16665f;
        }
        C5266f c5266f3 = this.f16626r;
        char c = c5266f3 != null ? c5266f3.f16665f : (char) 0;
        if (c5266f == null) {
            return c;
        }
        int size = c5266f.f16674o.size();
        C5266f.C5267a m19963A = m19963A(c5266f, c5266f2);
        return m19963A != null ? c5266f.f16665f + m19963A.f16681i : ((long) size) == c5266f2.f16668i - c5266f.f16668i ? c5266f.m19903e() : c;
    }

    /* renamed from: E */
    private boolean m19959E(Uri uri) {
        List<C5263e.C5265b> list = this.f16624p.f16644f;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(list.get(i).f16657a)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: F */
    public boolean m19958F() {
        List<C5263e.C5265b> list = this.f16624p.f16644f;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            RunnableC5261a runnableC5261a = this.f16616h.get(list.get(i).f16657a);
            if (elapsedRealtime > runnableC5261a.f16636k) {
                this.f16625q = runnableC5261a.f16629d;
                runnableC5261a.m19922g();
                return true;
            }
        }
        return false;
    }

    /* renamed from: G */
    private void m19957G(Uri uri) {
        if (uri.equals(this.f16625q) || !m19959E(uri)) {
            return;
        }
        C5266f c5266f = this.f16626r;
        if (c5266f != null && c5266f.f16671l) {
            return;
        }
        this.f16625q = uri;
        this.f16616h.get(uri).m19922g();
    }

    /* renamed from: H */
    public boolean m19956H(Uri uri, long j) {
        int size = this.f16617i.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z |= !this.f16617i.get(i).mo19966i(uri, j);
        }
        return z;
    }

    /* renamed from: L */
    public void m19952L(Uri uri, C5266f c5266f) {
        if (uri.equals(this.f16625q)) {
            if (this.f16626r == null) {
                this.f16627s = !c5266f.f16671l;
                this.f16628t = c5266f.f16665f;
            }
            this.f16626r = c5266f;
            this.f16623o.mo19965c(c5266f);
        }
        int size = this.f16617i.size();
        for (int i = 0; i < size; i++) {
            this.f16617i.get(i).mo19967g();
        }
    }

    /* renamed from: z */
    private void m19929z(List<Uri> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = list.get(i);
            this.f16616h.put(uri, new RunnableC5261a(uri));
        }
    }

    /* renamed from: I */
    public void mo19040i(C5494v<AbstractC5268g> c5494v, long j, long j2, boolean z) {
        this.f16620l.m19798w(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b());
    }

    /* renamed from: J */
    public void mo19039k(C5494v<AbstractC5268g> c5494v, long j, long j2) {
        AbstractC5268g m18953e = c5494v.m18953e();
        boolean z = m18953e instanceof C5266f;
        C5263e m19911e = z ? C5263e.m19911e(m18953e.f16688a) : (C5263e) m18953e;
        this.f16624p = m19911e;
        this.f16619k = this.f16614f.mo19877a(m19911e);
        this.f16625q = m19911e.f16644f.get(0).f16657a;
        m19929z(m19911e.f16643e);
        RunnableC5261a runnableC5261a = this.f16616h.get(this.f16625q);
        if (z) {
            runnableC5261a.m19916o((C5266f) m18953e, j2);
        } else {
            runnableC5261a.m19922g();
        }
        this.f16620l.m19795z(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b());
    }

    /* renamed from: K */
    public Loader.C5463c mo19038s(C5494v<AbstractC5268g> c5494v, long j, long j2, IOException iOException, int i) {
        long mo18960a = this.f16615g.mo18960a(c5494v.f17831b, j2, iOException, i);
        boolean z = mo18960a == -9223372036854775807L;
        this.f16620l.m19830C(c5494v.f17830a, c5494v.m18952f(), c5494v.m18954d(), 4, j, j2, c5494v.m18956b(), iOException, z);
        return z ? Loader.f17691d : Loader.m19048g(false, mo18960a);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public boolean mo19951a(Uri uri) {
        return this.f16616h.get(uri).m19923f();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public void mo19950b(HlsPlaylistTracker.AbstractC5256b abstractC5256b) {
        this.f16617i.remove(abstractC5256b);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: c */
    public void mo19949c(Uri uri) {
        this.f16616h.get(uri).m19920j();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: d */
    public long mo19948d() {
        return this.f16628t;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: e */
    public boolean mo19947e() {
        return this.f16627s;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: f */
    public C5263e mo19946f() {
        return this.f16624p;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: g */
    public void mo19945g(Uri uri, AbstractC5297w.C5298a c5298a, HlsPlaylistTracker.AbstractC5257c abstractC5257c) {
        this.f16622n = new Handler();
        this.f16620l = c5298a;
        this.f16623o = abstractC5257c;
        C5494v c5494v = new C5494v(this.f16613e.mo20058a(4), uri, 4, this.f16614f.mo19876b());
        C5508e.m18910f(this.f16621m == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        this.f16621m = loader;
        c5298a.m19827F(c5494v.f17830a, c5494v.f17831b, loader.m19041n(c5494v, this, this.f16615g.mo18958c(c5494v.f17831b)));
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: h */
    public void mo19944h() {
        Loader loader = this.f16621m;
        if (loader != null) {
            loader.m19045j();
        }
        Uri uri = this.f16625q;
        if (uri != null) {
            mo19949c(uri);
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: j */
    public void mo19943j(Uri uri) {
        this.f16616h.get(uri).m19922g();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: l */
    public void mo19942l(HlsPlaylistTracker.AbstractC5256b abstractC5256b) {
        this.f16617i.add(abstractC5256b);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: m */
    public C5266f mo19941m(Uri uri, boolean z) {
        C5266f m19924e = this.f16616h.get(uri).m19924e();
        if (m19924e != null && z) {
            m19957G(uri);
        }
        return m19924e;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.f16625q = null;
        this.f16626r = null;
        this.f16624p = null;
        this.f16628t = -9223372036854775807L;
        this.f16621m.m19043l();
        this.f16621m = null;
        for (RunnableC5261a runnableC5261a : this.f16616h.values()) {
            runnableC5261a.m19915p();
        }
        this.f16622n.removeCallbacksAndMessages(null);
        this.f16622n = null;
        this.f16616h.clear();
    }
}
