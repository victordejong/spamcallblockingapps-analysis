package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.source.al;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.l;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b.class */
public abstract class b implements ag, ah {

    /* renamed from: a  reason: collision with root package name */
    private final int f2933a;

    /* renamed from: b  reason: collision with root package name */
    private RendererConfiguration f2934b;

    /* renamed from: c  reason: collision with root package name */
    private int f2935c;

    /* renamed from: d  reason: collision with root package name */
    private int f2936d;
    private al e;
    private Format[] f;
    private long g;
    private long h = Long.MIN_VALUE;
    private boolean i;

    public b(int i) {
        this.f2933a = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(k<?> kVar, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (kVar == null) {
            return false;
        }
        return kVar.a(drmInitData);
    }

    @Override // androidx.media2.exoplayer.external.ag, androidx.media2.exoplayer.external.ah
    public final int a() {
        return this.f2933a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(x xVar, e eVar, boolean z) {
        int a2 = this.e.a(xVar, eVar, z);
        if (a2 == -4) {
            if (eVar.c()) {
                this.h = Long.MIN_VALUE;
                return this.i ? -4 : -3;
            }
            eVar.f2950d += this.g;
            this.h = Math.max(this.h, eVar.f2950d);
        } else if (a2 == -5) {
            Format format = xVar.f4257c;
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                xVar.f4257c = format.copyWithSubsampleOffsetUs(format.subsampleOffsetUs + this.g);
            }
        }
        return a2;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public void a(float f) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(int i) {
        this.f2935c = i;
    }

    @Override // androidx.media2.exoplayer.external.af.b
    public void a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(long j) throws ExoPlaybackException {
        this.i = false;
        this.h = j;
        a(j, false);
    }

    protected void a(long j, boolean z) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(RendererConfiguration rendererConfiguration, Format[] formatArr, al alVar, long j, boolean z, long j2) throws ExoPlaybackException {
        a.b(this.f2936d == 0);
        this.f2934b = rendererConfiguration;
        this.f2936d = 1;
        a(z);
        a(formatArr, alVar, j2);
        a(j, z);
    }

    protected void a(boolean z) throws ExoPlaybackException {
    }

    public void a(Format[] formatArr, long j) throws ExoPlaybackException {
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(Format[] formatArr, al alVar, long j) throws ExoPlaybackException {
        a.b(!this.i);
        this.e = alVar;
        this.h = j;
        this.f = formatArr;
        this.g = j;
        a(formatArr, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int b(long j) {
        return this.e.a(j - this.g);
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final ah b() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public l c() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void e() throws ExoPlaybackException {
        boolean z = true;
        if (this.f2936d != 1) {
            z = false;
        }
        a.b(z);
        this.f2936d = 2;
        p();
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final al f() {
        return this.e;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean g() {
        return this.h == Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final long h() {
        return this.h;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void i() {
        this.i = true;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final int i_() {
        return this.f2936d;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean j() {
        return this.i;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void k() throws IOException {
        this.e.b();
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void l() throws ExoPlaybackException {
        a.b(this.f2936d == 2);
        this.f2936d = 1;
        q();
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void m() {
        boolean z = true;
        if (this.f2936d != 1) {
            z = false;
        }
        a.b(z);
        this.f2936d = 0;
        this.e = null;
        this.f = null;
        this.i = false;
        r();
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void n() {
        a.b(this.f2936d == 0);
        s();
    }

    @Override // androidx.media2.exoplayer.external.ah
    public int o() throws ExoPlaybackException {
        return 0;
    }

    protected void p() throws ExoPlaybackException {
    }

    protected void q() throws ExoPlaybackException {
    }

    protected void r() {
    }

    protected void s() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Format[] t() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RendererConfiguration u() {
        return this.f2934b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int v() {
        return this.f2935c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w() {
        return g() ? this.i : this.e.a();
    }
}
