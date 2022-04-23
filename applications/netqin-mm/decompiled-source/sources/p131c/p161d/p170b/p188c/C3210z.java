package p131c.p161d.p170b.p188c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.C2949l0;
import p131c.p161d.p170b.p188c.C3018v;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2735s;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2758z;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2784h;
import p131c.p161d.p170b.p188c.p198d1.C2786i;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2822f;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2882g;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2893n;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2883g0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* renamed from: c.d.b.c.z */
/* loaded from: classes-dex2jar.jar:c/d/b/c/z.class */
public final class C3210z implements Handler.Callback, AbstractC2735s.AbstractC2736a, AbstractC2784h.AbstractC2785a, AbstractC2737t.AbstractC2739b, C3018v.AbstractC3019a, C2949l0.AbstractC2950a {

    /* renamed from: A */
    public int f11852A;

    /* renamed from: B */
    public boolean f11853B;

    /* renamed from: C */
    public boolean f11854C;

    /* renamed from: D */
    public int f11855D;

    /* renamed from: E */
    public C3215e f11856E;

    /* renamed from: F */
    public long f11857F;

    /* renamed from: G */
    public int f11858G;

    /* renamed from: H */
    public boolean f11859H;

    /* renamed from: a */
    public final AbstractC2953m0[] f11860a;

    /* renamed from: b */
    public final AbstractC2957o0[] f11861b;

    /* renamed from: c */
    public final AbstractC2784h f11862c;

    /* renamed from: d */
    public final C2786i f11863d;

    /* renamed from: e */
    public final AbstractC2760c0 f11864e;

    /* renamed from: f */
    public final AbstractC2822f f11865f;

    /* renamed from: g */
    public final AbstractC2893n f11866g;

    /* renamed from: h */
    public final HandlerThread f11867h;

    /* renamed from: i */
    public final Handler f11868i;

    /* renamed from: j */
    public final AbstractC2965r0.C2968c f11869j;

    /* renamed from: k */
    public final AbstractC2965r0.C2967b f11870k;

    /* renamed from: l */
    public final long f11871l;

    /* renamed from: m */
    public final boolean f11872m;

    /* renamed from: n */
    public final C3018v f11873n;

    /* renamed from: p */
    public final ArrayList<C3213c> f11875p;

    /* renamed from: q */
    public final AbstractC2882g f11876q;

    /* renamed from: t */
    public C2866g0 f11879t;

    /* renamed from: u */
    public AbstractC2737t f11880u;

    /* renamed from: v */
    public AbstractC2953m0[] f11881v;

    /* renamed from: w */
    public boolean f11882w;

    /* renamed from: x */
    public boolean f11883x;

    /* renamed from: y */
    public boolean f11884y;

    /* renamed from: z */
    public boolean f11885z;

    /* renamed from: r */
    public final C2816f0 f11877r = new C2816f0();

    /* renamed from: s */
    public C2963q0 f11878s = C2963q0.f10671d;

    /* renamed from: o */
    public final C3214d f11874o = new C3214d();

    /* renamed from: c.d.b.c.z$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z$b.class */
    public static final class C3212b {

        /* renamed from: a */
        public final AbstractC2737t f11886a;

        /* renamed from: b */
        public final AbstractC2965r0 f11887b;

        public C3212b(AbstractC2737t tVar, AbstractC2965r0 r0Var) {
            this.f11886a = tVar;
            this.f11887b = r0Var;
        }
    }

    /* renamed from: c.d.b.c.z$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z$c.class */
    public static final class C3213c implements Comparable<C3213c> {

        /* renamed from: a */
        public final C2949l0 f11888a;

        /* renamed from: b */
        public int f11889b;

        /* renamed from: c */
        public long f11890c;

        /* renamed from: d */
        public Object f11891d;

        public C3213c(C2949l0 l0Var) {
            this.f11888a = l0Var;
        }

        /* renamed from: a */
        public int compareTo(C3213c cVar) {
            int i = 1;
            if ((this.f11891d == null) != (cVar.f11891d == null)) {
                if (this.f11891d != null) {
                    i = -1;
                }
                return i;
            } else if (this.f11891d == null) {
                return 0;
            } else {
                int i2 = this.f11889b - cVar.f11889b;
                return i2 != 0 ? i2 : C2885h0.m28683a(this.f11890c, cVar.f11890c);
            }
        }

        /* renamed from: a */
        public void m27329a(int i, long j, Object obj) {
            this.f11889b = i;
            this.f11890c = j;
            this.f11891d = obj;
        }
    }

    /* renamed from: c.d.b.c.z$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z$d.class */
    public static final class C3214d {

        /* renamed from: a */
        public C2866g0 f11892a;

        /* renamed from: b */
        public int f11893b;

        /* renamed from: c */
        public boolean f11894c;

        /* renamed from: d */
        public int f11895d;

        public C3214d() {
        }

        /* renamed from: a */
        public void m27327a(int i) {
            this.f11893b += i;
        }

        /* renamed from: a */
        public boolean m27326a(C2866g0 g0Var) {
            return g0Var != this.f11892a || this.f11893b > 0 || this.f11894c;
        }

        /* renamed from: b */
        public void m27324b(int i) {
            boolean z = true;
            if (!this.f11894c || this.f11895d == 4) {
                this.f11894c = true;
                this.f11895d = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C2877e.m28734a(z);
        }

        /* renamed from: b */
        public void m27323b(C2866g0 g0Var) {
            this.f11892a = g0Var;
            this.f11893b = 0;
            this.f11894c = false;
        }
    }

    /* renamed from: c.d.b.c.z$e */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/z$e.class */
    public static final class C3215e {

        /* renamed from: a */
        public final AbstractC2965r0 f11896a;

        /* renamed from: b */
        public final int f11897b;

        /* renamed from: c */
        public final long f11898c;

        public C3215e(AbstractC2965r0 r0Var, int i, long j) {
            this.f11896a = r0Var;
            this.f11897b = i;
            this.f11898c = j;
        }
    }

    public C3210z(AbstractC2953m0[] m0VarArr, AbstractC2784h hVar, C2786i iVar, AbstractC2760c0 c0Var, AbstractC2822f fVar, boolean z, int i, boolean z2, Handler handler, AbstractC2882g gVar) {
        this.f11860a = m0VarArr;
        this.f11862c = hVar;
        this.f11863d = iVar;
        this.f11864e = c0Var;
        this.f11865f = fVar;
        this.f11883x = z;
        this.f11852A = i;
        this.f11853B = z2;
        this.f11868i = handler;
        this.f11876q = gVar;
        this.f11871l = c0Var.mo28153c();
        this.f11872m = c0Var.mo28155b();
        this.f11879t = C2866g0.m28756a(-9223372036854775807L, iVar);
        this.f11861b = new AbstractC2957o0[m0VarArr.length];
        for (int i2 = 0; i2 < m0VarArr.length; i2++) {
            m0VarArr[i2].mo28381a(i2);
            this.f11861b[i2] = m0VarArr[i2].mo28366k();
        }
        this.f11873n = new C3018v(this, gVar);
        this.f11875p = new ArrayList<>();
        this.f11881v = new AbstractC2953m0[0];
        this.f11869j = new AbstractC2965r0.C2968c();
        this.f11870k = new AbstractC2965r0.C2967b();
        hVar.m29017a(this, fVar);
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f11867h = handlerThread;
        handlerThread.start();
        this.f11866g = gVar.mo28704a(this.f11867h.getLooper(), this);
        this.f11859H = true;
    }

    /* renamed from: a */
    public static Format[] m27396a(AbstractC2780f fVar) {
        int length = fVar != null ? fVar.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = fVar.mo29028a(i);
        }
        return formatArr;
    }

    /* renamed from: A */
    public final void m27411A() throws ExoPlaybackException {
        C2767d0 d = this.f11877r.m28947d();
        if (d != null) {
            long f = d.f10096d ? d.f10093a.mo29181f() : -9223372036854775807L;
            if (f != -9223372036854775807L) {
                m27375b(f);
                if (f != this.f11879t.f10438m) {
                    C2866g0 g0Var = this.f11879t;
                    this.f11879t = m27401a(g0Var.f10427b, f, g0Var.f10429d);
                    this.f11874o.m27324b(4);
                }
            } else {
                long b = this.f11873n.m28121b(d != this.f11877r.m28946e());
                this.f11857F = b;
                long d2 = d.m29060d(b);
                m27405a(this.f11879t.f10438m, d2);
                this.f11879t.f10438m = d2;
            }
            this.f11879t.f10436k = this.f11877r.m28948c().m29063c();
            this.f11879t.f10437l = m27361d();
        }
    }

    /* renamed from: a */
    public final long m27406a(long j) {
        C2767d0 c = this.f11877r.m28948c();
        if (c == null) {
            return 0L;
        }
        return Math.max(0L, j - c.m29060d(this.f11857F));
    }

    /* renamed from: a */
    public final long m27402a(AbstractC2737t.C2738a aVar, long j) throws ExoPlaybackException {
        return m27400a(aVar, j, this.f11877r.m28947d() != this.f11877r.m28946e());
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        if (r0.m29058e(r8) < 0) goto L_0x008c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0110  */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [c.d.b.c.z] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m27400a(p131c.p161d.p170b.p188c.p190b1.AbstractC2737t.C2738a r7, long r8, boolean r10) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.m27400a(c.d.b.c.b1.t$a, long, boolean):long");
    }

    /* renamed from: a */
    public final Pair<Object, Long> m27390a(AbstractC2965r0 r0Var, int i, long j) {
        return r0Var.m28351a(this.f11869j, this.f11870k, i, j);
    }

    /* renamed from: a */
    public final Pair<Object, Long> m27386a(C3215e eVar, boolean z) {
        Object a;
        AbstractC2965r0 r0Var = this.f11879t.f10426a;
        AbstractC2965r0 r0Var2 = eVar.f11896a;
        if (r0Var.m28344c()) {
            return null;
        }
        AbstractC2965r0 r0Var3 = r0Var2;
        if (r0Var2.m28344c()) {
            r0Var3 = r0Var;
        }
        try {
            Pair<Object, Long> a2 = r0Var3.m28351a(this.f11869j, this.f11870k, eVar.f11897b, eVar.f11898c);
            if (r0Var != r0Var3 && r0Var.mo28339a(a2.first) == -1) {
                if (!z || (a = m27383a(a2.first, r0Var3, r0Var)) == null) {
                    return null;
                }
                return m27390a(r0Var, r0Var.m28349a(a, this.f11870k).f10680c, -9223372036854775807L);
            }
            return a2;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final C2866g0 m27401a(AbstractC2737t.C2738a aVar, long j, long j2) {
        this.f11859H = true;
        return this.f11879t.m28754a(aVar, j, j2, m27361d());
    }

    /* renamed from: a */
    public final Object m27383a(Object obj, AbstractC2965r0 r0Var, AbstractC2965r0 r0Var2) {
        int a = r0Var.mo28339a(obj);
        int a2 = r0Var.mo28343a();
        int i = -1;
        for (int i2 = 0; i2 < a2 && i == -1; i2++) {
            a = r0Var.m28353a(a, this.f11870k, this.f11869j, this.f11852A, this.f11853B);
            if (a == -1) {
                break;
            }
            i = r0Var2.mo28339a(r0Var.mo28342a(a));
        }
        return i == -1 ? null : r0Var2.mo28342a(i);
    }

    /* renamed from: a */
    public final String m27385a(ExoPlaybackException exoPlaybackException) {
        if (exoPlaybackException.type != 1) {
            return "Playback error.";
        }
        return "Renderer error: index=" + exoPlaybackException.rendererIndex + ", type=" + C2885h0.m28635d(this.f11860a[exoPlaybackException.rendererIndex].mo28371e()) + ", format=" + exoPlaybackException.rendererFormat + ", rendererSupport=" + C2955n0.m28393d(exoPlaybackException.rendererFormatSupport);
    }

    /* renamed from: a */
    public final void m27410a() throws ExoPlaybackException, IOException {
        boolean z;
        boolean z2;
        int i;
        long b = this.f11876q.mo28703b();
        m27330z();
        int i2 = this.f11879t.f10430e;
        if (i2 == 1 || i2 == 4) {
            this.f11866g.mo28601b(2);
            return;
        }
        C2767d0 d = this.f11877r.m28947d();
        if (d == null) {
            m27374b(b, 10L);
            return;
        }
        C2883g0.m28701a("doSomeWork");
        m27411A();
        if (d.f10096d) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            d.f10093a.mo29204a(this.f11879t.f10438m - this.f11871l, this.f11872m);
            int i3 = 0;
            z2 = true;
            z = true;
            while (true) {
                AbstractC2953m0[] m0VarArr = this.f11860a;
                if (i3 >= m0VarArr.length) {
                    break;
                }
                AbstractC2953m0 m0Var = m0VarArr[i3];
                if (m0Var.mo28372d() == 0) {
                    z2 = z2;
                    z = z;
                } else {
                    m0Var.mo18585a(this.f11857F, elapsedRealtime * 1000);
                    boolean z3 = z2 && m0Var.mo18567c();
                    boolean z4 = d.f10095c[i3] != m0Var.mo28369h();
                    boolean z5 = z4 || (!z4 && d.m29061d() != null && m0Var.mo28368i()) || m0Var.mo18188b() || m0Var.mo18567c();
                    boolean z6 = z && z5;
                    z2 = z3;
                    z = z6;
                    if (!z5) {
                        m0Var.mo28365n();
                        z = z6;
                        z2 = z3;
                    }
                }
                i3++;
            }
        } else {
            d.f10093a.mo29185d();
            z2 = true;
            z = true;
        }
        long j = d.f10098f.f10146e;
        if (z2 && d.f10096d && ((j == -9223372036854775807L || j <= this.f11879t.f10438m) && d.f10098f.f10148g)) {
            m27365c(4);
            m27332x();
        } else if (this.f11879t.f10430e == 2 && m27350g(z)) {
            m27365c(3);
            if (this.f11883x) {
                m27333w();
            }
        } else if (this.f11879t.f10430e == 3 && (this.f11881v.length != 0 ? !z : !m27349h())) {
            this.f11884y = this.f11883x;
            m27365c(2);
            m27332x();
        }
        if (this.f11879t.f10430e == 2) {
            for (AbstractC2953m0 m0Var2 : this.f11881v) {
                m0Var2.mo28365n();
            }
        }
        if ((this.f11883x && this.f11879t.f10430e == 3) || (i = this.f11879t.f10430e) == 2) {
            m27374b(b, 10L);
        } else if (this.f11881v.length == 0 || i == 4) {
            this.f11866g.mo28601b(2);
        } else {
            m27374b(b, 1000L);
        }
        C2883g0.m28702a();
    }

    /* renamed from: a */
    public final void m27409a(float f) {
        AbstractC2780f[] a;
        for (C2767d0 d = this.f11877r.m28947d(); d != null; d = d.m29061d()) {
            for (AbstractC2780f fVar : d.m29054i().f10139c.m29020a()) {
                if (fVar != null) {
                    fVar.mo29029a(f);
                }
            }
        }
    }

    /* renamed from: a */
    public void m27408a(int i) {
        this.f11866g.mo28605a(12, i, 0).sendToTarget();
    }

    /* renamed from: a */
    public final void m27407a(int i, boolean z, int i2) throws ExoPlaybackException {
        C2767d0 d = this.f11877r.m28947d();
        AbstractC2953m0 m0Var = this.f11860a[i];
        this.f11881v[i2] = m0Var;
        if (m0Var.mo28372d() == 0) {
            C2786i i3 = d.m29054i();
            C2961p0 p0Var = i3.f10138b[i];
            Format[] a = m27396a(i3.f10139c.m29019a(i));
            boolean z2 = this.f11883x && this.f11879t.f10430e == 3;
            m0Var.mo28378a(p0Var, a, d.f10095c[i], this.f11857F, !z && z2, d.m29057f());
            this.f11873n.m28122b(m0Var);
            if (z2) {
                m0Var.start();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba A[LOOP:0: B:15:0x0080->B:25:0x00ba, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x007a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0163 A[EDGE_INSN: B:85:0x0163->B:97:0x0163 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x007a -> B:15:0x0080). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00f1 -> B:30:0x00f7). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27405a(long r6, long r8) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.m27405a(long, long):void");
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s.AbstractC2736a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo27403a(AbstractC2735s sVar) {
        this.f11866g.mo28602a(9, sVar).sendToTarget();
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t.AbstractC2739b
    /* renamed from: a */
    public void mo27399a(AbstractC2737t tVar, AbstractC2965r0 r0Var) {
        this.f11866g.mo28602a(8, new C3212b(tVar, r0Var)).sendToTarget();
    }

    /* renamed from: a */
    public void m27398a(AbstractC2737t tVar, boolean z, boolean z2) {
        this.f11866g.mo28604a(0, z ? 1 : 0, z2 ? 1 : 0, tVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m27397a(C2767d0 d0Var) throws ExoPlaybackException {
        C2767d0 d = this.f11877r.m28947d();
        if (d != null && d0Var != d) {
            boolean[] zArr = new boolean[this.f11860a.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                AbstractC2953m0[] m0VarArr = this.f11860a;
                if (i < m0VarArr.length) {
                    AbstractC2953m0 m0Var = m0VarArr[i];
                    zArr[i] = m0Var.mo28372d() != 0;
                    i2 = i2;
                    if (d.m29054i().m29014a(i)) {
                        i2++;
                    }
                    if (zArr[i] && (!d.m29054i().m29014a(i) || (m0Var.mo28363p() && m0Var.mo28369h() == d0Var.f10095c[i]))) {
                        m27392a(m0Var);
                    }
                    i++;
                } else {
                    this.f11879t = this.f11879t.m28751a(d.m29055h(), d.m29054i());
                    m27378a(zArr, i2);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m27395a(C2910h0 h0Var) {
        this.f11873n.mo28126a(h0Var);
        m27371b(this.f11873n.mo28119g(), true);
    }

    /* renamed from: a */
    public final void m27394a(C2910h0 h0Var, boolean z) throws ExoPlaybackException {
        AbstractC2953m0[] m0VarArr;
        this.f11868i.obtainMessage(1, z ? 1 : 0, 0, h0Var).sendToTarget();
        m27409a(h0Var.f10540a);
        for (AbstractC2953m0 m0Var : this.f11860a) {
            if (m0Var != null) {
                m0Var.mo18586a(h0Var.f10540a);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.C2949l0.AbstractC2950a
    /* renamed from: a */
    public void mo27393a(C2949l0 l0Var) {
        synchronized (this) {
            if (!this.f11882w && this.f11867h.isAlive()) {
                this.f11866g.mo28602a(15, l0Var).sendToTarget();
                return;
            }
            C2894o.m28594d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            l0Var.m28407a(false);
        }
    }

    /* renamed from: a */
    public final void m27392a(AbstractC2953m0 m0Var) throws ExoPlaybackException {
        this.f11873n.m28125a(m0Var);
        m27369b(m0Var);
        m0Var.mo28370f();
    }

    /* renamed from: a */
    public final void m27391a(C2963q0 q0Var) {
        this.f11878s = q0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [c.d.b.c.f0] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [c.d.b.c.z] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27389a(p131c.p161d.p170b.p188c.C3210z.C3212b r9) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.m27389a(c.d.b.c.z$b):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [c.d.b.c.b1.s] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [c.d.b.c.z] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27387a(p131c.p161d.p170b.p188c.C3210z.C3215e r9) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.m27387a(c.d.b.c.z$e):void");
    }

    /* renamed from: a */
    public final void m27384a(TrackGroupArray trackGroupArray, C2786i iVar) {
        this.f11864e.mo28156a(this.f11860a, trackGroupArray, iVar.f10139c);
    }

    /* renamed from: a */
    public final void m27382a(boolean z) {
        C2767d0 c = this.f11877r.m28948c();
        AbstractC2737t.C2738a aVar = c == null ? this.f11879t.f10427b : c.f10098f.f10142a;
        boolean z2 = !this.f11879t.f10435j.equals(aVar);
        if (z2) {
            this.f11879t = this.f11879t.m28755a(aVar);
        }
        C2866g0 g0Var = this.f11879t;
        g0Var.f10436k = c == null ? g0Var.f10438m : c.m29063c();
        this.f11879t.f10437l = m27361d();
        if ((z2 || z) && c != null && c.f10096d) {
            m27384a(c.m29055h(), c.m29054i());
        }
    }

    /* renamed from: a */
    public final void m27381a(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC2953m0[] m0VarArr;
        if (this.f11854C != z) {
            this.f11854C = z;
            if (!z) {
                for (AbstractC2953m0 m0Var : this.f11860a) {
                    if (m0Var.mo28372d() == 0) {
                        m0Var.mo28382a();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* renamed from: a */
    public final void m27380a(boolean z, boolean z2, boolean z3) {
        m27379a(z || !this.f11854C, true, z2, z2, z2);
        this.f11874o.m27327a(this.f11855D + (z3 ? 1 : 0));
        this.f11855D = 0;
        this.f11864e.mo28163a();
        m27365c(1);
    }

    /* renamed from: a */
    public final void m27379a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        AbstractC2737t tVar;
        this.f11866g.mo28601b(2);
        this.f11884y = false;
        this.f11873n.m28123b();
        this.f11857F = 0L;
        for (AbstractC2953m0 m0Var : this.f11881v) {
            try {
                m27392a(m0Var);
            } catch (ExoPlaybackException | RuntimeException e) {
                C2894o.m28599a("ExoPlayerImplInternal", "Disable failed.", e);
            }
        }
        if (z) {
            for (AbstractC2953m0 m0Var2 : this.f11860a) {
                try {
                    m0Var2.mo28382a();
                } catch (RuntimeException e2) {
                    C2894o.m28599a("ExoPlayerImplInternal", "Reset failed.", e2);
                }
            }
        }
        this.f11881v = new AbstractC2953m0[0];
        if (z3) {
            this.f11856E = null;
        } else if (z4) {
            if (this.f11856E == null && !this.f11879t.f10426a.m28344c()) {
                C2866g0 g0Var = this.f11879t;
                g0Var.f10426a.m28349a(g0Var.f10427b.f9929a, this.f11870k);
                this.f11856E = new C3215e(AbstractC2965r0.f10677a, this.f11870k.f10680c, this.f11879t.f10438m + this.f11870k.m28322e());
            }
            z3 = true;
        }
        this.f11877r.m28954a(!z4);
        this.f11885z = false;
        if (z4) {
            this.f11877r.m28959a(AbstractC2965r0.f10677a);
            Iterator<C3213c> it = this.f11875p.iterator();
            while (it.hasNext()) {
                it.next().f11888a.m28407a(false);
            }
            this.f11875p.clear();
            this.f11858G = 0;
        }
        AbstractC2737t.C2738a a = z3 ? this.f11879t.m28749a(this.f11853B, this.f11869j, this.f11870k) : this.f11879t.f10427b;
        long j = z3 ? -9223372036854775807L : this.f11879t.f10438m;
        long j2 = z3 ? -9223372036854775807L : this.f11879t.f10429d;
        AbstractC2965r0 r0Var = z4 ? AbstractC2965r0.f10677a : this.f11879t.f10426a;
        C2866g0 g0Var2 = this.f11879t;
        this.f11879t = new C2866g0(r0Var, a, j, j2, g0Var2.f10430e, z5 ? null : g0Var2.f10431f, false, z4 ? TrackGroupArray.f22260d : this.f11879t.f10433h, z4 ? this.f11863d : this.f11879t.f10434i, a, j, 0L, j);
        if (z2 && (tVar = this.f11880u) != null) {
            tVar.mo29250a(this);
            this.f11880u = null;
        }
    }

    /* renamed from: a */
    public final void m27378a(boolean[] zArr, int i) throws ExoPlaybackException {
        this.f11881v = new AbstractC2953m0[i];
        C2786i i2 = this.f11877r.m28947d().m29054i();
        for (int i3 = 0; i3 < this.f11860a.length; i3++) {
            if (!i2.m29014a(i3)) {
                this.f11860a[i3].mo28382a();
            }
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f11860a.length; i5++) {
            i4 = i4;
            if (i2.m29014a(i5)) {
                m27407a(i5, zArr[i5], i4);
                i4++;
            }
        }
    }

    /* renamed from: a */
    public final boolean m27388a(C3213c cVar) {
        Object obj = cVar.f11891d;
        if (obj == null) {
            Pair<Object, Long> a = m27386a(new C3215e(cVar.f11888a.m28402f(), cVar.f11888a.m28400h(), C2964r.m28357a(cVar.f11888a.m28404d())), false);
            if (a == null) {
                return false;
            }
            cVar.m27329a(this.f11879t.f10426a.mo28339a(a.first), ((Long) a.second).longValue(), a.first);
            return true;
        }
        int a2 = this.f11879t.f10426a.mo28339a(obj);
        if (a2 == -1) {
            return false;
        }
        cVar.f11889b = a2;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m27377b() {
        /*
            r5 = this;
            r0 = r5
            c.d.b.c.f0 r0 = r0.f11877r
            c.d.b.c.d0 r0 = r0.m28946e()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r6
            long r0 = r0.m29057f()
            r7 = r0
            r0 = r6
            boolean r0 = r0.f10096d
            if (r0 != 0) goto L_0x001c
            r0 = r7
            return r0
        L_0x001c:
            r0 = 0
            r9 = r0
        L_0x001f:
            r0 = r5
            c.d.b.c.m0[] r0 = r0.f11860a
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0085
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r9
            r0 = r0[r1]
            int r0 = r0.mo28372d()
            if (r0 == 0) goto L_0x007c
            r0 = r5
            c.d.b.c.m0[] r0 = r0.f11860a
            r1 = r9
            r0 = r0[r1]
            c.d.b.c.b1.z r0 = r0.mo28369h()
            r1 = r6
            c.d.b.c.b1.z[] r1 = r1.f10095c
            r2 = r9
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0059
            r0 = r7
            r11 = r0
            goto L_0x007c
        L_0x0059:
            r0 = r5
            c.d.b.c.m0[] r0 = r0.f11860a
            r1 = r9
            r0 = r0[r1]
            long r0 = r0.mo28364o()
            r11 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0074
            r0 = -9223372036854775808
            return r0
        L_0x0074:
            r0 = r11
            r1 = r7
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
        L_0x007c:
            int r9 = r9 + 1
            r0 = r11
            r7 = r0
            goto L_0x001f
        L_0x0085:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.m27377b():long");
    }

    /* renamed from: b */
    public final void m27376b(int i) throws ExoPlaybackException {
        this.f11852A = i;
        if (!this.f11877r.m28972a(i)) {
            m27367b(true);
        }
        m27382a(false);
    }

    /* renamed from: b */
    public final void m27375b(long j) throws ExoPlaybackException {
        C2767d0 d = this.f11877r.m28947d();
        if (d != null) {
            j = d.m29058e(j);
        }
        this.f11857F = j;
        this.f11873n.m28127a(j);
        for (AbstractC2953m0 m0Var : this.f11881v) {
            m0Var.mo28380a(this.f11857F);
        }
        m27341o();
    }

    /* renamed from: b */
    public final void m27374b(long j, long j2) {
        this.f11866g.mo28601b(2);
        this.f11866g.mo28603a(2, j + j2);
    }

    /* renamed from: b */
    public final void m27373b(AbstractC2735s sVar) {
        if (this.f11877r.m28968a(sVar)) {
            this.f11877r.m28971a(this.f11857F);
            m27347i();
        }
    }

    /* renamed from: b */
    public final void m27372b(AbstractC2737t tVar, boolean z, boolean z2) {
        this.f11855D++;
        m27379a(false, true, z, z2, true);
        this.f11864e.onPrepared();
        this.f11880u = tVar;
        m27365c(2);
        tVar.mo29249a(this, this.f11865f.mo28924a());
        this.f11866g.mo28606a(2);
    }

    /* renamed from: b */
    public final void m27371b(C2910h0 h0Var, boolean z) {
        this.f11866g.mo28604a(17, z ? 1 : 0, 0, h0Var).sendToTarget();
    }

    /* renamed from: b */
    public final void m27370b(C2949l0 l0Var) throws ExoPlaybackException {
        if (!l0Var.m28399i()) {
            try {
                l0Var.m28403e().mo18219a(l0Var.m28401g(), l0Var.m28405c());
            } finally {
                l0Var.m28407a(true);
            }
        }
    }

    /* renamed from: b */
    public final void m27369b(AbstractC2953m0 m0Var) throws ExoPlaybackException {
        if (m0Var.mo28372d() == 2) {
            m0Var.stop();
        }
    }

    /* renamed from: b */
    public void m27368b(AbstractC2965r0 r0Var, int i, long j) {
        this.f11866g.mo28602a(3, new C3215e(r0Var, i, j)).sendToTarget();
    }

    /* renamed from: b */
    public final void m27367b(boolean z) throws ExoPlaybackException {
        AbstractC2737t.C2738a aVar = this.f11877r.m28947d().f10098f.f10142a;
        long a = m27400a(aVar, this.f11879t.f10438m, true);
        if (a != this.f11879t.f10438m) {
            this.f11879t = m27401a(aVar, a, this.f11879t.f10429d);
            if (z) {
                this.f11874o.m27324b(4);
            }
        }
    }

    /* renamed from: c */
    public Looper m27366c() {
        return this.f11867h.getLooper();
    }

    /* renamed from: c */
    public final void m27365c(int i) {
        C2866g0 g0Var = this.f11879t;
        if (g0Var.f10430e != i) {
            this.f11879t = g0Var.m28757a(i);
        }
    }

    /* renamed from: c */
    public final void m27364c(AbstractC2735s sVar) throws ExoPlaybackException {
        if (this.f11877r.m28968a(sVar)) {
            C2767d0 c = this.f11877r.m28948c();
            c.m29075a(this.f11873n.mo28119g().f10540a, this.f11879t.f10426a);
            m27384a(c.m29055h(), c.m29054i());
            if (c == this.f11877r.m28947d()) {
                m27375b(c.f10098f.f10143b);
                m27397a((C2767d0) null);
            }
            m27347i();
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m27363c(C2949l0 l0Var) {
        try {
            m27370b(l0Var);
        } catch (ExoPlaybackException e) {
            C2894o.m28599a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public void m27362c(boolean z) {
        this.f11866g.mo28605a(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: d */
    public final long m27361d() {
        return m27406a(this.f11879t.f10436k);
    }

    /* renamed from: d */
    public void mo27404a(AbstractC2735s sVar) {
        this.f11866g.mo28602a(10, sVar).sendToTarget();
    }

    /* renamed from: d */
    public final void m27359d(C2949l0 l0Var) throws ExoPlaybackException {
        if (l0Var.m28404d() == -9223372036854775807L) {
            m27356e(l0Var);
        } else if (this.f11880u == null || this.f11855D > 0) {
            this.f11875p.add(new C3213c(l0Var));
        } else {
            C3213c cVar = new C3213c(l0Var);
            if (m27388a(cVar)) {
                this.f11875p.add(cVar);
                Collections.sort(this.f11875p);
                return;
            }
            l0Var.m28407a(false);
        }
    }

    /* renamed from: d */
    public final void m27358d(boolean z) throws ExoPlaybackException {
        this.f11884y = false;
        this.f11883x = z;
        if (!z) {
            m27332x();
            m27411A();
            return;
        }
        int i = this.f11879t.f10430e;
        if (i == 3) {
            m27333w();
            this.f11866g.mo28606a(2);
        } else if (i == 2) {
            this.f11866g.mo28606a(2);
        }
    }

    /* renamed from: e */
    public final void m27357e() {
        if (this.f11879t.f10430e != 1) {
            m27365c(4);
        }
        m27379a(false, false, true, false, true);
    }

    /* renamed from: e */
    public final void m27356e(C2949l0 l0Var) throws ExoPlaybackException {
        if (l0Var.m28406b().getLooper() == this.f11866g.mo28607a()) {
            m27370b(l0Var);
            int i = this.f11879t.f10430e;
            if (i == 3 || i == 2) {
                this.f11866g.mo28606a(2);
                return;
            }
            return;
        }
        this.f11866g.mo28602a(16, l0Var).sendToTarget();
    }

    /* renamed from: e */
    public void m27355e(boolean z) {
        this.f11866g.mo28605a(13, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: f */
    public final void m27353f(final C2949l0 l0Var) {
        Handler b = l0Var.m28406b();
        if (!b.getLooper().getThread().isAlive()) {
            C2894o.m28594d("TAG", "Trying to send message on a dead thread.");
            l0Var.m28407a(false);
            return;
        }
        b.post(new Runnable() { // from class: c.d.b.c.o
            @Override // java.lang.Runnable
            public final void run() {
                C3210z.this.m27363c(l0Var);
            }
        });
    }

    /* renamed from: f */
    public final void m27352f(boolean z) throws ExoPlaybackException {
        this.f11853B = z;
        if (!this.f11877r.m28949b(z)) {
            m27367b(true);
        }
        m27382a(false);
    }

    /* renamed from: f */
    public final boolean m27354f() {
        C2767d0 e = this.f11877r.m28946e();
        if (!e.f10096d) {
            return false;
        }
        int i = 0;
        while (true) {
            AbstractC2953m0[] m0VarArr = this.f11860a;
            if (i >= m0VarArr.length) {
                return true;
            }
            AbstractC2953m0 m0Var = m0VarArr[i];
            AbstractC2758z zVar = e.f10095c[i];
            if (m0Var.mo28369h() != zVar) {
                return false;
            }
            if (zVar != null && !m0Var.mo28368i()) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: g */
    public final boolean m27351g() {
        C2767d0 c = this.f11877r.m28948c();
        return (c == null || c.m29059e() == Long.MIN_VALUE) ? false : true;
    }

    /* renamed from: g */
    public final boolean m27350g(boolean z) {
        if (this.f11881v.length == 0) {
            return m27349h();
        }
        boolean z2 = false;
        if (!z) {
            return false;
        }
        if (!this.f11879t.f10432g) {
            return true;
        }
        C2767d0 c = this.f11877r.m28948c();
        if ((c.m29053j() && c.f10098f.f10148g) || this.f11864e.mo28159a(m27361d(), this.f11873n.mo28119g().f10540a, this.f11884y)) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: h */
    public void m27348h(boolean z) {
        this.f11866g.mo28605a(6, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: h */
    public final boolean m27349h() {
        C2767d0 d = this.f11877r.m28947d();
        long j = d.f10098f.f10146e;
        return d.f10096d && (j == -9223372036854775807L || this.f11879t.f10438m < j);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c3  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3210z.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    public final void m27347i() {
        boolean v = m27334v();
        this.f11885z = v;
        if (v) {
            this.f11877r.m28948c().m29074a(this.f11857F);
        }
        m27331y();
    }

    /* renamed from: j */
    public final void m27346j() {
        if (this.f11874o.m27326a(this.f11879t)) {
            this.f11868i.obtainMessage(0, this.f11874o.f11893b, this.f11874o.f11894c ? this.f11874o.f11895d : -1, this.f11879t).sendToTarget();
            this.f11874o.m27323b(this.f11879t);
        }
    }

    /* renamed from: k */
    public final void m27345k() throws IOException {
        if (this.f11877r.m28948c() != null) {
            for (AbstractC2953m0 m0Var : this.f11881v) {
                if (!m0Var.mo28368i()) {
                    return;
                }
            }
        }
        this.f11880u.mo29148b();
    }

    /* renamed from: l */
    public final void m27344l() throws ExoPlaybackException, IOException {
        this.f11877r.m28971a(this.f11857F);
        if (this.f11877r.m28945f()) {
            C2788e0 a = this.f11877r.m28969a(this.f11857F, this.f11879t);
            if (a == null) {
                m27345k();
            } else {
                C2767d0 a2 = this.f11877r.m28953a(this.f11861b, this.f11862c, this.f11864e.mo28151e(), this.f11880u, a, this.f11863d);
                a2.f10093a.mo29203a(this, a.f10143b);
                if (this.f11877r.m28947d() == a2) {
                    m27375b(a2.m29056g());
                }
                m27382a(false);
            }
        }
        if (this.f11885z) {
            this.f11885z = m27351g();
            m27331y();
            return;
        }
        m27347i();
    }

    /* renamed from: m */
    public final void m27343m() throws ExoPlaybackException {
        boolean z = false;
        while (m27335u()) {
            if (z) {
                m27346j();
            }
            C2767d0 d = this.f11877r.m28947d();
            if (d == this.f11877r.m28946e()) {
                m27336t();
            }
            C2767d0 a = this.f11877r.m28973a();
            m27397a(d);
            C2788e0 e0Var = a.f10098f;
            this.f11879t = m27401a(e0Var.f10142a, e0Var.f10143b, e0Var.f10144c);
            this.f11874o.m27324b(d.f10098f.f10147f ? 0 : 3);
            m27411A();
            z = true;
        }
    }

    /* renamed from: n */
    public final void m27342n() throws ExoPlaybackException {
        C2767d0 e = this.f11877r.m28946e();
        if (e != null) {
            int i = 0;
            if (e.m29061d() == null) {
                if (e.f10098f.f10148g) {
                    while (true) {
                        AbstractC2953m0[] m0VarArr = this.f11860a;
                        if (i < m0VarArr.length) {
                            AbstractC2953m0 m0Var = m0VarArr[i];
                            AbstractC2758z zVar = e.f10095c[i];
                            if (zVar != null && m0Var.mo28369h() == zVar && m0Var.mo28368i()) {
                                m0Var.mo28367j();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                }
            } else if (m27354f() && e.m29061d().f10096d) {
                C2786i i2 = e.m29054i();
                C2767d0 b = this.f11877r.m28952b();
                C2786i i3 = b.m29054i();
                if (b.f10093a.mo29181f() != -9223372036854775807L) {
                    m27336t();
                    return;
                }
                int i4 = 0;
                while (true) {
                    AbstractC2953m0[] m0VarArr2 = this.f11860a;
                    if (i4 < m0VarArr2.length) {
                        AbstractC2953m0 m0Var2 = m0VarArr2[i4];
                        if (i2.m29014a(i4) && !m0Var2.mo28363p()) {
                            AbstractC2780f a = i3.f10139c.m29019a(i4);
                            boolean a2 = i3.m29014a(i4);
                            boolean z = this.f11861b[i4].mo28371e() == 6;
                            C2961p0 p0Var = i2.f10138b[i4];
                            C2961p0 p0Var2 = i3.f10138b[i4];
                            if (!a2 || !p0Var2.equals(p0Var) || z) {
                                m0Var2.mo28367j();
                            } else {
                                m0Var2.mo28374a(m27396a(a), b.f10095c[i4], b.m29057f());
                            }
                        }
                        i4++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: o */
    public final void m27341o() {
        AbstractC2780f[] a;
        for (C2767d0 d = this.f11877r.m28947d(); d != null; d = d.m29061d()) {
            for (AbstractC2780f fVar : d.m29054i().f10139c.m29020a()) {
                if (fVar != null) {
                    fVar.mo29023e();
                }
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.C3018v.AbstractC3019a
    public void onPlaybackParametersChanged(C2910h0 h0Var) {
        m27371b(h0Var, false);
    }

    /* renamed from: p */
    public void m27340p() {
        synchronized (this) {
            if (!this.f11882w && this.f11867h.isAlive()) {
                this.f11866g.mo28606a(7);
                boolean z = false;
                while (!this.f11882w) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* renamed from: q */
    public final void m27339q() {
        m27379a(true, true, true, true, false);
        this.f11864e.mo28152d();
        m27365c(1);
        this.f11867h.quit();
        synchronized (this) {
            this.f11882w = true;
            notifyAll();
        }
    }

    /* renamed from: r */
    public final void m27338r() throws ExoPlaybackException {
        float f = this.f11873n.mo28119g().f10540a;
        C2767d0 e = this.f11877r.m28946e();
        boolean z = true;
        for (C2767d0 d = this.f11877r.m28947d(); d != null && d.f10096d; d = d.m29061d()) {
            C2786i b = d.m29066b(f, this.f11879t.f10426a);
            if (!b.m29013a(d.m29054i())) {
                if (z) {
                    C2767d0 d2 = this.f11877r.m28947d();
                    boolean a = this.f11877r.m28964a(d2);
                    boolean[] zArr = new boolean[this.f11860a.length];
                    long a2 = d2.m29069a(b, this.f11879t.f10438m, a, zArr);
                    C2866g0 g0Var = this.f11879t;
                    if (!(g0Var.f10430e == 4 || a2 == g0Var.f10438m)) {
                        C2866g0 g0Var2 = this.f11879t;
                        this.f11879t = m27401a(g0Var2.f10427b, a2, g0Var2.f10429d);
                        this.f11874o.m27324b(4);
                        m27375b(a2);
                    }
                    boolean[] zArr2 = new boolean[this.f11860a.length];
                    int i = 0;
                    int i2 = 0;
                    while (true) {
                        AbstractC2953m0[] m0VarArr = this.f11860a;
                        if (i >= m0VarArr.length) {
                            break;
                        }
                        AbstractC2953m0 m0Var = m0VarArr[i];
                        zArr2[i] = m0Var.mo28372d() != 0;
                        AbstractC2758z zVar = d2.f10095c[i];
                        i2 = i2;
                        if (zVar != null) {
                            i2++;
                        }
                        if (zArr2[i]) {
                            if (zVar != m0Var.mo28369h()) {
                                m27392a(m0Var);
                            } else if (zArr[i]) {
                                m0Var.mo28380a(this.f11857F);
                            }
                        }
                        i++;
                    }
                    this.f11879t = this.f11879t.m28751a(d2.m29055h(), d2.m29054i());
                    m27378a(zArr2, i2);
                } else {
                    this.f11877r.m28964a(d);
                    if (d.f10096d) {
                        d.m29070a(b, Math.max(d.f10098f.f10143b, d.m29060d(this.f11857F)), false);
                    }
                }
                m27382a(true);
                if (this.f11879t.f10430e != 4) {
                    m27347i();
                    m27411A();
                    this.f11866g.mo28606a(2);
                    return;
                }
                return;
            }
            if (d == e) {
                z = false;
            }
        }
    }

    /* renamed from: s */
    public final void m27337s() {
        for (int size = this.f11875p.size() - 1; size >= 0; size--) {
            if (!m27388a(this.f11875p.get(size))) {
                this.f11875p.get(size).f11888a.m28407a(false);
                this.f11875p.remove(size);
            }
        }
        Collections.sort(this.f11875p);
    }

    /* renamed from: t */
    public final void m27336t() {
        AbstractC2953m0[] m0VarArr;
        for (AbstractC2953m0 m0Var : this.f11860a) {
            if (m0Var.mo28369h() != null) {
                m0Var.mo28367j();
            }
        }
    }

    /* renamed from: u */
    public final boolean m27335u() {
        C2767d0 d;
        C2767d0 d2;
        boolean z = false;
        if (!this.f11883x || (d = this.f11877r.m28947d()) == null || (d2 = d.m29061d()) == null) {
            return false;
        }
        if (d == this.f11877r.m28946e() && !m27354f()) {
            return false;
        }
        if (this.f11857F >= d2.m29056g()) {
            z = true;
        }
        return z;
    }

    /* renamed from: v */
    public final boolean m27334v() {
        if (!m27351g()) {
            return false;
        }
        return this.f11864e.mo28160a(m27406a(this.f11877r.m28948c().m29059e()), this.f11873n.mo28119g().f10540a);
    }

    /* renamed from: w */
    public final void m27333w() throws ExoPlaybackException {
        this.f11884y = false;
        this.f11873n.m28128a();
        for (AbstractC2953m0 m0Var : this.f11881v) {
            m0Var.start();
        }
    }

    /* renamed from: x */
    public final void m27332x() throws ExoPlaybackException {
        this.f11873n.m28123b();
        for (AbstractC2953m0 m0Var : this.f11881v) {
            m27369b(m0Var);
        }
    }

    /* renamed from: y */
    public final void m27331y() {
        C2767d0 c = this.f11877r.m28948c();
        boolean z = this.f11885z || (c != null && c.f10093a.mo29172n());
        C2866g0 g0Var = this.f11879t;
        if (z != g0Var.f10432g) {
            this.f11879t = g0Var.m28750a(z);
        }
    }

    /* renamed from: z */
    public final void m27330z() throws ExoPlaybackException, IOException {
        AbstractC2737t tVar = this.f11880u;
        if (tVar != null) {
            if (this.f11855D > 0) {
                tVar.mo29148b();
                return;
            }
            m27344l();
            m27342n();
            m27343m();
        }
    }
}
