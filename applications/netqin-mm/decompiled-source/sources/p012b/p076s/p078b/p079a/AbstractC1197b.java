package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1177l;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
/* renamed from: b.s.b.a.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b.class */
public abstract class AbstractC1197b implements AbstractC1236h0, AbstractC1238i0 {

    /* renamed from: a */
    public final int f4772a;

    /* renamed from: b */
    public C1240j0 f4773b;

    /* renamed from: c */
    public int f4774c;

    /* renamed from: d */
    public int f4775d;

    /* renamed from: e */
    public AbstractC1563h0 f4776e;

    /* renamed from: f */
    public Format[] f4777f;

    /* renamed from: g */
    public long f4778g;

    /* renamed from: h */
    public long f4779h = Long.MIN_VALUE;

    /* renamed from: i */
    public boolean f4780i;

    public AbstractC1197b(int i) {
        this.f4772a = i;
    }

    /* renamed from: a */
    public static boolean m34285a(AbstractC1327k<?> kVar, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (kVar == null) {
            return false;
        }
        return kVar.mo33692a(drmInitData);
    }

    /* renamed from: a */
    public final int m34284a(C1531w wVar, C1311d dVar, boolean z) {
        int a = this.f4776e.mo32673a(wVar, dVar, z);
        int i = -4;
        if (a == -4) {
            if (dVar.m33742c()) {
                this.f4779h = Long.MIN_VALUE;
                if (!this.f4780i) {
                    i = -3;
                }
                return i;
            }
            long j = dVar.f5246d + this.f4778g;
            dVar.f5246d = j;
            this.f4779h = Math.max(this.f4779h, j);
        } else if (a == -5) {
            Format format = wVar.f6243a;
            long j2 = format.f1566m;
            if (j2 != Long.MAX_VALUE) {
                wVar.f6243a = format.m38191a(j2 + this.f4778g);
            }
        }
        return a;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34156a() {
        C1160a.m34518b(this.f4775d == 0);
        mo33803w();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public void mo34155a(float f) throws ExoPlaybackException {
        AbstractC1234g0.m34157a(this, f);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34154a(int i) {
        this.f4774c = i;
    }

    @Override // p012b.p076s.p078b.p079a.C1230f0.AbstractC1232b
    /* renamed from: a */
    public void mo33829a(int i, Object obj) throws ExoPlaybackException {
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34153a(long j) throws ExoPlaybackException {
        this.f4780i = false;
        this.f4779h = j;
        mo32130a(j, false);
    }

    /* renamed from: a */
    public abstract void mo32130a(long j, boolean z) throws ExoPlaybackException;

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34152a(C1240j0 j0Var, Format[] formatArr, AbstractC1563h0 h0Var, long j, boolean z, long j2) throws ExoPlaybackException {
        C1160a.m34518b(this.f4775d == 0);
        this.f4773b = j0Var;
        this.f4775d = 1;
        mo33811a(z);
        mo34151a(formatArr, h0Var, j2);
        mo32130a(j, z);
    }

    /* renamed from: a */
    public void mo33811a(boolean z) throws ExoPlaybackException {
    }

    /* renamed from: a */
    public void mo32127a(Format[] formatArr, long j) throws ExoPlaybackException {
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public final void mo34151a(Format[] formatArr, AbstractC1563h0 h0Var, long j) throws ExoPlaybackException {
        C1160a.m34518b(!this.f4780i);
        this.f4776e = h0Var;
        this.f4779h = j;
        this.f4777f = formatArr;
        this.f4778g = j;
        mo32127a(formatArr, j);
    }

    /* renamed from: b */
    public int m34283b(long j) {
        return this.f4776e.mo32674a(j - this.f4778g);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: d */
    public final int mo34150d() {
        return this.f4775d;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0, p012b.p076s.p078b.p079a.AbstractC1238i0
    /* renamed from: e */
    public final int mo34141e() {
        return this.f4772a;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: f */
    public final void mo34149f() {
        boolean z = true;
        if (this.f4775d != 1) {
            z = false;
        }
        C1160a.m34518b(z);
        this.f4775d = 0;
        this.f4776e = null;
        this.f4777f = null;
        this.f4780i = false;
        mo32995v();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: h */
    public final AbstractC1563h0 mo34148h() {
        return this.f4776e;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: i */
    public final boolean mo34147i() {
        return this.f4779h == Long.MIN_VALUE;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: j */
    public final void mo34146j() {
        this.f4780i = true;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: k */
    public final AbstractC1238i0 mo34145k() {
        return this;
    }

    /* renamed from: m */
    public int mo34140m() throws ExoPlaybackException {
        return 0;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: n */
    public final void mo34144n() throws IOException {
        this.f4776e.mo32675a();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: o */
    public final long mo34143o() {
        return this.f4779h;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: p */
    public final boolean mo34142p() {
        return this.f4780i;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: q */
    public AbstractC1177l mo33804q() {
        return null;
    }

    /* renamed from: r */
    public final C1240j0 m34282r() {
        return this.f4773b;
    }

    /* renamed from: s */
    public final int m34281s() {
        return this.f4774c;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    public final void start() throws ExoPlaybackException {
        boolean z = true;
        if (this.f4775d != 1) {
            z = false;
        }
        C1160a.m34518b(z);
        this.f4775d = 2;
        mo33802x();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    public final void stop() throws ExoPlaybackException {
        C1160a.m34518b(this.f4775d == 2);
        this.f4775d = 1;
        mo33801y();
    }

    /* renamed from: t */
    public final Format[] m34280t() {
        return this.f4777f;
    }

    /* renamed from: u */
    public final boolean m34279u() {
        return mo34147i() ? this.f4780i : this.f4776e.mo32672b();
    }

    /* renamed from: v */
    public void mo32995v() {
    }

    /* renamed from: w */
    public void mo33803w() {
    }

    /* renamed from: x */
    public void mo33802x() throws ExoPlaybackException {
    }

    /* renamed from: y */
    public void mo33801y() throws ExoPlaybackException {
    }
}
