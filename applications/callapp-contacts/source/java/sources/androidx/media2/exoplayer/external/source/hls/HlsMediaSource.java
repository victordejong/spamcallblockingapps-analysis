package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.C2057w;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.source.AbstractC1728ad;
import androidx.media2.exoplayer.external.source.AbstractC1762b;
import androidx.media2.exoplayer.external.source.AbstractC1770g;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1753ak;
import androidx.media2.exoplayer.external.source.C1761ao;
import androidx.media2.exoplayer.external.source.C1823j;
import androidx.media2.exoplayer.external.source.C1824k;
import androidx.media2.exoplayer.external.source.hls.playlist.AbstractC1821i;
import androidx.media2.exoplayer.external.source.hls.playlist.C1808a;
import androidx.media2.exoplayer.external.source.hls.playlist.C1809b;
import androidx.media2.exoplayer.external.source.hls.playlist.C1812d;
import androidx.media2.exoplayer.external.source.hls.playlist.C1816f;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1983q;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaSource.class */
public final class HlsMediaSource extends AbstractC1762b implements HlsPlaylistTracker.AbstractC1807c {

    /* renamed from: a */
    private final AbstractC1791f f7021a;

    /* renamed from: b */
    private final Uri f7022b;

    /* renamed from: c */
    private final AbstractC1790e f7023c;

    /* renamed from: d */
    private final AbstractC1770g f7024d;

    /* renamed from: e */
    private final AbstractC1468k<?> f7025e;

    /* renamed from: f */
    private final AbstractC1986t f7026f;

    /* renamed from: g */
    private final boolean f7027g;

    /* renamed from: h */
    private final boolean f7028h;

    /* renamed from: i */
    private final HlsPlaylistTracker f7029i;

    /* renamed from: j */
    private final Object f7030j;

    /* renamed from: k */
    private AbstractC1990w f7031k;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory.class */
    public static final class Factory implements AbstractC1728ad {

        /* renamed from: a */
        public boolean f7032a;

        /* renamed from: b */
        public Object f7033b;

        /* renamed from: c */
        private final AbstractC1790e f7034c;

        /* renamed from: d */
        private AbstractC1791f f7035d;

        /* renamed from: e */
        private AbstractC1821i f7036e;

        /* renamed from: f */
        private List<StreamKey> f7037f;

        /* renamed from: g */
        private HlsPlaylistTracker.AbstractC1805a f7038g;

        /* renamed from: h */
        private AbstractC1770g f7039h;

        /* renamed from: i */
        private AbstractC1468k<?> f7040i;

        /* renamed from: j */
        private AbstractC1986t f7041j;

        /* renamed from: k */
        private boolean f7042k;

        /* renamed from: l */
        private boolean f7043l;

        public Factory(AbstractC1790e abstractC1790e) {
            this.f7034c = (AbstractC1790e) C1993a.m41690a(abstractC1790e);
            this.f7036e = new C1808a();
            this.f7038g = C1809b.f7193a;
            this.f7035d = AbstractC1791f.f7076a;
            this.f7040i = AbstractC1468k.f5584e;
            this.f7041j = new C1983q();
            this.f7039h = new C1824k();
        }

        public Factory(AbstractC1968f.AbstractC1969a abstractC1969a) {
            this(new C1782b(abstractC1969a));
        }

        /* renamed from: a */
        public final HlsMediaSource mo42112b(Uri uri) {
            this.f7032a = true;
            List<StreamKey> list = this.f7037f;
            if (list != null) {
                this.f7036e = new C1812d(this.f7036e, list);
            }
            AbstractC1790e abstractC1790e = this.f7034c;
            AbstractC1791f abstractC1791f = this.f7035d;
            AbstractC1770g abstractC1770g = this.f7039h;
            AbstractC1468k<?> abstractC1468k = this.f7040i;
            AbstractC1986t abstractC1986t = this.f7041j;
            return new HlsMediaSource(uri, abstractC1790e, abstractC1791f, abstractC1770g, abstractC1468k, abstractC1986t, this.f7038g.mo42150a(abstractC1790e, abstractC1986t, this.f7036e), this.f7042k, this.f7043l, this.f7033b);
        }
    }

    static {
        C2057w.m41418a("goog.exo.hls");
    }

    private HlsMediaSource(Uri uri, AbstractC1790e abstractC1790e, AbstractC1791f abstractC1791f, AbstractC1770g abstractC1770g, AbstractC1468k<?> abstractC1468k, AbstractC1986t abstractC1986t, HlsPlaylistTracker hlsPlaylistTracker, boolean z, boolean z2, Object obj) {
        this.f7022b = uri;
        this.f7023c = abstractC1790e;
        this.f7021a = abstractC1791f;
        this.f7024d = abstractC1770g;
        this.f7025e = abstractC1468k;
        this.f7026f = abstractC1986t;
        this.f7029i = hlsPlaylistTracker;
        this.f7027g = z;
        this.f7028h = z2;
        this.f7030j = obj;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        return new C1795i(this.f7021a, this.f7029i, this.f7023c, this.f7031k, this.f7025e, this.f7026f, m42284a(c1843a), abstractC1963b, this.f7024d, this.f7027g, this.f7028h);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC1807c
    /* renamed from: a */
    public final void mo42183a(C1816f c1816f) {
        C1761ao c1761ao;
        char m42894a = c1816f.f7254j ? C1446c.m42894a(c1816f.f7247c) : (char) 1;
        char c = (c1816f.f7245a == 2 || c1816f.f7245a == 1) ? m42894a : (char) 1;
        char c2 = c1816f.f7246b;
        C1793g c1793g = new C1793g(this.f7029i.mo42172b(), c1816f);
        if (this.f7029i.mo42163e()) {
            long mo42168c = c1816f.f7247c - this.f7029i.mo42168c();
            boolean z = c1816f.f7253i ? mo42168c + c1816f.f7257m : true;
            List<C1816f.C1817a> list = c1816f.f7256l;
            int i = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
            char c3 = c2;
            if (i == 0) {
                c3 = list.isEmpty() ? (char) 0 : list.get(Math.max(0, list.size() - 3)).f7263f;
            }
            c1761ao = new C1761ao(c, m42894a, z ? 1L : 0L, c1816f.f7257m, mo42168c, c3, true, !c1816f.f7253i, c1793g, this.f7030j);
        } else {
            int i2 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
            char c4 = c2;
            if (i2 == 0) {
                c4 = 0;
            }
            c1761ao = new C1761ao(c, m42894a, c1816f.f7257m, c1816f.f7257m, 0L, c4, true, false, c1793g, this.f7030j);
        }
        m42285a(c1761ao);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1797k[] c1797kArr;
        C1795i c1795i = (C1795i) abstractC1840s;
        c1795i.f7107a.mo42170b(c1795i);
        for (C1797k c1797k : c1795i.f7110d) {
            if (c1797k.f7164m) {
                for (C1753ak c1753ak : c1797k.f7160i) {
                    c1753ak.m42301c();
                }
                for (C1823j c1823j : c1797k.f7161j) {
                    c1823j.m42124a();
                }
            }
            c1797k.f7154c.m41761a(c1797k);
            c1797k.f7158g.removeCallbacksAndMessages(null);
            c1797k.f7168q = true;
            c1797k.f7159h.clear();
        }
        c1795i.f7109c = null;
        c1795i.f7108b.m42040b();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        this.f7031k = abstractC1990w;
        this.f7029i.mo42180a(this.f7022b, m42284a((AbstractC1842t.C1843a) null), this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        this.f7029i.mo42182a();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f7030j;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public final void mo42065f() throws IOException {
        this.f7029i.mo42165d();
    }
}
