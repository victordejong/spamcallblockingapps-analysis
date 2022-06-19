package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5179p0;
import com.google.android.exoplayer2.C5589z;
import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.trackselection.AbstractC5412h;
import com.google.android.exoplayer2.trackselection.C5414i;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.AbstractC5525n;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5511f0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.exoplayer2.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/d0.class */
public final class C5013d0 implements Handler.Callback, AbstractC5292u.AbstractC5293a, AbstractC5412h.AbstractC5413a, AbstractC5294v.AbstractC5296b, C5589z.AbstractC5590a, C5179p0.AbstractC5180a {

    /* renamed from: A */
    private boolean f15604A;

    /* renamed from: B */
    private boolean f15605B;

    /* renamed from: C */
    private boolean f15606C;

    /* renamed from: D */
    private int f15607D;

    /* renamed from: E */
    private boolean f15608E;

    /* renamed from: F */
    private boolean f15609F;

    /* renamed from: G */
    private int f15610G;

    /* renamed from: H */
    private C5018e f15611H;

    /* renamed from: I */
    private long f15612I;

    /* renamed from: J */
    private int f15613J;

    /* renamed from: K */
    private boolean f15614K;

    /* renamed from: d */
    private final AbstractC5187r0[] f15615d;

    /* renamed from: e */
    private final AbstractC5315t0[] f15616e;

    /* renamed from: f */
    private final AbstractC5412h f15617f;

    /* renamed from: g */
    private final C5414i f15618g;

    /* renamed from: h */
    private final AbstractC5092g0 f15619h;

    /* renamed from: i */
    private final AbstractC5473f f15620i;

    /* renamed from: j */
    private final AbstractC5525n f15621j;

    /* renamed from: k */
    private final HandlerThread f15622k;

    /* renamed from: l */
    private final Handler f15623l;

    /* renamed from: m */
    private final AbstractC5585y0.C5588c f15624m;

    /* renamed from: n */
    private final AbstractC5585y0.C5587b f15625n;

    /* renamed from: o */
    private final long f15626o;

    /* renamed from: p */
    private final boolean f15627p;

    /* renamed from: q */
    private final C5589z f15628q;

    /* renamed from: s */
    private final ArrayList<C5016c> f15630s;

    /* renamed from: t */
    private final AbstractC5510f f15631t;

    /* renamed from: w */
    private C5100k0 f15634w;

    /* renamed from: x */
    private AbstractC5294v f15635x;

    /* renamed from: y */
    private AbstractC5187r0[] f15636y;

    /* renamed from: z */
    private boolean f15637z;

    /* renamed from: u */
    private final C5098j0 f15632u = new C5098j0();

    /* renamed from: v */
    private C5579w0 f15633v = C5579w0.f18118e;

    /* renamed from: r */
    private final C5017d f15629r = new C5017d();

    /* renamed from: com.google.android.exoplayer2.d0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/d0$b.class */
    public static final class C5015b {

        /* renamed from: a */
        public final AbstractC5294v f15638a;

        /* renamed from: b */
        public final AbstractC5585y0 f15639b;

        public C5015b(AbstractC5294v abstractC5294v, AbstractC5585y0 abstractC5585y0) {
            this.f15638a = abstractC5294v;
            this.f15639b = abstractC5585y0;
        }
    }

    /* renamed from: com.google.android.exoplayer2.d0$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/d0$c.class */
    public static final class C5016c implements Comparable<C5016c> {

        /* renamed from: d */
        public final C5179p0 f15640d;

        /* renamed from: e */
        public int f15641e;

        /* renamed from: f */
        public long f15642f;

        /* renamed from: g */
        public Object f15643g;

        public C5016c(C5179p0 c5179p0) {
            this.f15640d = c5179p0;
        }

        /* renamed from: a */
        public int compareTo(C5016c c5016c) {
            Object obj = this.f15643g;
            if ((obj == null) != (c5016c.f15643g == null)) {
                int i = 1;
                if (obj != null) {
                    i = -1;
                }
                return i;
            } else if (obj == null) {
                return 0;
            } else {
                int i2 = this.f15641e - c5016c.f15641e;
                return i2 != 0 ? i2 : C5515h0.m18823l(this.f15642f, c5016c.f15642f);
            }
        }

        /* renamed from: d */
        public void m20840d(int i, long j, Object obj) {
            this.f15641e = i;
            this.f15642f = j;
            this.f15643g = obj;
        }
    }

    /* renamed from: com.google.android.exoplayer2.d0$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/d0$d.class */
    public static final class C5017d {

        /* renamed from: a */
        private C5100k0 f15644a;

        /* renamed from: b */
        private int f15645b;

        /* renamed from: c */
        private boolean f15646c;

        /* renamed from: d */
        private int f15647d;

        private C5017d() {
        }

        /* renamed from: d */
        public boolean m20836d(C5100k0 c5100k0) {
            return c5100k0 != this.f15644a || this.f15645b > 0 || this.f15646c;
        }

        /* renamed from: e */
        public void m20835e(int i) {
            this.f15645b += i;
        }

        /* renamed from: f */
        public void m20834f(C5100k0 c5100k0) {
            this.f15644a = c5100k0;
            this.f15645b = 0;
            this.f15646c = false;
        }

        /* renamed from: g */
        public void m20833g(int i) {
            boolean z = true;
            if (!this.f15646c || this.f15647d == 4) {
                this.f15646c = true;
                this.f15647d = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C5508e.m18915a(z);
        }
    }

    /* renamed from: com.google.android.exoplayer2.d0$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/d0$e.class */
    public static final class C5018e {

        /* renamed from: a */
        public final AbstractC5585y0 f15648a;

        /* renamed from: b */
        public final int f15649b;

        /* renamed from: c */
        public final long f15650c;

        public C5018e(AbstractC5585y0 abstractC5585y0, int i, long j) {
            this.f15648a = abstractC5585y0;
            this.f15649b = i;
            this.f15650c = j;
        }
    }

    public C5013d0(AbstractC5187r0[] abstractC5187r0Arr, AbstractC5412h abstractC5412h, C5414i c5414i, AbstractC5092g0 abstractC5092g0, AbstractC5473f abstractC5473f, boolean z, int i, boolean z2, Handler handler, AbstractC5510f abstractC5510f) {
        this.f15615d = abstractC5187r0Arr;
        this.f15617f = abstractC5412h;
        this.f15618g = c5414i;
        this.f15619h = abstractC5092g0;
        this.f15620i = abstractC5473f;
        this.f15604A = z;
        this.f15607D = i;
        this.f15608E = z2;
        this.f15623l = handler;
        this.f15631t = abstractC5510f;
        this.f15626o = abstractC5092g0.mo18378e();
        this.f15627p = abstractC5092g0.mo18379d();
        this.f15634w = C5100k0.m20517h(-9223372036854775807L, c5414i);
        this.f15616e = new AbstractC5315t0[abstractC5187r0Arr.length];
        for (int i2 = 0; i2 < abstractC5187r0Arr.length; i2++) {
            abstractC5187r0Arr[i2].mo19253o(i2);
            this.f15616e[i2] = abstractC5187r0Arr[i2].mo19254m();
        }
        this.f15628q = new C5589z(this, abstractC5510f);
        this.f15630s = new ArrayList<>();
        this.f15636y = new AbstractC5187r0[0];
        this.f15624m = new AbstractC5585y0.C5588c();
        this.f15625n = new AbstractC5585y0.C5587b();
        abstractC5412h.m19276b(this, abstractC5473f);
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f15622k = handlerThread;
        handlerThread.start();
        this.f15621j = abstractC5510f.mo18894d(handlerThread.getLooper(), this);
        this.f15614K = true;
    }

    /* renamed from: A */
    private boolean m20920A() {
        C5094h0 m20536o = this.f15632u.m20536o();
        if (!m20536o.f15936d) {
            return false;
        }
        int i = 0;
        while (true) {
            AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
            if (i >= abstractC5187r0Arr.length) {
                return true;
            }
            AbstractC5187r0 abstractC5187r0 = abstractC5187r0Arr[i];
            AbstractC5209b0 abstractC5209b0 = m20536o.f15935c[i];
            if (abstractC5187r0.mo19259g() != abstractC5209b0) {
                return false;
            }
            if (abstractC5209b0 != null && !abstractC5187r0.mo19257j()) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: A0 */
    private void m20919A0() {
        this.f15628q.m18323g();
        for (AbstractC5187r0 abstractC5187r0 : this.f15636y) {
            m20870l(abstractC5187r0);
        }
    }

    /* renamed from: B */
    private boolean m20918B() {
        C5094h0 m20542i = this.f15632u.m20542i();
        return (m20542i == null || m20542i.m20572k() == Long.MIN_VALUE) ? false : true;
    }

    /* renamed from: B0 */
    private void m20917B0() {
        C5094h0 m20542i = this.f15632u.m20542i();
        boolean z = this.f15606C || (m20542i != null && m20542i.f15933a.mo19762d());
        C5100k0 c5100k0 = this.f15634w;
        if (z != c5100k0.f15976h) {
            this.f15634w = c5100k0.m20524a(z);
        }
    }

    /* renamed from: C */
    private boolean m20916C() {
        C5094h0 m20537n = this.f15632u.m20537n();
        long j = m20537n.f15938f.f15952e;
        return m20537n.f15936d && (j == -9223372036854775807L || this.f15634w.f15982n < j);
    }

    /* renamed from: C0 */
    private void m20915C0(TrackGroupArray trackGroupArray, C5414i c5414i) {
        this.f15619h.mo18375h(this.f15615d, trackGroupArray, c5414i.f17391c);
    }

    /* renamed from: D */
    public /* synthetic */ void m20912E(C5179p0 c5179p0) {
        try {
            m20882e(c5179p0);
        } catch (ExoPlaybackException e) {
            C5526o.m18744d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: D0 */
    private void m20913D0() {
        AbstractC5294v abstractC5294v = this.f15635x;
        if (abstractC5294v == null) {
            return;
        }
        if (this.f15610G > 0) {
            abstractC5294v.mo19724h();
            return;
        }
        m20904J();
        m20902L();
        m20903K();
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: E0 */
    private void m20911E0() {
        C5094h0 m20537n = this.f15632u.m20537n();
        if (m20537n == null) {
            return;
        }
        char mo19751p = m20537n.f15936d ? m20537n.f15933a.mo19751p() : (char) 1;
        if (mo19751p != -9223372036854775807L) {
            m20893U(mo19751p);
            if (mo19751p != this.f15634w.f15982n) {
                C5100k0 c5100k0 = this.f15634w;
                this.f15634w = m20884d(c5100k0.f15971c, mo19751p, c5100k0.f15973e);
                this.f15629r.m20833g(4);
            }
        } else {
            long m18321i = this.f15628q.m18321i(m20537n != this.f15632u.m20536o());
            this.f15612I = m18321i;
            long m20558y = m20537n.m20558y(m18321i);
            m20905I(this.f15634w.f15982n, m20558y);
            this.f15634w.f15982n = m20558y;
        }
        this.f15634w.f15980l = this.f15632u.m20542i().m20574i();
        this.f15634w.f15981m = m20857s();
    }

    /* renamed from: F */
    private void m20910F() {
        boolean m20848w0 = m20848w0();
        this.f15606C = m20848w0;
        if (m20848w0) {
            this.f15632u.m20542i().m20579d(this.f15612I);
        }
        m20917B0();
    }

    /* renamed from: F0 */
    private void m20909F0(C5094h0 c5094h0) {
        C5094h0 m20537n = this.f15632u.m20537n();
        if (m20537n == null || c5094h0 == m20537n) {
            return;
        }
        boolean[] zArr = new boolean[this.f15615d.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
            if (i >= abstractC5187r0Arr.length) {
                this.f15634w = this.f15634w.m20518g(m20537n.m20569n(), m20537n.m20568o());
                m20874i(zArr, i3);
                return;
            }
            AbstractC5187r0 abstractC5187r0 = abstractC5187r0Arr[i];
            zArr[i] = abstractC5187r0.getState() != 0;
            int i4 = i3;
            if (m20537n.m20568o().m19271c(i)) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (!m20537n.m20568o().m19271c(i) || (abstractC5187r0.mo19247w() && abstractC5187r0.mo19259g() == c5094h0.f15935c[i]))) {
                m20880f(abstractC5187r0);
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: G */
    private void m20908G() {
        if (this.f15629r.m20836d(this.f15634w)) {
            this.f15623l.obtainMessage(0, this.f15629r.f15645b, this.f15629r.f15646c ? this.f15629r.f15647d : -1, this.f15634w).sendToTarget();
            this.f15629r.m20834f(this.f15634w);
        }
    }

    /* renamed from: G0 */
    private void m20907G0(float f) {
        AbstractC5408f[] m19278b;
        C5094h0 m20537n = this.f15632u.m20537n();
        while (true) {
            C5094h0 c5094h0 = m20537n;
            if (c5094h0 != null) {
                for (AbstractC5408f abstractC5408f : c5094h0.m20568o().f17391c.m19278b()) {
                    if (abstractC5408f != null) {
                        abstractC5408f.mo19284l(f);
                    }
                }
                m20537n = c5094h0.m20573j();
            } else {
                return;
            }
        }
    }

    /* renamed from: H */
    private void m20906H() {
        if (this.f15632u.m20542i() != null) {
            for (AbstractC5187r0 abstractC5187r0 : this.f15636y) {
                if (!abstractC5187r0.mo19257j()) {
                    return;
                }
            }
        }
        this.f15635x.mo19724h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b8 A[LOOP:0: B:15:0x007e->B:25:0x00b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0161 A[EDGE_INSN: B:85:0x0161->B:97:0x0161 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0078 -> B:15:0x007e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ef -> B:30:0x00f5). Please submit an issue!!! */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20905I(long r6, long r8) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.m20905I(long, long):void");
    }

    /* renamed from: J */
    private void m20904J() {
        this.f15632u.m20531t(this.f15612I);
        if (this.f15632u.m20525z()) {
            C5096i0 m20538m = this.f15632u.m20538m(this.f15612I, this.f15634w);
            if (m20538m == null) {
                m20906H();
            } else {
                C5094h0 m20545f = this.f15632u.m20545f(this.f15616e, this.f15617f, this.f15619h.mo18373j(), this.f15635x, m20538m, this.f15618g);
                m20545f.f15933a.mo19750q(this, m20538m.f15949b);
                if (this.f15632u.m20537n() == m20545f) {
                    m20893U(m20545f.m20570m());
                }
                m20851v(false);
            }
        }
        if (!this.f15606C) {
            m20910F();
            return;
        }
        this.f15606C = m20918B();
        m20917B0();
    }

    /* renamed from: K */
    private void m20903K() {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (m20850v0()) {
                if (z2) {
                    m20908G();
                }
                C5094h0 m20537n = this.f15632u.m20537n();
                if (m20537n == this.f15632u.m20536o()) {
                    m20872j0();
                }
                C5094h0 m20550a = this.f15632u.m20550a();
                m20909F0(m20537n);
                C5096i0 c5096i0 = m20550a.f15938f;
                this.f15634w = m20884d(c5096i0.f15948a, c5096i0.f15949b, c5096i0.f15950c);
                this.f15629r.m20833g(m20537n.f15938f.f15953f ? 0 : 3);
                m20911E0();
                z = true;
            } else {
                return;
            }
        }
    }

    /* renamed from: L */
    private void m20902L() {
        C5094h0 m20536o = this.f15632u.m20536o();
        if (m20536o == null) {
            return;
        }
        int i = 0;
        if (m20536o.m20573j() == null) {
            if (!m20536o.f15938f.f15954g) {
                return;
            }
            while (true) {
                AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
                if (i >= abstractC5187r0Arr.length) {
                    return;
                }
                AbstractC5187r0 abstractC5187r0 = abstractC5187r0Arr[i];
                AbstractC5209b0 abstractC5209b0 = m20536o.f15935c[i];
                if (abstractC5209b0 != null && abstractC5187r0.mo19259g() == abstractC5209b0 && abstractC5187r0.mo19257j()) {
                    abstractC5187r0.mo19255l();
                }
                i++;
            }
        } else if (!m20920A() || !m20536o.m20573j().f15936d) {
        } else {
            C5414i m20568o = m20536o.m20568o();
            C5094h0 m20549b = this.f15632u.m20549b();
            C5414i m20568o2 = m20549b.m20568o();
            if (m20549b.f15933a.mo19751p() != -9223372036854775807L) {
                m20872j0();
                return;
            }
            int i2 = 0;
            while (true) {
                AbstractC5187r0[] abstractC5187r0Arr2 = this.f15615d;
                if (i2 >= abstractC5187r0Arr2.length) {
                    return;
                }
                AbstractC5187r0 abstractC5187r02 = abstractC5187r0Arr2[i2];
                if (m20568o.m19271c(i2) && !abstractC5187r02.mo19247w()) {
                    AbstractC5408f m19279a = m20568o2.f17391c.m19279a(i2);
                    boolean m19271c = m20568o2.m19271c(i2);
                    boolean z = this.f15616e[i2].mo19258i() == 6;
                    C5416u0 c5416u0 = m20568o.f17390b[i2];
                    C5416u0 c5416u02 = m20568o2.f17390b[i2];
                    if (!m19271c || !c5416u02.equals(c5416u0) || z) {
                        abstractC5187r02.mo19255l();
                    } else {
                        abstractC5187r02.mo19245y(m20866n(m19279a), m20549b.f15935c[i2], m20549b.m20571l());
                    }
                }
                i2++;
            }
        }
    }

    /* renamed from: M */
    private void m20901M() {
        AbstractC5408f[] m19278b;
        C5094h0 m20537n = this.f15632u.m20537n();
        while (true) {
            C5094h0 c5094h0 = m20537n;
            if (c5094h0 != null) {
                for (AbstractC5408f abstractC5408f : c5094h0.m20568o().f17391c.m19278b()) {
                    if (abstractC5408f != null) {
                        abstractC5408f.mo19282n();
                    }
                }
                m20537n = c5094h0.m20573j();
            } else {
                return;
            }
        }
    }

    /* renamed from: P */
    private void m20898P(AbstractC5294v abstractC5294v, boolean z, boolean z2) {
        this.f15610G++;
        m20894T(false, true, z, z2, true);
        this.f15619h.mo18380c();
        this.f15635x = abstractC5294v;
        m20852u0(2);
        abstractC5294v.mo19844j(this, this.f15620i.mo19005c());
        this.f15621j.mo18753b(2);
    }

    /* renamed from: R */
    private void m20896R() {
        m20894T(true, true, true, true, false);
        this.f15619h.mo18374i();
        m20852u0(1);
        this.f15622k.quit();
        synchronized (this) {
            this.f15637z = true;
            notifyAll();
        }
    }

    /* renamed from: S */
    private void m20895S() {
        int i;
        float f = this.f15628q.mo18326d().f15985b;
        C5094h0 m20536o = this.f15632u.m20536o();
        boolean z = true;
        for (C5094h0 m20537n = this.f15632u.m20537n(); m20537n != null && m20537n.f15936d; m20537n = m20537n.m20573j()) {
            C5414i m20561v = m20537n.m20561v(f, this.f15634w.f15970b);
            if (!m20561v.m19273a(m20537n.m20568o())) {
                if (z) {
                    C5094h0 m20537n2 = this.f15632u.m20537n();
                    boolean m20530u = this.f15632u.m20530u(m20537n2);
                    boolean[] zArr = new boolean[this.f15615d.length];
                    long m20581b = m20537n2.m20581b(m20561v, this.f15634w.f15982n, m20530u, zArr);
                    C5100k0 c5100k0 = this.f15634w;
                    if (c5100k0.f15974f != 4 && m20581b != c5100k0.f15982n) {
                        C5100k0 c5100k02 = this.f15634w;
                        this.f15634w = m20884d(c5100k02.f15971c, m20581b, c5100k02.f15973e);
                        this.f15629r.m20833g(4);
                        m20893U(m20581b);
                    }
                    boolean[] zArr2 = new boolean[this.f15615d.length];
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        i = i3;
                        AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
                        if (i2 >= abstractC5187r0Arr.length) {
                            break;
                        }
                        AbstractC5187r0 abstractC5187r0 = abstractC5187r0Arr[i2];
                        zArr2[i2] = abstractC5187r0.getState() != 0;
                        AbstractC5209b0 abstractC5209b0 = m20537n2.f15935c[i2];
                        int i4 = i;
                        if (abstractC5209b0 != null) {
                            i4 = i + 1;
                        }
                        if (zArr2[i2]) {
                            if (abstractC5209b0 != abstractC5187r0.mo19259g()) {
                                m20880f(abstractC5187r0);
                            } else if (zArr[i2]) {
                                abstractC5187r0.mo19248v(this.f15612I);
                            }
                        }
                        i2++;
                        i3 = i4;
                    }
                    this.f15634w = this.f15634w.m20518g(m20537n2.m20569n(), m20537n2.m20568o());
                    m20874i(zArr2, i);
                } else {
                    this.f15632u.m20530u(m20537n);
                    if (m20537n.f15936d) {
                        m20537n.m20582a(m20561v, Math.max(m20537n.f15938f.f15949b, m20537n.m20558y(this.f15612I)), false);
                    }
                }
                m20851v(true);
                if (this.f15634w.f15974f == 4) {
                    return;
                }
                m20910F();
                m20911E0();
                this.f15621j.mo18753b(2);
                return;
            }
            if (m20537n == m20536o) {
                z = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0208  */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20894T(boolean r23, boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.m20894T(boolean, boolean, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.exoplayer2.z] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: U */
    private void m20893U(long j) {
        C5094h0 m20537n = this.f15632u.m20537n();
        ?? r5 = j;
        if (m20537n != null) {
            r5 = m20537n.m20557z(j);
        }
        this.f15612I = r5;
        this.f15628q.m18327c(r5);
        for (AbstractC5187r0 abstractC5187r0 : this.f15636y) {
            abstractC5187r0.mo19248v(this.f15612I);
        }
        m20901M();
    }

    /* renamed from: V */
    private boolean m20892V(C5016c c5016c) {
        Object obj = c5016c.f15643g;
        if (obj == null) {
            Pair<Object, Long> m20890X = m20890X(new C5018e(c5016c.f15640d.m20223g(), c5016c.f15640d.m20221i(), C5543v.m18630a(c5016c.f15640d.m20225e())), false);
            if (m20890X == null) {
                return false;
            }
            c5016c.m20840d(this.f15634w.f15970b.mo18356b(m20890X.first), ((Long) m20890X.second).longValue(), m20890X.first);
            return true;
        }
        int mo18356b = this.f15634w.f15970b.mo18356b(obj);
        if (mo18356b == -1) {
            return false;
        }
        c5016c.f15641e = mo18356b;
        return true;
    }

    /* renamed from: W */
    private void m20891W() {
        for (int size = this.f15630s.size() - 1; size >= 0; size--) {
            if (!m20892V(this.f15630s.get(size))) {
                this.f15630s.get(size).f15640d.m20219k(false);
                this.f15630s.remove(size);
            }
        }
        Collections.sort(this.f15630s);
    }

    /* renamed from: X */
    private Pair<Object, Long> m20890X(C5018e c5018e, boolean z) {
        Object m20889Y;
        AbstractC5585y0 abstractC5585y0 = this.f15634w.f15970b;
        AbstractC5585y0 abstractC5585y02 = c5018e.f15648a;
        if (abstractC5585y0.m18358q()) {
            return null;
        }
        AbstractC5585y0 abstractC5585y03 = abstractC5585y02;
        if (abstractC5585y02.m18358q()) {
            abstractC5585y03 = abstractC5585y0;
        }
        try {
            Pair<Object, Long> m18362j = abstractC5585y03.m18362j(this.f15624m, this.f15625n, c5018e.f15649b, c5018e.f15650c);
            if (abstractC5585y0 != abstractC5585y03 && abstractC5585y0.mo18356b(m18362j.first) == -1) {
                if (z && (m20889Y = m20889Y(m18362j.first, abstractC5585y03, abstractC5585y0)) != null) {
                    return m20861q(abstractC5585y0, abstractC5585y0.m18363h(m20889Y, this.f15625n).f18176c, -9223372036854775807L);
                }
                return null;
            }
            return m18362j;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: Y */
    private Object m20889Y(Object obj, AbstractC5585y0 abstractC5585y0, AbstractC5585y0 abstractC5585y02) {
        int mo18356b = abstractC5585y0.mo18356b(obj);
        int mo18354i = abstractC5585y0.mo18354i();
        int i = -1;
        for (int i2 = 0; i2 < mo18354i && i == -1; i2++) {
            mo18356b = abstractC5585y0.m18366d(mo18356b, this.f15625n, this.f15624m, this.f15607D, this.f15608E);
            if (mo18356b == -1) {
                break;
            }
            i = abstractC5585y02.mo18356b(abstractC5585y0.mo18353m(mo18356b));
        }
        return i == -1 ? null : abstractC5585y02.mo18353m(i);
    }

    /* renamed from: Z */
    private void m20888Z(long j, long j2) {
        this.f15621j.mo18750e(2);
        this.f15621j.mo18751d(2, j + j2);
    }

    /* renamed from: b0 */
    private void m20886b0(boolean z) {
        AbstractC5294v.C5295a c5295a = this.f15632u.m20537n().f15938f.f15948a;
        long m20881e0 = m20881e0(c5295a, this.f15634w.f15982n, true);
        if (m20881e0 != this.f15634w.f15982n) {
            this.f15634w = m20884d(c5295a, m20881e0, this.f15634w.f15973e);
            if (!z) {
                return;
            }
            this.f15629r.m20833g(4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20885c0(com.google.android.exoplayer2.C5013d0.C5018e r9) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.m20885c0(com.google.android.exoplayer2.d0$e):void");
    }

    /* renamed from: d */
    private C5100k0 m20884d(AbstractC5294v.C5295a c5295a, long j, long j2) {
        this.f15614K = true;
        return this.f15634w.m20522c(c5295a, j, j2, m20857s());
    }

    /* renamed from: d0 */
    private long m20883d0(AbstractC5294v.C5295a c5295a, long j) {
        return m20881e0(c5295a, j, this.f15632u.m20537n() != this.f15632u.m20536o());
    }

    /* renamed from: e */
    private void m20882e(C5179p0 c5179p0) {
        if (c5179p0.m20220j()) {
            return;
        }
        try {
            c5179p0.m20224f().mo18503r(c5179p0.m20222h(), c5179p0.m20226d());
        } finally {
            c5179p0.m20219k(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        if (r11.m20557z(r8) < 0) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0110  */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long m20881e0(com.google.android.exoplayer2.source.AbstractC5294v.C5295a r7, long r8, boolean r10) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.m20881e0(com.google.android.exoplayer2.source.v$a, long, boolean):long");
    }

    /* renamed from: f */
    private void m20880f(AbstractC5187r0 abstractC5187r0) {
        this.f15628q.m18329a(abstractC5187r0);
        m20870l(abstractC5187r0);
        abstractC5187r0.mo19260f();
    }

    /* renamed from: f0 */
    private void m20879f0(C5179p0 c5179p0) {
        if (c5179p0.m20225e() == -9223372036854775807L) {
            m20877g0(c5179p0);
        } else if (this.f15635x == null || this.f15610G > 0) {
            this.f15630s.add(new C5016c(c5179p0));
        } else {
            C5016c c5016c = new C5016c(c5179p0);
            if (!m20892V(c5016c)) {
                c5179p0.m20219k(false);
                return;
            }
            this.f15630s.add(c5016c);
            Collections.sort(this.f15630s);
        }
    }

    /* renamed from: g */
    private void m20878g() {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        boolean z4;
        long mo18895c = this.f15631t.mo18895c();
        m20913D0();
        int i2 = this.f15634w.f15974f;
        if (i2 == 1 || i2 == 4) {
            this.f15621j.mo18750e(2);
            return;
        }
        C5094h0 m20537n = this.f15632u.m20537n();
        if (m20537n == null) {
            m20888Z(mo18895c, 10L);
            return;
        }
        C5511f0.m18893a("doSomeWork");
        m20911E0();
        if (m20537n.f15936d) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            m20537n.f15933a.mo19747u(this.f15634w.f15982n - this.f15626o, this.f15627p);
            int i3 = 0;
            z2 = true;
            boolean z5 = true;
            while (true) {
                z = z5;
                AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
                if (i3 >= abstractC5187r0Arr.length) {
                    break;
                }
                AbstractC5187r0 abstractC5187r0 = abstractC5187r0Arr[i3];
                if (abstractC5187r0.getState() == 0) {
                    z4 = z2;
                    z3 = z;
                } else {
                    abstractC5187r0.mo18504q(this.f15612I, elapsedRealtime * 1000);
                    boolean z6 = z2 && abstractC5187r0.mo18506c();
                    boolean z7 = m20537n.f15935c[i3] != abstractC5187r0.mo19259g();
                    boolean z8 = z7 || (!z7 && m20537n.m20573j() != null && abstractC5187r0.mo19257j()) || abstractC5187r0.mo18505e() || abstractC5187r0.mo18506c();
                    boolean z9 = z && z8;
                    z4 = z6;
                    z3 = z9;
                    if (!z8) {
                        abstractC5187r0.mo19250t();
                        z3 = z9;
                        z4 = z6;
                    }
                }
                i3++;
                z2 = z4;
                z5 = z3;
            }
        } else {
            m20537n.f15933a.mo19755l();
            z2 = true;
            z = true;
        }
        long j = m20537n.f15938f.f15952e;
        if (z2 && m20537n.f15936d && ((j == -9223372036854775807L || j <= this.f15634w.f15982n) && m20537n.f15938f.f15954g)) {
            m20852u0(4);
            m20919A0();
        } else if (this.f15634w.f15974f == 2 && m20846x0(z)) {
            m20852u0(3);
            if (this.f15604A) {
                m20844y0();
            }
        } else if (this.f15634w.f15974f == 3 && (this.f15636y.length != 0 ? !z : !m20916C())) {
            this.f15605B = this.f15604A;
            m20852u0(2);
            m20919A0();
        }
        if (this.f15634w.f15974f == 2) {
            for (AbstractC5187r0 abstractC5187r02 : this.f15636y) {
                abstractC5187r02.mo19250t();
            }
        }
        if ((this.f15604A && this.f15634w.f15974f == 3) || (i = this.f15634w.f15974f) == 2) {
            m20888Z(mo18895c, 10L);
        } else if (this.f15636y.length == 0 || i == 4) {
            this.f15621j.mo18750e(2);
        } else {
            m20888Z(mo18895c, 1000L);
        }
        C5511f0.m18891c();
    }

    /* renamed from: g0 */
    private void m20877g0(C5179p0 c5179p0) {
        if (c5179p0.m20227c().getLooper() != this.f15621j.mo18748g()) {
            this.f15621j.mo18749f(16, c5179p0).sendToTarget();
            return;
        }
        m20882e(c5179p0);
        int i = this.f15634w.f15974f;
        if (i != 3 && i != 2) {
            return;
        }
        this.f15621j.mo18753b(2);
    }

    /* renamed from: h */
    private void m20876h(int i, boolean z, int i2) {
        C5094h0 m20537n = this.f15632u.m20537n();
        AbstractC5187r0 abstractC5187r0 = this.f15615d[i];
        this.f15636y[i2] = abstractC5187r0;
        if (abstractC5187r0.getState() == 0) {
            C5414i m20568o = m20537n.m20568o();
            C5416u0 c5416u0 = m20568o.f17390b[i];
            Format[] m20866n = m20866n(m20568o.f17391c.m19279a(i));
            boolean z2 = this.f15604A && this.f15634w.f15974f == 3;
            abstractC5187r0.mo19256k(c5416u0, m20866n, m20537n.f15935c[i], this.f15612I, !z && z2, m20537n.m20571l());
            this.f15628q.m18328b(abstractC5187r0);
            if (!z2) {
                return;
            }
            abstractC5187r0.start();
        }
    }

    /* renamed from: h0 */
    private void m20875h0(final C5179p0 c5179p0) {
        Handler m20227c = c5179p0.m20227c();
        if (m20227c.getLooper().getThread().isAlive()) {
            m20227c.post(new Runnable() { // from class: com.google.android.exoplayer2.p
                @Override // java.lang.Runnable
                public final void run() {
                    C5013d0.this.m20912E(c5179p0);
                }
            });
            return;
        }
        C5526o.m18742f("TAG", "Trying to send message on a dead thread.");
        c5179p0.m20219k(false);
    }

    /* renamed from: i */
    private void m20874i(boolean[] zArr, int i) {
        this.f15636y = new AbstractC5187r0[i];
        C5414i m20568o = this.f15632u.m20537n().m20568o();
        for (int i2 = 0; i2 < this.f15615d.length; i2++) {
            if (!m20568o.m19271c(i2)) {
                this.f15615d[i2].mo19261a();
            }
        }
        int i3 = 0;
        int i4 = 0;
        while (i4 < this.f15615d.length) {
            int i5 = i3;
            if (m20568o.m19271c(i4)) {
                m20876h(i4, zArr[i4], i3);
                i5 = i3 + 1;
            }
            i4++;
            i3 = i5;
        }
    }

    /* renamed from: i0 */
    private void m20873i0(C5102l0 c5102l0, boolean z) {
        this.f15621j.mo18752c(17, z ? 1 : 0, 0, c5102l0).sendToTarget();
    }

    /* renamed from: j0 */
    private void m20872j0() {
        AbstractC5187r0[] abstractC5187r0Arr;
        for (AbstractC5187r0 abstractC5187r0 : this.f15615d) {
            if (abstractC5187r0.mo19259g() != null) {
                abstractC5187r0.mo19255l();
            }
        }
    }

    /* renamed from: k0 */
    private void m20871k0(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC5187r0[] abstractC5187r0Arr;
        if (this.f15609F != z) {
            this.f15609F = z;
            if (!z) {
                for (AbstractC5187r0 abstractC5187r0 : this.f15615d) {
                    if (abstractC5187r0.getState() == 0) {
                        abstractC5187r0.mo19261a();
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

    /* renamed from: l */
    private void m20870l(AbstractC5187r0 abstractC5187r0) {
        if (abstractC5187r0.getState() == 2) {
            abstractC5187r0.stop();
        }
    }

    /* renamed from: m */
    private String m20868m(ExoPlaybackException exoPlaybackException) {
        if (exoPlaybackException.type != 1) {
            return "Playback error.";
        }
        return "Renderer error: index=" + exoPlaybackException.rendererIndex + ", type=" + C5515h0.m18856P(this.f15615d[exoPlaybackException.rendererIndex].mo19258i()) + ", format=" + exoPlaybackException.rendererFormat + ", rendererSupport=" + C5191s0.m20190e(exoPlaybackException.rendererFormatSupport);
    }

    /* renamed from: m0 */
    private void m20867m0(boolean z) {
        this.f15605B = false;
        this.f15604A = z;
        if (!z) {
            m20919A0();
            m20911E0();
            return;
        }
        int i = this.f15634w.f15974f;
        if (i == 3) {
            m20844y0();
            this.f15621j.mo18753b(2);
        } else if (i != 2) {
        } else {
            this.f15621j.mo18753b(2);
        }
    }

    /* renamed from: n */
    private static Format[] m20866n(AbstractC5408f abstractC5408f) {
        int length = abstractC5408f != null ? abstractC5408f.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = abstractC5408f.mo19292d(i);
        }
        return formatArr;
    }

    /* renamed from: o0 */
    private void m20864o0(C5102l0 c5102l0) {
        this.f15628q.mo18322h(c5102l0);
        m20873i0(this.f15628q.mo18326d(), true);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: p */
    private long m20863p() {
        C5094h0 m20536o = this.f15632u.m20536o();
        if (m20536o == null) {
            return 0L;
        }
        char m20571l = m20536o.m20571l();
        if (!m20536o.f15936d) {
            return m20571l;
        }
        int i = 0;
        while (true) {
            AbstractC5187r0[] abstractC5187r0Arr = this.f15615d;
            if (i >= abstractC5187r0Arr.length) {
                return m20571l;
            }
            char c = m20571l;
            if (abstractC5187r0Arr[i].getState() != 0) {
                if (this.f15615d[i].mo19259g() != m20536o.f15935c[i]) {
                    c = m20571l;
                } else {
                    long mo19249u = this.f15615d[i].mo19249u();
                    if (mo19249u == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    c = Math.max(mo19249u, (long) m20571l);
                }
            }
            i++;
            m20571l = c;
        }
    }

    /* renamed from: q */
    private Pair<Object, Long> m20861q(AbstractC5585y0 abstractC5585y0, int i, long j) {
        return abstractC5585y0.m18362j(this.f15624m, this.f15625n, i, j);
    }

    /* renamed from: q0 */
    private void m20860q0(int i) {
        this.f15607D = i;
        if (!this.f15632u.m20552C(i)) {
            m20886b0(true);
        }
        m20851v(false);
    }

    /* renamed from: r0 */
    private void m20858r0(C5579w0 c5579w0) {
        this.f15633v = c5579w0;
    }

    /* renamed from: s */
    private long m20857s() {
        return m20855t(this.f15634w.f15980l);
    }

    /* renamed from: t */
    private long m20855t(long j) {
        C5094h0 m20542i = this.f15632u.m20542i();
        if (m20542i == null) {
            return 0L;
        }
        return Math.max(0L, j - m20542i.m20558y(this.f15612I));
    }

    /* renamed from: t0 */
    private void m20854t0(boolean z) {
        this.f15608E = z;
        if (!this.f15632u.m20551D(z)) {
            m20886b0(true);
        }
        m20851v(false);
    }

    /* renamed from: u */
    private void m20853u(AbstractC5292u abstractC5292u) {
        if (!this.f15632u.m20532s(abstractC5292u)) {
            return;
        }
        this.f15632u.m20531t(this.f15612I);
        m20910F();
    }

    /* renamed from: u0 */
    private void m20852u0(int i) {
        C5100k0 c5100k0 = this.f15634w;
        if (c5100k0.f15974f != i) {
            this.f15634w = c5100k0.m20520e(i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: v */
    private void m20851v(boolean z) {
        C5094h0 m20542i = this.f15632u.m20542i();
        AbstractC5294v.C5295a c5295a = m20542i == null ? this.f15634w.f15971c : m20542i.f15938f.f15948a;
        boolean z2 = !this.f15634w.f15979k.equals(c5295a);
        if (z2) {
            this.f15634w = this.f15634w.m20523b(c5295a);
        }
        C5100k0 c5100k0 = this.f15634w;
        c5100k0.f15980l = m20542i == null ? c5100k0.f15982n : m20542i.m20574i();
        this.f15634w.f15981m = m20857s();
        if ((z2 || z) && m20542i != null && m20542i.f15936d) {
            m20915C0(m20542i.m20569n(), m20542i.m20568o());
        }
    }

    /* renamed from: v0 */
    private boolean m20850v0() {
        C5094h0 m20537n;
        C5094h0 m20573j;
        boolean z = false;
        if (!this.f15604A || (m20537n = this.f15632u.m20537n()) == null || (m20573j = m20537n.m20573j()) == null) {
            return false;
        }
        if (m20537n == this.f15632u.m20536o() && !m20920A()) {
            return false;
        }
        if (this.f15612I >= m20573j.m20570m()) {
            z = true;
        }
        return z;
    }

    /* renamed from: w */
    private void m20849w(AbstractC5292u abstractC5292u) {
        if (!this.f15632u.m20532s(abstractC5292u)) {
            return;
        }
        C5094h0 m20542i = this.f15632u.m20542i();
        m20542i.m20567p(this.f15628q.mo18326d().f15985b, this.f15634w.f15970b);
        m20915C0(m20542i.m20569n(), m20542i.m20568o());
        if (m20542i == this.f15632u.m20537n()) {
            m20893U(m20542i.f15938f.f15949b);
            m20909F0(null);
        }
        m20910F();
    }

    /* renamed from: w0 */
    private boolean m20848w0() {
        if (!m20918B()) {
            return false;
        }
        return this.f15619h.mo18376g(m20855t(this.f15632u.m20542i().m20572k()), this.f15628q.mo18326d().f15985b);
    }

    /* renamed from: x */
    private void m20847x(C5102l0 c5102l0, boolean z) {
        AbstractC5187r0[] abstractC5187r0Arr;
        this.f15623l.obtainMessage(1, z ? 1 : 0, 0, c5102l0).sendToTarget();
        m20907G0(c5102l0.f15985b);
        for (AbstractC5187r0 abstractC5187r0 : this.f15615d) {
            if (abstractC5187r0 != null) {
                abstractC5187r0.mo19251s(c5102l0.f15985b);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
        if (r6.f15619h.mo18377f(m20857s(), r6.f15628q.mo18326d().f15985b, r6.f15605B) != false) goto L22;
     */
    /* renamed from: x0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m20846x0(boolean r7) {
        /*
            r6 = this;
            r0 = r6
            com.google.android.exoplayer2.r0[] r0 = r0.f15636y
            int r0 = r0.length
            if (r0 != 0) goto Ld
            r0 = r6
            boolean r0 = r0.m20916C()
            return r0
        Ld:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L15
            r0 = 0
            return r0
        L15:
            r0 = r6
            com.google.android.exoplayer2.k0 r0 = r0.f15634w
            boolean r0 = r0.f15976h
            if (r0 != 0) goto L21
            r0 = 1
            return r0
        L21:
            r0 = r6
            com.google.android.exoplayer2.j0 r0 = r0.f15632u
            com.google.android.exoplayer2.h0 r0 = r0.m20542i()
            r9 = r0
            r0 = r9
            boolean r0 = r0.m20566q()
            if (r0 == 0) goto L40
            r0 = r9
            com.google.android.exoplayer2.i0 r0 = r0.f15938f
            boolean r0 = r0.f15954g
            if (r0 == 0) goto L40
            r0 = 1
            r10 = r0
            goto L43
        L40:
            r0 = 0
            r10 = r0
        L43:
            r0 = r10
            if (r0 != 0) goto L68
            r0 = r8
            r7 = r0
            r0 = r6
            com.google.android.exoplayer2.g0 r0 = r0.f15619h
            r1 = r6
            long r1 = r1.m20857s()
            r2 = r6
            com.google.android.exoplayer2.z r2 = r2.f15628q
            com.google.android.exoplayer2.l0 r2 = r2.mo18326d()
            float r2 = r2.f15985b
            r3 = r6
            boolean r3 = r3.f15605B
            boolean r0 = r0.mo18377f(r1, r2, r3)
            if (r0 == 0) goto L6a
        L68:
            r0 = 1
            r7 = r0
        L6a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.m20846x0(boolean):boolean");
    }

    /* renamed from: y */
    private void m20845y() {
        if (this.f15634w.f15974f != 1) {
            m20852u0(4);
        }
        m20894T(false, false, true, false, true);
    }

    /* renamed from: y0 */
    private void m20844y0() {
        this.f15605B = false;
        this.f15628q.m18324f();
        for (AbstractC5187r0 abstractC5187r0 : this.f15636y) {
            abstractC5187r0.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* renamed from: z */
    private void m20843z(C5015b c5015b) {
        char c;
        AbstractC5294v.C5295a c5295a;
        if (c5015b.f15638a != this.f15635x) {
            return;
        }
        this.f15629r.m20835e(this.f15610G);
        this.f15610G = 0;
        AbstractC5585y0 abstractC5585y0 = this.f15634w.f15970b;
        AbstractC5585y0 abstractC5585y02 = c5015b.f15639b;
        this.f15632u.m20526y(abstractC5585y02);
        this.f15634w = this.f15634w.m20519f(abstractC5585y02);
        m20891W();
        AbstractC5294v.C5295a c5295a2 = this.f15634w.f15971c;
        char c2 = c5295a2.m19842a() ? this.f15634w.f15973e : this.f15634w.f15982n;
        C5018e c5018e = this.f15611H;
        if (c5018e != null) {
            Pair<Object, Long> m20890X = m20890X(c5018e, true);
            this.f15611H = null;
            if (m20890X == null) {
                m20845y();
                return;
            } else {
                c = ((Long) m20890X.second).longValue();
                c5295a = this.f15632u.m20529v(m20890X.first, c);
            }
        } else if (c2 == -9223372036854775807L && !abstractC5585y02.m18358q()) {
            Pair<Object, Long> m20861q = m20861q(abstractC5585y02, abstractC5585y02.m18368a(this.f15608E), -9223372036854775807L);
            c5295a = this.f15632u.m20529v(m20861q.first, ((Long) m20861q.second).longValue());
            c = !c5295a.m19842a() ? ((Long) m20861q.second).longValue() : c2;
        } else if (abstractC5585y02.mo18356b(c5295a2.f16780a) == -1) {
            Object m20889Y = m20889Y(c5295a2.f16780a, abstractC5585y0, abstractC5585y02);
            if (m20889Y == null) {
                m20845y();
                return;
            }
            Pair<Object, Long> m20861q2 = m20861q(abstractC5585y02, abstractC5585y02.m18363h(m20889Y, this.f15625n).f18176c, -9223372036854775807L);
            c = ((Long) m20861q2.second).longValue();
            c5295a = this.f15632u.m20529v(m20861q2.first, c);
        } else {
            AbstractC5294v.C5295a m20529v = this.f15632u.m20529v(this.f15634w.f15971c.f16780a, c2);
            c5295a = m20529v;
            if (!this.f15634w.f15971c.m19842a()) {
                c5295a = m20529v;
                if (!m20529v.m19842a()) {
                    c5295a = this.f15634w.f15971c;
                }
            }
            c = c2;
        }
        if (!this.f15634w.f15971c.equals(c5295a) || c2 != c) {
            C5094h0 m20537n = this.f15632u.m20537n();
            if (m20537n != null) {
                while (m20537n.m20573j() != null) {
                    C5094h0 m20573j = m20537n.m20573j();
                    m20537n = m20573j;
                    if (m20573j.f15938f.f15948a.equals(c5295a)) {
                        m20573j.f15938f = this.f15632u.m20535p(m20573j.f15938f);
                        m20537n = m20573j;
                    }
                }
            }
            this.f15634w = m20884d(c5295a, m20883d0(c5295a, c5295a.m19842a() ? (char) 0 : c), c);
        } else if (!this.f15632u.m20553B(this.f15612I, m20863p())) {
            m20886b0(false);
        }
        m20851v(false);
    }

    /* renamed from: z0 */
    private void m20842z0(boolean z, boolean z2, boolean z3) {
        m20894T(z || !this.f15609F, true, z2, z2, z2);
        this.f15629r.m20835e(this.f15610G + (z3 ? 1 : 0));
        this.f15610G = 0;
        this.f15619h.mo18372k();
        m20852u0(1);
    }

    /* renamed from: N */
    public void mo19869j(AbstractC5292u abstractC5292u) {
        this.f15621j.mo18749f(10, abstractC5292u).sendToTarget();
    }

    /* renamed from: O */
    public void m20899O(AbstractC5294v abstractC5294v, boolean z, boolean z2) {
        this.f15621j.mo18752c(0, z ? 1 : 0, z2 ? 1 : 0, abstractC5294v).sendToTarget();
    }

    /* renamed from: Q */
    public void m20897Q() {
        synchronized (this) {
            if (!this.f15637z && this.f15622k.isAlive()) {
                this.f15621j.mo18753b(7);
                boolean z = false;
                while (!this.f15637z) {
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

    @Override // com.google.android.exoplayer2.source.AbstractC5294v.AbstractC5296b
    /* renamed from: a */
    public void mo19841a(AbstractC5294v abstractC5294v, AbstractC5585y0 abstractC5585y0) {
        this.f15621j.mo18749f(8, new C5015b(abstractC5294v, abstractC5585y0)).sendToTarget();
    }

    /* renamed from: a0 */
    public void m20887a0(AbstractC5585y0 abstractC5585y0, int i, long j) {
        this.f15621j.mo18749f(3, new C5018e(abstractC5585y0, i, j)).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.C5179p0.AbstractC5180a
    /* renamed from: b */
    public void mo20215b(C5179p0 c5179p0) {
        synchronized (this) {
            if (!this.f15637z && this.f15622k.isAlive()) {
                this.f15621j.mo18749f(15, c5179p0).sendToTarget();
                return;
            }
            C5526o.m18742f("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            c5179p0.m20219k(false);
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5013d0.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: l0 */
    public void m20869l0(boolean z) {
        this.f15621j.mo18754a(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: n0 */
    public void m20865n0(C5102l0 c5102l0) {
        this.f15621j.mo18749f(4, c5102l0).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u.AbstractC5293a
    /* renamed from: o */
    public void mo19849o(AbstractC5292u abstractC5292u) {
        this.f15621j.mo18749f(9, abstractC5292u).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.C5589z.AbstractC5590a
    public void onPlaybackParametersChanged(C5102l0 c5102l0) {
        m20873i0(c5102l0, false);
    }

    /* renamed from: p0 */
    public void m20862p0(int i) {
        this.f15621j.mo18754a(12, i, 0).sendToTarget();
    }

    /* renamed from: r */
    public Looper m20859r() {
        return this.f15622k.getLooper();
    }

    /* renamed from: s0 */
    public void m20856s0(boolean z) {
        this.f15621j.mo18754a(13, z ? 1 : 0, 0).sendToTarget();
    }
}
