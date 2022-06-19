package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C5053e0;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5039j;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.AbstractC5275l;
import com.google.android.exoplayer2.source.AbstractC5282p;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.C5214d0;
import com.google.android.exoplayer2.source.C5283q;
import com.google.android.exoplayer2.source.hls.playlist.AbstractC5271i;
import com.google.android.exoplayer2.source.hls.playlist.C5259b;
import com.google.android.exoplayer2.source.hls.playlist.C5260c;
import com.google.android.exoplayer2.source.hls.playlist.C5262d;
import com.google.android.exoplayer2.source.hls.playlist.C5263e;
import com.google.android.exoplayer2.source.hls.playlist.C5266f;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.upstream.C5491s;
import com.google.android.exoplayer2.util.C5508e;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsMediaSource.class */
public final class HlsMediaSource extends AbstractC5275l implements HlsPlaylistTracker.AbstractC5257c {

    /* renamed from: f */
    private final AbstractC5243i f16419f;

    /* renamed from: g */
    private final Uri f16420g;

    /* renamed from: h */
    private final AbstractC5242h f16421h;

    /* renamed from: i */
    private final AbstractC5282p f16422i;

    /* renamed from: j */
    private final AbstractC5040k<?> f16423j;

    /* renamed from: k */
    private final AbstractC5493u f16424k;

    /* renamed from: l */
    private final boolean f16425l;

    /* renamed from: m */
    private final int f16426m;

    /* renamed from: n */
    private final boolean f16427n;

    /* renamed from: o */
    private final HlsPlaylistTracker f16428o;

    /* renamed from: p */
    private final Object f16429p;

    /* renamed from: q */
    private AbstractC5497x f16430q;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsMediaSource$Factory.class */
    public static final class Factory {

        /* renamed from: a */
        private final AbstractC5242h f16431a;

        /* renamed from: b */
        private AbstractC5243i f16432b;

        /* renamed from: c */
        private AbstractC5271i f16433c;

        /* renamed from: d */
        private List<StreamKey> f16434d;

        /* renamed from: e */
        private HlsPlaylistTracker.AbstractC5255a f16435e;

        /* renamed from: f */
        private AbstractC5282p f16436f;

        /* renamed from: g */
        private AbstractC5040k<?> f16437g;

        /* renamed from: h */
        private AbstractC5493u f16438h;

        /* renamed from: i */
        private boolean f16439i;

        /* renamed from: j */
        private int f16440j;

        /* renamed from: k */
        private boolean f16441k;

        /* renamed from: l */
        private boolean f16442l;

        /* renamed from: m */
        private Object f16443m;

        public Factory(AbstractC5242h abstractC5242h) {
            this.f16431a = (AbstractC5242h) C5508e.m18911e(abstractC5242h);
            this.f16433c = new C5259b();
            this.f16435e = C5260c.f16612d;
            this.f16432b = AbstractC5243i.f16487a;
            this.f16437g = C5039j.m20776d();
            this.f16438h = new C5491s();
            this.f16436f = new C5283q();
            this.f16440j = 1;
        }

        public Factory(AbstractC5478j.AbstractC5479a abstractC5479a) {
            this(new C5235e(abstractC5479a));
        }

        /* renamed from: a */
        public HlsMediaSource m20094a(Uri uri) {
            this.f16442l = true;
            List<StreamKey> list = this.f16434d;
            if (list != null) {
                this.f16433c = new C5262d(this.f16433c, list);
            }
            AbstractC5242h abstractC5242h = this.f16431a;
            AbstractC5243i abstractC5243i = this.f16432b;
            AbstractC5282p abstractC5282p = this.f16436f;
            AbstractC5040k<?> abstractC5040k = this.f16437g;
            AbstractC5493u abstractC5493u = this.f16438h;
            return new HlsMediaSource(uri, abstractC5242h, abstractC5243i, abstractC5282p, abstractC5040k, abstractC5493u, this.f16435e.mo19964a(abstractC5242h, abstractC5493u, this.f16433c), this.f16439i, this.f16440j, this.f16441k, this.f16443m);
        }

        @Deprecated
        /* renamed from: b */
        public HlsMediaSource m20093b(Uri uri, Handler handler, AbstractC5297w abstractC5297w) {
            HlsMediaSource m20094a = m20094a(uri);
            if (handler != null && abstractC5297w != null) {
                m20094a.mo19847d(handler, abstractC5297w);
            }
            return m20094a;
        }
    }

    static {
        C5053e0.m20746a("goog.exo.hls");
    }

    private HlsMediaSource(Uri uri, AbstractC5242h abstractC5242h, AbstractC5243i abstractC5243i, AbstractC5282p abstractC5282p, AbstractC5040k<?> abstractC5040k, AbstractC5493u abstractC5493u, HlsPlaylistTracker hlsPlaylistTracker, boolean z, int i, boolean z2, Object obj) {
        this.f16420g = uri;
        this.f16421h = abstractC5242h;
        this.f16419f = abstractC5243i;
        this.f16422i = abstractC5282p;
        this.f16423j = abstractC5040k;
        this.f16424k = abstractC5493u;
        this.f16428o = hlsPlaylistTracker;
        this.f16425l = z;
        this.f16426m = i;
        this.f16427n = z2;
        this.f16429p = obj;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: a */
    public AbstractC5292u mo19726a(AbstractC5294v.C5295a c5295a, AbstractC5472e abstractC5472e, long j) {
        return new C5247l(this.f16419f, this.f16428o, this.f16421h, this.f16430q, this.f16423j, this.f16424k, m19874m(c5295a), abstractC5472e, this.f16422i, this.f16425l, this.f16426m, this.f16427n);
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.AbstractC5257c
    /* renamed from: c */
    public void mo19965c(C5266f c5266f) {
        C5214d0 c5214d0;
        char m18629b = c5266f.f16672m ? C5543v.m18629b(c5266f.f16665f) : (char) 1;
        int i = c5266f.f16663d;
        char c = (i == 2 || i == 1) ? m18629b : (char) 1;
        char c2 = c5266f.f16664e;
        C5245j c5245j = new C5245j((C5263e) C5508e.m18911e(this.f16428o.mo19946f()), c5266f);
        if (this.f16428o.mo19947e()) {
            long mo19948d = c5266f.f16665f - this.f16428o.mo19948d();
            boolean z = c5266f.f16671l ? mo19948d + c5266f.f16675p : true;
            List<C5266f.C5267a> list = c5266f.f16674o;
            int i2 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
            char c3 = c2;
            if (i2 == 0) {
                if (!list.isEmpty()) {
                    int max = Math.max(0, list.size() - 3);
                    long j = c5266f.f16675p;
                    long j2 = c5266f.f16670k;
                    while (max > 0 && list.get(max).f16681i > j - (j2 * 2)) {
                        max--;
                    }
                    c3 = list.get(max).f16681i;
                } else {
                    c3 = 0;
                }
            }
            c5214d0 = new C5214d0(c, m18629b, z ? 1L : 0L, c5266f.f16675p, mo19948d, c3, true, !c5266f.f16671l, true, c5245j, this.f16429p);
        } else {
            int i3 = (c2 > (-9223372036854775807L) ? 1 : (c2 == (-9223372036854775807L) ? 0 : -1));
            char c4 = c2;
            if (i3 == 0) {
                c4 = 0;
            }
            long j3 = c5266f.f16675p;
            c5214d0 = new C5214d0(c, m18629b, j3, j3, 0L, c4, true, false, false, c5245j, this.f16429p);
        }
        m19872r(c5214d0);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: h */
    public void mo19724h() {
        this.f16428o.mo19944h();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: i */
    public void mo19723i(AbstractC5292u abstractC5292u) {
        ((C5247l) abstractC5292u).m20045B();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: q */
    protected void mo19722q(AbstractC5497x abstractC5497x) {
        this.f16430q = abstractC5497x;
        this.f16423j.mo20773c();
        this.f16428o.mo19945g(this.f16420g, m19874m(null), this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: s */
    protected void mo19721s() {
        this.f16428o.stop();
        this.f16423j.mo20774b();
    }
}
