package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.source.AbstractC1756al;
import androidx.media2.exoplayer.external.util.AbstractC2011l;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b.class */
public abstract class AbstractC1435b implements AbstractC1375ag, AbstractC1376ah {

    /* renamed from: a */
    private final int f5462a;

    /* renamed from: b */
    private RendererConfiguration f5463b;

    /* renamed from: c */
    private int f5464c;

    /* renamed from: d */
    private int f5465d;

    /* renamed from: e */
    private AbstractC1756al f5466e;

    /* renamed from: f */
    private Format[] f5467f;

    /* renamed from: g */
    private long f5468g;

    /* renamed from: h */
    private long f5469h = Long.MIN_VALUE;

    /* renamed from: i */
    private boolean f5470i;

    public AbstractC1435b(int i) {
        this.f5462a = i;
    }

    /* renamed from: a */
    public static boolean m42934a(AbstractC1468k<?> abstractC1468k, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (abstractC1468k != null) {
            return abstractC1468k.mo42867a(drmInitData);
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag, androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo42938a() {
        return this.f5462a;
    }

    /* renamed from: a */
    public final int m42933a(C2058x c2058x, C1442e c1442e, boolean z) {
        int mo42117a = this.f5466e.mo42117a(c2058x, c1442e, z);
        if (mo42117a == -4) {
            if (c1442e.m42911c()) {
                this.f5469h = Long.MIN_VALUE;
                return this.f5470i ? -4 : -3;
            }
            c1442e.f5495d += this.f5468g;
            this.f5469h = Math.max(this.f5469h, c1442e.f5495d);
        } else if (mo42117a == -5) {
            Format format = c2058x.f8282c;
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                c2058x.f8282c = format.copyWithSubsampleOffsetUs(format.subsampleOffsetUs + this.f5468g);
            }
        }
        return mo42117a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public void mo42462a(float f) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo42937a(int i) {
        this.f5464c = i;
    }

    @Override // androidx.media2.exoplayer.external.C1372af.AbstractC1374b
    /* renamed from: a */
    public void mo41430a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo42936a(long j) throws ExoPlaybackException {
        this.f5470i = false;
        this.f5469h = j;
        mo41179a(j, false);
    }

    /* renamed from: a */
    protected void mo41179a(long j, boolean z) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo42935a(RendererConfiguration rendererConfiguration, Format[] formatArr, AbstractC1756al abstractC1756al, long j, boolean z, long j2) throws ExoPlaybackException {
        C1993a.m41686b(this.f5465d == 0);
        this.f5463b = rendererConfiguration;
        this.f5465d = 1;
        mo41444a(z);
        mo42932a(formatArr, abstractC1756al, j2);
        mo41179a(j, z);
    }

    /* renamed from: a */
    protected void mo41444a(boolean z) throws ExoPlaybackException {
    }

    /* renamed from: a */
    public void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo42932a(Format[] formatArr, AbstractC1756al abstractC1756al, long j) throws ExoPlaybackException {
        C1993a.m41686b(!this.f5470i);
        this.f5466e = abstractC1756al;
        this.f5469h = j;
        this.f5467f = formatArr;
        this.f5468g = j;
        mo41176a(formatArr, j);
    }

    /* renamed from: b */
    public final int m42930b(long j) {
        return this.f5466e.mo42118a(j - this.f5468g);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: b */
    public final AbstractC1376ah mo42931b() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: c */
    public AbstractC2011l mo42929c() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: e */
    public final void mo42928e() throws ExoPlaybackException {
        boolean z = true;
        if (this.f5465d != 1) {
            z = false;
        }
        C1993a.m41686b(z);
        this.f5465d = 2;
        mo41435p();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: f */
    public final AbstractC1756al mo42927f() {
        return this.f5466e;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: g */
    public final boolean mo42926g() {
        return this.f5469h == Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: h */
    public final long mo42925h() {
        return this.f5469h;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: i */
    public final void mo42924i() {
        this.f5470i = true;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: i_ */
    public final int mo42923i_() {
        return this.f5465d;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: j */
    public final boolean mo42922j() {
        return this.f5470i;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: k */
    public final void mo42921k() throws IOException {
        this.f5466e.mo42116b();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: l */
    public final void mo42920l() throws ExoPlaybackException {
        C1993a.m41686b(this.f5465d == 2);
        this.f5465d = 1;
        mo41434q();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: m */
    public final void mo42919m() {
        boolean z = true;
        if (this.f5465d != 1) {
            z = false;
        }
        C1993a.m41686b(z);
        this.f5465d = 0;
        this.f5466e = null;
        this.f5467f = null;
        this.f5470i = false;
        mo41429r();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: n */
    public final void mo42918n() {
        C1993a.m41686b(this.f5465d == 0);
        mo41433s();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: o */
    public int mo42455o() throws ExoPlaybackException {
        return 0;
    }

    /* renamed from: p */
    protected void mo41435p() throws ExoPlaybackException {
    }

    /* renamed from: q */
    protected void mo41434q() throws ExoPlaybackException {
    }

    /* renamed from: r */
    protected void mo41429r() {
    }

    /* renamed from: s */
    protected void mo41433s() {
    }

    /* renamed from: t */
    public final Format[] m42917t() {
        return this.f5467f;
    }

    /* renamed from: u */
    public final RendererConfiguration m42916u() {
        return this.f5463b;
    }

    /* renamed from: v */
    public final int m42915v() {
        return this.f5464c;
    }

    /* renamed from: w */
    public final boolean m42914w() {
        return mo42926g() ? this.f5470i : this.f5466e.mo42119a();
    }
}
