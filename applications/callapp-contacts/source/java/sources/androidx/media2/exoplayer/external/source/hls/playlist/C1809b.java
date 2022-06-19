package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.source.hls.AbstractC1790e;
import androidx.media2.exoplayer.external.source.hls.playlist.C1813e;
import androidx.media2.exoplayer.external.source.hls.playlist.C1816f;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.C1987u;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.C1993a;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/b.class */
public final class C1809b implements HlsPlaylistTracker, Loader.AbstractC1956a<C1987u<AbstractC1818g>> {

    /* renamed from: a */
    public static final HlsPlaylistTracker.AbstractC1805a f7193a = C1811c.f7221a;

    /* renamed from: b */
    private final AbstractC1790e f7194b;

    /* renamed from: c */
    private final AbstractC1821i f7195c;

    /* renamed from: d */
    private final AbstractC1986t f7196d;

    /* renamed from: e */
    private final HashMap<Uri, RunnableC1810a> f7197e;

    /* renamed from: f */
    private final List<HlsPlaylistTracker.AbstractC1806b> f7198f;

    /* renamed from: g */
    private final double f7199g;

    /* renamed from: h */
    private C1987u.AbstractC1988a<AbstractC1818g> f7200h;

    /* renamed from: i */
    private AbstractC1845u.C1846a f7201i;

    /* renamed from: j */
    private Loader f7202j;

    /* renamed from: k */
    private Handler f7203k;

    /* renamed from: l */
    private HlsPlaylistTracker.AbstractC1807c f7204l;

    /* renamed from: m */
    private C1813e f7205m;

    /* renamed from: n */
    private Uri f7206n;

    /* renamed from: o */
    private C1816f f7207o;

    /* renamed from: p */
    private boolean f7208p;

    /* renamed from: q */
    private long f7209q;

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/b$a.class */
    public final class RunnableC1810a implements Loader.AbstractC1956a<C1987u<AbstractC1818g>>, Runnable {

        /* renamed from: a */
        final Loader f7210a = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: b */
        C1816f f7211b;

        /* renamed from: c */
        long f7212c;

        /* renamed from: e */
        private final Uri f7214e;

        /* renamed from: f */
        private final C1987u<AbstractC1818g> f7215f;

        /* renamed from: g */
        private long f7216g;

        /* renamed from: h */
        private long f7217h;

        /* renamed from: i */
        private long f7218i;

        /* renamed from: j */
        private boolean f7219j;

        /* renamed from: k */
        private IOException f7220k;

        public RunnableC1810a(Uri uri) {
            C1809b.this = r9;
            this.f7214e = uri;
            this.f7215f = new C1987u<>(r9.f7194b.mo42229a(), uri, 4, r9.f7200h);
        }

        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* renamed from: a */
        public void m42154a(C1816f c1816f) {
            C1816f c1816f2 = this.f7211b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f7212c = elapsedRealtime;
            C1816f m42174a = C1809b.m42174a(C1809b.this, c1816f2, c1816f);
            this.f7211b = m42174a;
            if (m42174a != c1816f2) {
                this.f7220k = null;
                this.f7216g = elapsedRealtime;
                C1809b.m42175a(C1809b.this, this.f7214e, m42174a);
            } else if (!m42174a.f7253i) {
                if (c1816f.f7250f + c1816f.f7256l.size() < this.f7211b.f7250f) {
                    this.f7220k = new HlsPlaylistTracker.PlaylistResetException(this.f7214e);
                    C1809b.m42176a(C1809b.this, this.f7214e, -9223372036854775807L);
                } else if (elapsedRealtime - this.f7216g > C1446c.m42894a(this.f7211b.f7252h) * C1809b.this.f7199g) {
                    this.f7220k = new HlsPlaylistTracker.PlaylistStuckException(this.f7214e);
                    long mo41702a = C1809b.this.f7196d.mo41702a(this.f7220k);
                    C1809b.m42176a(C1809b.this, this.f7214e, mo41702a);
                    if (mo41702a != -9223372036854775807L) {
                        m42157a(mo41702a);
                    }
                }
            }
            C1816f c1816f3 = this.f7211b;
            this.f7217h = elapsedRealtime + C1446c.m42894a(c1816f3 != c1816f2 ? c1816f3.f7252h : c1816f3.f7252h / 2);
            if (!this.f7214e.equals(C1809b.this.f7206n) || this.f7211b.f7253i) {
                return;
            }
            m42158a();
        }

        /* renamed from: a */
        private boolean m42157a(long j) {
            this.f7218i = SystemClock.elapsedRealtime() + j;
            return this.f7214e.equals(C1809b.this.f7206n) && !C1809b.m42159h(C1809b.this);
        }

        /* renamed from: c */
        private void m42151c() {
            C1809b.this.f7201i.m42045a(this.f7215f.f8042a, this.f7215f.f8043b, this.f7210a.m41762a(this.f7215f, this, C1809b.this.f7196d.mo41703a(this.f7215f.f8043b)));
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
        /* renamed from: a */
        public final /* synthetic */ Loader.C1957b mo41753a(C1987u<AbstractC1818g> c1987u, long j, long j2, IOException iOException, int i) {
            Loader.C1957b c1957b;
            C1987u<AbstractC1818g> c1987u2 = c1987u;
            long mo41702a = C1809b.this.f7196d.mo41702a(iOException);
            boolean z = mo41702a != -9223372036854775807L;
            boolean z2 = C1809b.m42176a(C1809b.this, this.f7214e, mo41702a) || !z;
            boolean z3 = z2;
            if (z) {
                z3 = z2 | m42157a(mo41702a);
            }
            if (z3) {
                long mo41701a = C1809b.this.f7196d.mo41701a(iOException, i);
                c1957b = mo41701a != -9223372036854775807L ? Loader.m41757a(false, mo41701a) : Loader.f7903d;
            } else {
                c1957b = Loader.f7902c;
            }
            C1809b.this.f7201i.m42042a(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, 4, j, j2, c1987u2.f8044c.f8047a, iOException, !c1957b.m41751a());
            return c1957b;
        }

        /* renamed from: a */
        public final void m42158a() {
            this.f7218i = 0L;
            if (this.f7219j || this.f7210a.m41764a()) {
                return;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.f7217h) {
                m42151c();
                return;
            }
            this.f7219j = true;
            C1809b.this.f7203k.postDelayed(this, this.f7217h - elapsedRealtime);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
        /* renamed from: a */
        public final /* synthetic */ void mo41754a(C1987u<AbstractC1818g> c1987u, long j, long j2) {
            C1987u<AbstractC1818g> c1987u2 = c1987u;
            AbstractC1818g abstractC1818g = c1987u2.f8045d;
            if (!(abstractC1818g instanceof C1816f)) {
                this.f7220k = new ParserException("Loaded playlist has unexpected type.");
                return;
            }
            m42154a((C1816f) abstractC1818g);
            C1809b.this.f7201i.m42041a(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, j, j2, c1987u2.f8044c.f8047a);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
        /* renamed from: a */
        public final /* synthetic */ void mo41752a(C1987u<AbstractC1818g> c1987u, long j, long j2, boolean z) {
            C1987u<AbstractC1818g> c1987u2 = c1987u;
            C1809b.this.f7201i.m42037b(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, j, j2, c1987u2.f8044c.f8047a);
        }

        /* renamed from: b */
        public final void m42153b() throws IOException {
            this.f7210a.m41763a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            IOException iOException = this.f7220k;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7219j = false;
            m42151c();
        }
    }

    public C1809b(AbstractC1790e abstractC1790e, AbstractC1986t abstractC1986t, AbstractC1821i abstractC1821i) {
        this(abstractC1790e, abstractC1986t, abstractC1821i, 3.5d);
    }

    public C1809b(AbstractC1790e abstractC1790e, AbstractC1986t abstractC1986t, AbstractC1821i abstractC1821i, double d) {
        this.f7194b = abstractC1790e;
        this.f7195c = abstractC1821i;
        this.f7196d = abstractC1986t;
        this.f7199g = d;
        this.f7198f = new ArrayList();
        this.f7197e = new HashMap<>();
        this.f7209q = -9223372036854775807L;
    }

    /* renamed from: a */
    private static C1816f.C1817a m42173a(C1816f c1816f, C1816f c1816f2) {
        int i = (int) (c1816f2.f7250f - c1816f.f7250f);
        List<C1816f.C1817a> list = c1816f.f7256l;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v10 */
    /* JADX WARN: Type inference failed for: r26v11 */
    /* JADX WARN: Type inference failed for: r26v8 */
    /* JADX WARN: Type inference failed for: r26v9 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Type inference failed for: r29v5 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* renamed from: a */
    static /* synthetic */ C1816f m42174a(C1809b c1809b, C1816f c1816f, C1816f c1816f2) {
        ?? r29;
        int i;
        ?? r26 = true;
        if (c1816f != null) {
            if (c1816f2.f7250f > c1816f.f7250f) {
                r26 = true;
            } else {
                if (c1816f2.f7250f >= c1816f.f7250f) {
                    int size = c1816f2.f7256l.size();
                    int size2 = c1816f.f7256l.size();
                    r26 = true;
                    if (size <= size2) {
                        if (size == size2 && c1816f2.f7253i && !c1816f.f7253i) {
                            r26 = true;
                        }
                    }
                }
                r26 = false;
            }
        }
        if (r26 == false) {
            if (c1816f2.f7253i && !c1816f.f7253i) {
                return new C1816f(c1816f.f7245a, c1816f.f7270n, c1816f.f7271o, c1816f.f7246b, c1816f.f7247c, c1816f.f7248d, c1816f.f7249e, c1816f.f7250f, c1816f.f7251g, c1816f.f7252h, c1816f.f7272p, true, c1816f.f7254j, c1816f.f7255k, c1816f.f7256l);
            }
            return c1816f;
        }
        if (c1816f2.f7254j) {
            r29 = c1816f2.f7247c;
        } else {
            C1816f c1816f3 = c1809b.f7207o;
            ?? r32 = c1816f3 != null ? c1816f3.f7247c : false;
            r29 = r32;
            if (c1816f != null) {
                int size3 = c1816f.f7256l.size();
                C1816f.C1817a m42173a = m42173a(c1816f, c1816f2);
                if (m42173a != null) {
                    r29 = c1816f.f7247c + m42173a.f7263f;
                } else {
                    r29 = r32;
                    if (size3 == c1816f2.f7250f - c1816f.f7250f) {
                        r29 = c1816f.m42146a();
                    }
                }
            }
        }
        if (c1816f2.f7248d) {
            i = c1816f2.f7249e;
        } else {
            C1816f c1816f4 = c1809b.f7207o;
            int i2 = c1816f4 != null ? c1816f4.f7249e : 0;
            i = i2;
            if (c1816f != null) {
                C1816f.C1817a m42173a2 = m42173a(c1816f, c1816f2);
                i = i2;
                if (m42173a2 != null) {
                    i = (c1816f.f7249e + m42173a2.f7262e) - c1816f2.f7256l.get(0).f7262e;
                }
            }
        }
        return new C1816f(c1816f2.f7245a, c1816f2.f7270n, c1816f2.f7271o, c1816f2.f7246b, r29 == true ? 1L : 0L, true, i, c1816f2.f7250f, c1816f2.f7251g, c1816f2.f7252h, c1816f2.f7272p, c1816f2.f7253i, c1816f2.f7254j, c1816f2.f7255k, c1816f2.f7256l);
    }

    /* renamed from: a */
    static /* synthetic */ void m42175a(C1809b c1809b, Uri uri, C1816f c1816f) {
        if (uri.equals(c1809b.f7206n)) {
            if (c1809b.f7207o == null) {
                c1809b.f7208p = !c1816f.f7253i;
                c1809b.f7209q = c1816f.f7247c;
            }
            c1809b.f7207o = c1816f;
            c1809b.f7204l.mo42183a(c1816f);
        }
        int size = c1809b.f7198f.size();
        for (int i = 0; i < size; i++) {
            c1809b.f7198f.get(i).mo42184g();
        }
    }

    /* renamed from: a */
    static /* synthetic */ boolean m42176a(C1809b c1809b, Uri uri, long j) {
        int size = c1809b.f7198f.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z |= !c1809b.f7198f.get(i).mo42185a(uri, j);
        }
        return z;
    }

    /* renamed from: h */
    static /* synthetic */ boolean m42159h(C1809b c1809b) {
        List<C1813e.C1815b> list = c1809b.f7205m.f7226c;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            RunnableC1810a runnableC1810a = c1809b.f7197e.get(list.get(i).f7239a);
            if (elapsedRealtime > runnableC1810a.f7218i) {
                c1809b.f7206n = runnableC1810a.f7214e;
                runnableC1810a.m42158a();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public final C1816f mo42179a(Uri uri, boolean z) {
        boolean z2;
        C1816f c1816f;
        C1816f c1816f2 = this.f7197e.get(uri).f7211b;
        if (c1816f2 != null && z && !uri.equals(this.f7206n)) {
            List<C1813e.C1815b> list = this.f7205m.f7226c;
            int i = 0;
            while (true) {
                z2 = false;
                if (i >= list.size()) {
                    break;
                } else if (uri.equals(list.get(i).f7239a)) {
                    z2 = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z2 && ((c1816f = this.f7207o) == null || !c1816f.f7253i)) {
                this.f7206n = uri;
                this.f7197e.get(uri).m42158a();
            }
        }
        return c1816f2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Loader.C1957b mo41753a(C1987u<AbstractC1818g> c1987u, long j, long j2, IOException iOException, int i) {
        C1987u<AbstractC1818g> c1987u2 = c1987u;
        long mo41701a = this.f7196d.mo41701a(iOException, i);
        boolean z = mo41701a == -9223372036854775807L;
        this.f7201i.m42042a(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, 4, j, j2, c1987u2.f8044c.f8047a, iOException, z);
        return z ? Loader.f7903d : Loader.m41757a(false, mo41701a);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public final void mo42182a() {
        this.f7206n = null;
        this.f7207o = null;
        this.f7205m = null;
        this.f7209q = -9223372036854775807L;
        this.f7202j.m41761a((Loader.AbstractC1960e) null);
        this.f7202j = null;
        for (RunnableC1810a runnableC1810a : this.f7197e.values()) {
            runnableC1810a.f7210a.m41761a((Loader.AbstractC1960e) null);
        }
        this.f7203k.removeCallbacksAndMessages(null);
        this.f7203k = null;
        this.f7197e.clear();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public final void mo42180a(Uri uri, AbstractC1845u.C1846a c1846a, HlsPlaylistTracker.AbstractC1807c abstractC1807c) {
        this.f7203k = new Handler();
        this.f7201i = c1846a;
        this.f7204l = abstractC1807c;
        C1987u c1987u = new C1987u(this.f7194b.mo42229a(), uri, 4, this.f7195c.mo42126a());
        C1993a.m41686b(this.f7202j == null);
        Loader loader = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        this.f7202j = loader;
        c1846a.m42045a(c1987u.f8042a, c1987u.f8043b, loader.m41762a(c1987u, this, this.f7196d.mo41703a(c1987u.f8043b)));
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public final void mo42178a(HlsPlaylistTracker.AbstractC1806b abstractC1806b) {
        this.f7198f.add(abstractC1806b);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41754a(C1987u<AbstractC1818g> c1987u, long j, long j2) {
        C1987u<AbstractC1818g> c1987u2 = c1987u;
        AbstractC1818g abstractC1818g = c1987u2.f8045d;
        boolean z = abstractC1818g instanceof C1816f;
        C1813e m42149a = z ? C1813e.m42149a(abstractC1818g.f7270n) : (C1813e) abstractC1818g;
        this.f7205m = m42149a;
        this.f7200h = this.f7195c.mo42125a(m42149a);
        this.f7206n = m42149a.f7226c.get(0).f7239a;
        List<Uri> list = m42149a.f7225b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = list.get(i);
            this.f7197e.put(uri, new RunnableC1810a(uri));
        }
        RunnableC1810a runnableC1810a = this.f7197e.get(this.f7206n);
        if (z) {
            runnableC1810a.m42154a((C1816f) abstractC1818g);
        } else {
            runnableC1810a.m42158a();
        }
        this.f7201i.m42041a(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, j, j2, c1987u2.f8044c.f8047a);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41752a(C1987u<AbstractC1818g> c1987u, long j, long j2, boolean z) {
        C1987u<AbstractC1818g> c1987u2 = c1987u;
        this.f7201i.m42037b(c1987u2.f8042a, c1987u2.f8044c.f8048b, c1987u2.f8044c.f8049c, j, j2, c1987u2.f8044c.f8047a);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: a */
    public final boolean mo42181a(Uri uri) {
        RunnableC1810a runnableC1810a = this.f7197e.get(uri);
        if (runnableC1810a.f7211b != null) {
            return runnableC1810a.f7211b.f7253i || runnableC1810a.f7211b.f7245a == 2 || runnableC1810a.f7211b.f7245a == 1 || runnableC1810a.f7212c + Math.max(30000L, C1446c.m42894a(runnableC1810a.f7211b.f7257m)) > SystemClock.elapsedRealtime();
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public final C1813e mo42172b() {
        return this.f7205m;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public final void mo42171b(Uri uri) throws IOException {
        this.f7197e.get(uri).m42153b();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: b */
    public final void mo42170b(HlsPlaylistTracker.AbstractC1806b abstractC1806b) {
        this.f7198f.remove(abstractC1806b);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: c */
    public final long mo42168c() {
        return this.f7209q;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: c */
    public final void mo42167c(Uri uri) {
        this.f7197e.get(uri).m42158a();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: d */
    public final void mo42165d() throws IOException {
        Loader loader = this.f7202j;
        if (loader != null) {
            loader.m41763a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        }
        Uri uri = this.f7206n;
        if (uri != null) {
            mo42171b(uri);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker
    /* renamed from: e */
    public final boolean mo42163e() {
        return this.f7208p;
    }
}
