package p131c.p161d.p170b.p188c;

import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2735s;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2758z;
import p131c.p161d.p170b.p188c.p190b1.C2723m;
import p131c.p161d.p170b.p188c.p190b1.C2729p;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2784h;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p198d1.C2786i;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* renamed from: c.d.b.c.d0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d0.class */
public final class C2767d0 {

    /* renamed from: a */
    public final AbstractC2735s f10093a;

    /* renamed from: b */
    public final Object f10094b;

    /* renamed from: c */
    public final AbstractC2758z[] f10095c;

    /* renamed from: d */
    public boolean f10096d;

    /* renamed from: e */
    public boolean f10097e;

    /* renamed from: f */
    public C2788e0 f10098f;

    /* renamed from: g */
    public final boolean[] f10099g;

    /* renamed from: h */
    public final AbstractC2957o0[] f10100h;

    /* renamed from: i */
    public final AbstractC2784h f10101i;

    /* renamed from: j */
    public final AbstractC2737t f10102j;

    /* renamed from: k */
    public C2767d0 f10103k;

    /* renamed from: l */
    public TrackGroupArray f10104l = TrackGroupArray.f22260d;

    /* renamed from: m */
    public C2786i f10105m;

    /* renamed from: n */
    public long f10106n;

    public C2767d0(AbstractC2957o0[] o0VarArr, long j, AbstractC2784h hVar, AbstractC2821e eVar, AbstractC2737t tVar, C2788e0 e0Var, C2786i iVar) {
        this.f10100h = o0VarArr;
        this.f10106n = j;
        this.f10101i = hVar;
        this.f10102j = tVar;
        AbstractC2737t.C2738a aVar = e0Var.f10142a;
        this.f10094b = aVar.f9929a;
        this.f10098f = e0Var;
        this.f10105m = iVar;
        this.f10095c = new AbstractC2758z[o0VarArr.length];
        this.f10099g = new boolean[o0VarArr.length];
        this.f10093a = m29072a(aVar, tVar, eVar, e0Var.f10143b, e0Var.f10145d);
    }

    /* renamed from: a */
    public static AbstractC2735s m29072a(AbstractC2737t.C2738a aVar, AbstractC2737t tVar, AbstractC2821e eVar, long j, long j2) {
        AbstractC2735s a = tVar.mo29150a(aVar, eVar, j);
        AbstractC2735s sVar = a;
        if (j2 != -9223372036854775807L) {
            sVar = a;
            if (j2 != Long.MIN_VALUE) {
                sVar = new C2723m(a, true, 0L, j2);
            }
        }
        return sVar;
    }

    /* renamed from: a */
    public static void m29073a(long j, AbstractC2737t tVar, AbstractC2735s sVar) {
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                tVar.mo29151a(sVar);
            } else {
                tVar.mo29151a(((C2723m) sVar).f9898a);
            }
        } catch (RuntimeException e) {
            C2894o.m28599a("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: a */
    public long m29070a(C2786i iVar, long j, boolean z) {
        return m29069a(iVar, j, z, new boolean[this.f10100h.length]);
    }

    /* renamed from: a */
    public long m29069a(C2786i iVar, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= iVar.f10137a) {
                break;
            }
            boolean[] zArr2 = this.f10099g;
            if (z || !iVar.m29012a(this.f10105m, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m29064b(this.f10095c);
        m29076a();
        this.f10105m = iVar;
        m29067b();
        C2783g gVar = iVar.f10139c;
        long a = this.f10093a.mo29194a(gVar.m29020a(), this.f10099g, this.f10095c, zArr, j);
        m29068a(this.f10095c);
        this.f10097e = false;
        int i2 = 0;
        while (true) {
            AbstractC2758z[] zVarArr = this.f10095c;
            if (i2 >= zVarArr.length) {
                return a;
            }
            if (zVarArr[i2] != null) {
                C2877e.m28731b(iVar.m29014a(i2));
                if (this.f10100h[i2].mo28371e() != 6) {
                    this.f10097e = true;
                }
            } else {
                C2877e.m28731b(gVar.m29019a(i2) == null);
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final void m29076a() {
        if (m29052k()) {
            int i = 0;
            while (true) {
                C2786i iVar = this.f10105m;
                if (i < iVar.f10137a) {
                    boolean a = iVar.m29014a(i);
                    AbstractC2780f a2 = this.f10105m.f10139c.m29019a(i);
                    if (a && a2 != null) {
                        a2.mo29022f();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void m29075a(float f, AbstractC2965r0 r0Var) throws ExoPlaybackException {
        this.f10096d = true;
        this.f10104l = this.f10093a.mo29179g();
        long a = m29070a(m29066b(f, r0Var), this.f10098f.f10143b, false);
        long j = this.f10106n;
        C2788e0 e0Var = this.f10098f;
        this.f10106n = j + (e0Var.f10143b - a);
        this.f10098f = e0Var.m29010b(a);
    }

    /* renamed from: a */
    public void m29074a(long j) {
        C2877e.m28731b(m29052k());
        this.f10093a.mo29206a(m29060d(j));
    }

    /* renamed from: a */
    public void m29071a(C2767d0 d0Var) {
        if (d0Var != this.f10103k) {
            m29076a();
            this.f10103k = d0Var;
            m29067b();
        }
    }

    /* renamed from: a */
    public final void m29068a(AbstractC2758z[] zVarArr) {
        int i = 0;
        while (true) {
            AbstractC2957o0[] o0VarArr = this.f10100h;
            if (i < o0VarArr.length) {
                if (o0VarArr[i].mo28371e() == 6 && this.f10105m.m29014a(i)) {
                    zVarArr[i] = new C2729p();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public C2786i m29066b(float f, AbstractC2965r0 r0Var) throws ExoPlaybackException {
        AbstractC2780f[] a;
        C2786i a2 = this.f10101i.mo29015a(this.f10100h, m29055h(), this.f10098f.f10142a, r0Var);
        for (AbstractC2780f fVar : a2.f10139c.m29020a()) {
            if (fVar != null) {
                fVar.mo29029a(f);
            }
        }
        return a2;
    }

    /* renamed from: b */
    public final void m29067b() {
        if (m29052k()) {
            int i = 0;
            while (true) {
                C2786i iVar = this.f10105m;
                if (i < iVar.f10137a) {
                    boolean a = iVar.m29014a(i);
                    AbstractC2780f a2 = this.f10105m.f10139c.m29019a(i);
                    if (a && a2 != null) {
                        a2.mo29025c();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: b */
    public void m29065b(long j) {
        C2877e.m28731b(m29052k());
        if (this.f10096d) {
            this.f10093a.mo29190b(m29060d(j));
        }
    }

    /* renamed from: b */
    public final void m29064b(AbstractC2758z[] zVarArr) {
        int i = 0;
        while (true) {
            AbstractC2957o0[] o0VarArr = this.f10100h;
            if (i < o0VarArr.length) {
                if (o0VarArr[i].mo28371e() == 6) {
                    zVarArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m29063c() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f10096d
            if (r0 != 0) goto L_0x000f
            r0 = r5
            c.d.b.c.e0 r0 = r0.f10098f
            long r0 = r0.f10143b
            return r0
        L_0x000f:
            r0 = r5
            boolean r0 = r0.f10097e
            if (r0 == 0) goto L_0x0023
            r0 = r5
            c.d.b.c.b1.s r0 = r0.f10093a
            long r0 = r0.mo29192b()
            r6 = r0
            goto L_0x0027
        L_0x0023:
            r0 = -9223372036854775808
            r6 = r0
        L_0x0027:
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            r0 = r5
            c.d.b.c.e0 r0 = r0.f10098f
            long r0 = r0.f10146e
            r8 = r0
        L_0x0039:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C2767d0.m29063c():long");
    }

    /* renamed from: c */
    public void m29062c(long j) {
        this.f10106n = j;
    }

    /* renamed from: d */
    public long m29060d(long j) {
        return j - m29057f();
    }

    /* renamed from: d */
    public C2767d0 m29061d() {
        return this.f10103k;
    }

    /* renamed from: e */
    public long m29059e() {
        return !this.f10096d ? 0L : this.f10093a.mo29210a();
    }

    /* renamed from: e */
    public long m29058e(long j) {
        return j + m29057f();
    }

    /* renamed from: f */
    public long m29057f() {
        return this.f10106n;
    }

    /* renamed from: g */
    public long m29056g() {
        return this.f10098f.f10143b + this.f10106n;
    }

    /* renamed from: h */
    public TrackGroupArray m29055h() {
        return this.f10104l;
    }

    /* renamed from: i */
    public C2786i m29054i() {
        return this.f10105m;
    }

    /* renamed from: j */
    public boolean m29053j() {
        return this.f10096d && (!this.f10097e || this.f10093a.mo29192b() == Long.MIN_VALUE);
    }

    /* renamed from: k */
    public final boolean m29052k() {
        return this.f10103k == null;
    }

    /* renamed from: l */
    public void m29051l() {
        m29076a();
        m29073a(this.f10098f.f10145d, this.f10102j, this.f10093a);
    }
}
