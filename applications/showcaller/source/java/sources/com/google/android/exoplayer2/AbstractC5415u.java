package com.google.android.exoplayer2;

import android.os.Looper;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.util.AbstractC5528q;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.u */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/u.class */
public abstract class AbstractC5415u implements AbstractC5187r0, AbstractC5315t0 {

    /* renamed from: d */
    private final int f17393d;

    /* renamed from: f */
    private C5416u0 f17395f;

    /* renamed from: g */
    private int f17396g;

    /* renamed from: h */
    private int f17397h;

    /* renamed from: i */
    private AbstractC5209b0 f17398i;

    /* renamed from: j */
    private Format[] f17399j;

    /* renamed from: k */
    private long f17400k;

    /* renamed from: m */
    private boolean f17402m;

    /* renamed from: n */
    private boolean f17403n;

    /* renamed from: e */
    private final C5090f0 f17394e = new C5090f0();

    /* renamed from: l */
    private long f17401l = Long.MIN_VALUE;

    public AbstractC5415u(int i) {
        this.f17393d = i;
    }

    /* renamed from: P */
    public static boolean m19262P(AbstractC5040k<?> abstractC5040k, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (abstractC5040k != null) {
            return abstractC5040k.mo20770f(drmInitData);
        }
        return false;
    }

    /* renamed from: A */
    public final C5416u0 m19270A() {
        return this.f17395f;
    }

    /* renamed from: B */
    public final C5090f0 m19269B() {
        this.f17394e.m20583a();
        return this.f17394e;
    }

    /* renamed from: C */
    protected final int m19268C() {
        return this.f17396g;
    }

    /* renamed from: D */
    public final Format[] m19267D() {
        return this.f17399j;
    }

    /* renamed from: E */
    public final <T extends AbstractC5043m> DrmSession<T> m19266E(Format format, Format format2, AbstractC5040k<T> abstractC5040k, DrmSession<T> drmSession) {
        if (!(!C5515h0.m18843b(format2.f14464o, format == null ? null : format.f14464o))) {
            return drmSession;
        }
        DrmSession<T> drmSession2 = null;
        if (format2.f14464o != null) {
            if (abstractC5040k == null) {
                throw m19244z(new IllegalStateException("Media requires a DrmSessionManager"), format2);
            }
            drmSession2 = abstractC5040k.mo20771e((Looper) C5508e.m18911e(Looper.myLooper()), format2.f14464o);
        }
        if (drmSession != null) {
            drmSession.mo20768b();
        }
        return drmSession2;
    }

    /* renamed from: F */
    public final boolean m19265F() {
        return mo19257j() ? this.f17402m : this.f17398i.mo19727e();
    }

    /* renamed from: G */
    protected abstract void mo18512G();

    /* renamed from: H */
    protected void mo18605H(boolean z) {
    }

    /* renamed from: I */
    protected abstract void mo18511I(long j, boolean z);

    /* renamed from: J */
    protected void mo18601J() {
    }

    /* renamed from: K */
    protected void mo18599K() {
    }

    /* renamed from: L */
    protected void mo18597L() {
    }

    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
    }

    /* renamed from: N */
    public final int m19264N(C5090f0 c5090f0, C4858e c4858e, boolean z) {
        int mo19731a = this.f17398i.mo19731a(c5090f0, c4858e, z);
        int i = -4;
        if (mo19731a == -4) {
            if (c4858e.isEndOfStream()) {
                this.f17401l = Long.MIN_VALUE;
                if (!this.f17402m) {
                    i = -3;
                }
                return i;
            }
            long j = c4858e.f14776f + this.f17400k;
            c4858e.f14776f = j;
            this.f17401l = Math.max(this.f17401l, j);
        } else if (mo19731a == -5) {
            Format format = c5090f0.f15930c;
            long j2 = format.f14465p;
            if (j2 != Long.MAX_VALUE) {
                c5090f0.f15930c = format.m21744k(j2 + this.f17400k);
            }
        }
        return mo19731a;
    }

    /* renamed from: O */
    public int m19263O(long j) {
        return this.f17398i.mo19729c(j - this.f17400k);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: a */
    public final void mo19261a() {
        C5508e.m18910f(this.f17397h == 0);
        this.f17394e.m20583a();
        mo18601J();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: f */
    public final void mo19260f() {
        boolean z = true;
        if (this.f17397h != 1) {
            z = false;
        }
        C5508e.m18910f(z);
        this.f17394e.m20583a();
        this.f17397h = 0;
        this.f17398i = null;
        this.f17399j = null;
        this.f17402m = false;
        mo18512G();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: g */
    public final AbstractC5209b0 mo19259g() {
        return this.f17398i;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    public final int getState() {
        return this.f17397h;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0, com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: i */
    public final int mo19258i() {
        return this.f17393d;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: j */
    public final boolean mo19257j() {
        return this.f17401l == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: k */
    public final void mo19256k(C5416u0 c5416u0, Format[] formatArr, AbstractC5209b0 abstractC5209b0, long j, boolean z, long j2) {
        C5508e.m18910f(this.f17397h == 0);
        this.f17395f = c5416u0;
        this.f17397h = 1;
        mo18605H(z);
        mo19245y(formatArr, abstractC5209b0, j2);
        mo18511I(j, z);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: l */
    public final void mo19255l() {
        this.f17402m = true;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: m */
    public final AbstractC5315t0 mo19254m() {
        return this;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: o */
    public final void mo19253o(int i) {
        this.f17396g = i;
    }

    /* renamed from: p */
    public int mo19252p() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.C5179p0.AbstractC5181b
    /* renamed from: r */
    public void mo18503r(int i, Object obj) {
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: s */
    public /* synthetic */ void mo19251s(float f) {
        C5183q0.m20214a(this, f);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    public final void start() {
        boolean z = true;
        if (this.f17397h != 1) {
            z = false;
        }
        C5508e.m18910f(z);
        this.f17397h = 2;
        mo18599K();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    public final void stop() {
        C5508e.m18910f(this.f17397h == 2);
        this.f17397h = 1;
        mo18597L();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: t */
    public final void mo19250t() {
        this.f17398i.mo19730b();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: u */
    public final long mo19249u() {
        return this.f17401l;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: v */
    public final void mo19248v(long j) {
        this.f17402m = false;
        this.f17401l = j;
        mo18511I(j, false);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: w */
    public final boolean mo19247w() {
        return this.f17402m;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: x */
    public AbstractC5528q mo19246x() {
        return null;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: y */
    public final void mo19245y(Format[] formatArr, AbstractC5209b0 abstractC5209b0, long j) {
        C5508e.m18910f(!this.f17402m);
        this.f17398i = abstractC5209b0;
        this.f17401l = j;
        this.f17399j = formatArr;
        this.f17400k = j;
        mo18510M(formatArr, j);
    }

    /* renamed from: z */
    public final ExoPlaybackException m19244z(Exception exc, Format format) {
        int i;
        if (format != null && !this.f17403n) {
            this.f17403n = true;
            try {
                i = C5191s0.m20191d(mo18507b(format));
            } catch (ExoPlaybackException e) {
            } finally {
                this.f17403n = false;
            }
            return ExoPlaybackException.createForRenderer(exc, m19268C(), format, i);
        }
        i = 4;
        return ExoPlaybackException.createForRenderer(exc, m19268C(), format, i);
    }
}
