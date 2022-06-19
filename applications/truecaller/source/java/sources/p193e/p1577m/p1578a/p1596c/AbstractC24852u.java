package p193e.p1577m.p1578a.p1596c;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.IOException;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p;
/* renamed from: e.m.a.c.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/u.class */
public abstract class AbstractC24852u implements AbstractC24853u0 {

    /* renamed from: a */
    public final int f69690a;

    /* renamed from: c */
    public C24855v0 f69692c;

    /* renamed from: d */
    public int f69693d;

    /* renamed from: e */
    public int f69694e;

    /* renamed from: f */
    public AbstractC24554w f69695f;

    /* renamed from: g */
    public Format[] f69696g;

    /* renamed from: h */
    public long f69697h;

    /* renamed from: j */
    public boolean f69699j;

    /* renamed from: k */
    public boolean f69700k;

    /* renamed from: b */
    public final C24286g0 f69691b = new C24286g0();

    /* renamed from: i */
    public long f69698i = Long.MIN_VALUE;

    public AbstractC24852u(int i) {
        this.f69690a = i;
    }

    /* renamed from: G */
    public static boolean m4409G(AbstractC24279e<?> abstractC24279e, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (abstractC24279e != null) {
            return abstractC24279e.mo5317b(drmInitData);
        }
        return false;
    }

    /* renamed from: A */
    public void mo4415A() {
    }

    /* renamed from: B */
    public void mo4414B() throws C24189b0 {
    }

    /* renamed from: C */
    public void mo4413C() throws C24189b0 {
    }

    /* renamed from: D */
    public abstract void mo4412D(Format[] formatArr, long j) throws C24189b0;

    /* renamed from: E */
    public final int m4411E(C24286g0 c24286g0, C24265e c24265e, boolean z) {
        int mo4909d = this.f69695f.mo4909d(c24286g0, c24265e, z);
        int i = -4;
        if (mo4909d == -4) {
            if (c24265e.isEndOfStream()) {
                this.f69698i = Long.MIN_VALUE;
                if (!this.f69699j) {
                    i = -3;
                }
                return i;
            }
            long j = c24265e.f67303d + this.f69697h;
            c24265e.f67303d = j;
            this.f69698i = Math.max(this.f69698i, j);
        } else if (mo4909d == -5) {
            Format format = c24286g0.f67334c;
            long j2 = format.f4851m;
            if (j2 != RecyclerView.FOREVER_NS) {
                c24286g0.f67334c = format.m39256d(j2 + this.f69697h);
            }
        }
        return mo4909d;
    }

    /* renamed from: F */
    public abstract int mo4410F(Format format) throws C24189b0;

    /* renamed from: H */
    public int mo4408H() throws C24189b0 {
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: a */
    public final void mo4401a() {
        boolean z = true;
        if (this.f69694e != 1) {
            z = false;
        }
        C26232y.m2286x(z);
        this.f69691b.m5310a();
        this.f69694e = 0;
        this.f69695f = null;
        this.f69696g = null;
        this.f69699j = false;
        mo4404x();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: d */
    public final void mo4398d(int i) {
        this.f69693d = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: e */
    public final boolean mo4397e() {
        return this.f69698i == Long.MIN_VALUE;
    }

    @Override // p193e.p1577m.p1578a.p1596c.C24845s0.AbstractC24847b
    /* renamed from: f */
    public void mo4407f(int i, Object obj) throws C24189b0 {
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: g */
    public /* synthetic */ void mo4396g(float f) {
        C24851t0.m4416a(this, f);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    public final int getState() {
        return this.f69694e;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: h */
    public final boolean mo4395h() {
        return this.f69699j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: j */
    public final AbstractC24554w mo4393j() {
        return this.f69695f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: k */
    public final long mo4392k() {
        return this.f69698i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: l */
    public final void mo4391l(long j) throws C24189b0 {
        this.f69699j = false;
        this.f69698i = j;
        mo4402z(j, false);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: m */
    public AbstractC24791p mo4390m() {
        return null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: n */
    public final void mo4389n() {
        this.f69699j = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: o */
    public final void mo4388o() throws IOException {
        this.f69695f.mo4912a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: p */
    public final int mo4387p() {
        return this.f69690a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: q */
    public final AbstractC24852u mo4386q() {
        return this;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    public final void reset() {
        C26232y.m2286x(this.f69694e == 0);
        this.f69691b.m5310a();
        mo4415A();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: s */
    public final void mo4385s(C24855v0 c24855v0, Format[] formatArr, AbstractC24554w abstractC24554w, long j, boolean z, long j2) throws C24189b0 {
        C26232y.m2286x(this.f69694e == 0);
        this.f69692c = c24855v0;
        this.f69694e = 1;
        mo4403y(z);
        C26232y.m2286x(!this.f69699j);
        this.f69695f = abstractC24554w;
        this.f69698i = j2;
        this.f69696g = formatArr;
        this.f69697h = j2;
        mo4412D(formatArr, j2);
        mo4402z(j, z);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    public final void start() throws C24189b0 {
        boolean z = true;
        if (this.f69694e != 1) {
            z = false;
        }
        C26232y.m2286x(z);
        this.f69694e = 2;
        mo4414B();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    public final void stop() throws C24189b0 {
        C26232y.m2286x(this.f69694e == 2);
        this.f69694e = 1;
        mo4413C();
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24853u0
    /* renamed from: u */
    public final void mo4384u(Format[] formatArr, AbstractC24554w abstractC24554w, long j) throws C24189b0 {
        C26232y.m2286x(!this.f69699j);
        this.f69695f = abstractC24554w;
        this.f69698i = j;
        this.f69696g = formatArr;
        this.f69697h = j;
        mo4412D(formatArr, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1577m.p1578a.p1596c.C24189b0 m4406v(java.lang.Exception r9, com.google.android.exoplayer2.Format r10) {
        /*
            r8 = this;
            r0 = r10
            if (r0 == 0) goto L32
            r0 = r8
            boolean r0 = r0.f69700k
            if (r0 != 0) goto L32
            r0 = r8
            r1 = 1
            r0.f69700k = r1
            r0 = r8
            r1 = r10
            int r0 = r0.mo4410F(r1)     // Catch: java.lang.Throwable -> L23 p193e.p1577m.p1578a.p1596c.C24189b0 -> L2b
            r11 = r0
            r0 = r11
            r1 = 7
            r0 = r0 & r1
            r11 = r0
            r0 = r8
            r1 = 0
            r0.f69700k = r1
            goto L34
        L23:
            r9 = move-exception
            r0 = r8
            r1 = 0
            r0.f69700k = r1
            r0 = r9
            throw r0
        L2b:
            r12 = move-exception
            r0 = r8
            r1 = 0
            r0.f69700k = r1
        L32:
            r0 = 4
            r11 = r0
        L34:
            r0 = r8
            int r0 = r0.f69693d
            r13 = r0
            r0 = r10
            if (r0 != 0) goto L43
            r0 = 4
            r11 = r0
            goto L43
        L43:
            e.m.a.c.b0 r0 = new e.m.a.c.b0
            r1 = r0
            r2 = 1
            r3 = r9
            r4 = r13
            r5 = r10
            r6 = r11
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.AbstractC24852u.m4406v(java.lang.Exception, com.google.android.exoplayer2.Format):e.m.a.c.b0");
    }

    /* renamed from: w */
    public final C24286g0 m4405w() {
        this.f69691b.m5310a();
        return this.f69691b;
    }

    /* renamed from: x */
    public abstract void mo4404x();

    /* renamed from: y */
    public void mo4403y(boolean z) throws C24189b0 {
    }

    /* renamed from: z */
    public abstract void mo4402z(long j, boolean z) throws C24189b0;
}
