package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.qb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qb.class */
public final class C6880qb implements Handler.Callback, AbstractC6551hg, AbstractC6664kh, AbstractC6626jg {

    /* renamed from: A */
    private int f28368A;

    /* renamed from: B */
    private long f28369B;

    /* renamed from: C */
    private int f28370C;

    /* renamed from: D */
    private C6806ob f28371D;

    /* renamed from: E */
    private long f28372E;

    /* renamed from: F */
    private C6732mb f28373F;

    /* renamed from: G */
    private C6732mb f28374G;

    /* renamed from: H */
    private C6732mb f28375H;

    /* renamed from: I */
    private AbstractC6287ac f28376I;

    /* renamed from: J */
    private boolean f28377J;

    /* renamed from: K */
    private volatile int f28378K;

    /* renamed from: L */
    private volatile int f28379L;

    /* renamed from: M */
    private final gl0 f28380M;

    /* renamed from: d */
    private final AbstractC7028ub[] f28381d;

    /* renamed from: f */
    private final AbstractC6701lh f28383f;

    /* renamed from: g */
    private final C6813oi f28384g;

    /* renamed from: h */
    private final Handler f28385h;

    /* renamed from: i */
    private final HandlerThread f28386i;

    /* renamed from: j */
    private final Handler f28387j;

    /* renamed from: k */
    private final AbstractC6583ib f28388k;

    /* renamed from: l */
    private final C7213zb f28389l;

    /* renamed from: m */
    private final C7176yb f28390m;

    /* renamed from: n */
    private C6769nb f28391n;

    /* renamed from: o */
    private C6991tb f28392o;

    /* renamed from: p */
    private AbstractC7028ub f28393p;

    /* renamed from: q */
    private AbstractC6516gi f28394q;

    /* renamed from: r */
    private AbstractC6663kg f28395r;

    /* renamed from: s */
    private AbstractC7028ub[] f28396s;

    /* renamed from: t */
    private boolean f28397t;

    /* renamed from: u */
    private boolean f28398u;

    /* renamed from: v */
    private boolean f28399v;

    /* renamed from: w */
    private boolean f28400w;

    /* renamed from: z */
    private int f28403z;

    /* renamed from: y */
    private int f28402y = 0;

    /* renamed from: x */
    private int f28401x = 1;

    /* renamed from: e */
    private final AbstractC7065vb[] f28382e = new AbstractC7065vb[2];

    public C6880qb(AbstractC7028ub[] abstractC7028ubArr, AbstractC6701lh abstractC6701lh, gl0 gl0Var, boolean z, int i, Handler handler, C6769nb c6769nb, AbstractC6583ib abstractC6583ib, byte[] bArr) {
        this.f28381d = abstractC7028ubArr;
        this.f28383f = abstractC6701lh;
        this.f28380M = gl0Var;
        this.f28398u = z;
        this.f28387j = handler;
        this.f28391n = c6769nb;
        this.f28388k = abstractC6583ib;
        for (int i2 = 0; i2 < 2; i2++) {
            abstractC7028ubArr[i2].mo10370C(i2);
            this.f28382e[i2] = abstractC7028ubArr[i2].mo10364b();
        }
        this.f28384g = new C6813oi();
        this.f28396s = new AbstractC7028ub[0];
        this.f28389l = new C7213zb();
        this.f28390m = new C7176yb();
        abstractC6701lh.m13517c(this);
        this.f28392o = C6991tb.f29879a;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f28386i = handlerThread;
        handlerThread.start();
        this.f28385h = new Handler(handlerThread.getLooper(), this);
    }

    /* renamed from: B */
    private final void m11996B(int i) {
        if (this.f28401x != i) {
            this.f28401x = i;
            this.f28387j.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    /* renamed from: C */
    private final void m11995C(boolean z) {
        if (this.f28400w != z) {
            this.f28400w = z;
            this.f28387j.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    /* renamed from: D */
    private final void m11994D() {
        this.f28399v = false;
        this.f28384g.m12657a();
        for (AbstractC7028ub abstractC7028ub : this.f28396s) {
            abstractC7028ub.zzg();
        }
    }

    /* renamed from: E */
    private final void m11993E() {
        this.f28384g.m12656b();
        for (AbstractC7028ub abstractC7028ub : this.f28396s) {
            m11970p(abstractC7028ub);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: F */
    private final void m11992F() {
        C6732mb c6732mb = this.f28375H;
        if (c6732mb == null) {
            return;
        }
        char mo13561l = c6732mb.f26506a.mo13561l();
        if (mo13561l != -9223372036854775807L) {
            m11989I(mo13561l);
        } else {
            AbstractC7028ub abstractC7028ub = this.f28393p;
            if (abstractC7028ub == null || abstractC7028ub.mo9285z()) {
                this.f28372E = this.f28384g.mo9286o();
            } else {
                long mo9286o = this.f28394q.mo9286o();
                this.f28372E = mo9286o;
                this.f28384g.m12655c(mo9286o);
            }
            C6732mb c6732mb2 = this.f28375H;
            mo13561l = this.f28372E - (c6732mb2.f26511f - c6732mb2.f26513h);
        }
        this.f28391n.f27054c = mo13561l;
        this.f28369B = SystemClock.elapsedRealtime() * 1000;
        char mo13562k = this.f28396s.length == 0 ? (char) 0 : this.f28375H.f26506a.mo13562k();
        C6769nb c6769nb = this.f28391n;
        char c = mo13562k;
        if (mo13562k == Long.MIN_VALUE) {
            c = this.f28376I.mo9297d(this.f28375H.f26512g, this.f28390m, false).f32457c;
        }
        c6769nb.f27055d = c;
    }

    /* renamed from: G */
    private final void m11991G(long j, long j2) {
        this.f28385h.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f28385h.sendEmptyMessage(2);
        } else {
            this.f28385h.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: H */
    private final long m11990H(int i, long j) {
        C6732mb c6732mb;
        char c;
        m11993E();
        this.f28399v = false;
        m11996B(2);
        C6732mb c6732mb2 = this.f28375H;
        if (c6732mb2 != null) {
            C6732mb c6732mb3 = null;
            while (true) {
                c6732mb = c6732mb3;
                if (c6732mb2 == null) {
                    break;
                }
                if (c6732mb2.f26512g != i || !c6732mb2.f26515j) {
                    c6732mb2.m13310e();
                } else {
                    c6732mb3 = c6732mb2;
                }
                c6732mb2 = c6732mb2.f26517l;
            }
        } else {
            C6732mb c6732mb4 = this.f28373F;
            if (c6732mb4 != null) {
                c6732mb4.m13310e();
            }
            c6732mb = null;
        }
        C6732mb c6732mb5 = this.f28375H;
        if (c6732mb5 != c6732mb || c6732mb5 != this.f28374G) {
            for (AbstractC7028ub abstractC7028ub : this.f28396s) {
                abstractC7028ub.mo10359l();
            }
            this.f28396s = new AbstractC7028ub[0];
            this.f28394q = null;
            this.f28393p = null;
            this.f28375H = null;
        }
        if (c6732mb != null) {
            c6732mb.f26517l = null;
            this.f28373F = c6732mb;
            this.f28374G = c6732mb;
            m11972n(c6732mb);
            C6732mb c6732mb6 = this.f28375H;
            char c2 = j;
            if (c6732mb6.f26516k) {
                c2 = c6732mb6.f26506a.mo13565e(j);
            }
            m11989I(c2);
            m11973m();
            c = c2;
        } else {
            this.f28373F = null;
            this.f28374G = null;
            this.f28375H = null;
            m11989I(j);
            c = j;
        }
        this.f28385h.sendEmptyMessage(2);
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* renamed from: I */
    private final void m11989I(long j) {
        C6732mb c6732mb = this.f28375H;
        char c = c6732mb == null ? j + 60000000 : j + (c6732mb.f26511f - c6732mb.f26513h);
        this.f28372E = c;
        this.f28384g.m12655c(c);
        for (AbstractC7028ub abstractC7028ub : this.f28396s) {
            abstractC7028ub.mo10369D(this.f28372E);
        }
    }

    /* renamed from: J */
    private final void m11988J() {
        m11987K(true);
        this.f28380M.m14910c();
        m11996B(1);
    }

    /* renamed from: K */
    private final void m11987K(boolean z) {
        AbstractC7028ub[] abstractC7028ubArr;
        this.f28385h.removeMessages(2);
        this.f28399v = false;
        this.f28384g.m12656b();
        this.f28394q = null;
        this.f28393p = null;
        this.f28372E = 60000000L;
        for (AbstractC7028ub abstractC7028ub : this.f28396s) {
            try {
                m11970p(abstractC7028ub);
                abstractC7028ub.mo10359l();
            } catch (zzamy | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.f28396s = new AbstractC7028ub[0];
        C6732mb c6732mb = this.f28375H;
        C6732mb c6732mb2 = c6732mb;
        if (c6732mb == null) {
            c6732mb2 = this.f28373F;
        }
        m11969q(c6732mb2);
        this.f28373F = null;
        this.f28374G = null;
        this.f28375H = null;
        m11995C(false);
        if (z) {
            AbstractC6663kg abstractC6663kg = this.f28395r;
            if (abstractC6663kg != null) {
                abstractC6663kg.mo12917e();
                this.f28395r = null;
            }
            this.f28376I = null;
        }
    }

    /* renamed from: L */
    private final boolean m11986L(long j) {
        boolean z = false;
        if (j != -9223372036854775807L && this.f28391n.f27054c >= j) {
            C6732mb c6732mb = this.f28375H.f26517l;
            if (c6732mb != null) {
                if (!c6732mb.f26515j) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: M */
    private final void m11985M() {
        C6732mb c6732mb = this.f28373F;
        if (c6732mb == null || c6732mb.f26515j) {
            return;
        }
        C6732mb c6732mb2 = this.f28374G;
        if (c6732mb2 != null && c6732mb2.f26517l != c6732mb) {
            return;
        }
        for (AbstractC7028ub abstractC7028ub : this.f28396s) {
            if (!abstractC7028ub.mo10363g()) {
                return;
            }
        }
        this.f28373F.f26506a.mo13563j();
    }

    /* renamed from: c */
    private final void m11983c(Object obj, int i) {
        this.f28391n = new C6769nb(0, 0L);
        m11982d(obj, i);
        this.f28391n = new C6769nb(0, -9223372036854775807L);
        m11996B(4);
        m11987K(false);
    }

    /* renamed from: d */
    private final void m11982d(Object obj, int i) {
        this.f28387j.obtainMessage(6, new C6843pb(this.f28376I, obj, this.f28391n, i)).sendToTarget();
    }

    /* renamed from: e */
    private final int m11981e(int i, AbstractC6287ac abstractC6287ac, AbstractC6287ac abstractC6287ac2) {
        int mo9298c = abstractC6287ac.mo9298c();
        int i2 = -1;
        int i3 = i;
        for (int i4 = 0; i4 < mo9298c && i2 == -1; i4++) {
            i3 = abstractC6287ac.m16649h(i3, this.f28390m, this.f28389l, this.f28402y);
            i2 = abstractC6287ac2.mo9296e(abstractC6287ac.mo9297d(i3, this.f28390m, true).f32456b);
        }
        return i2;
    }

    /* renamed from: g */
    private final boolean m11979g(int i) {
        this.f28376I.mo9297d(i, this.f28390m, false);
        this.f28376I.m16650g(0, this.f28389l, false);
        return this.f28376I.m16649h(i, this.f28390m, this.f28389l, this.f28402y) == -1;
    }

    /* renamed from: i */
    private final Pair<Integer, Long> m11977i(C6806ob c6806ob) {
        AbstractC6287ac abstractC6287ac = c6806ob.f27481a;
        AbstractC6287ac abstractC6287ac2 = abstractC6287ac;
        if (abstractC6287ac.m16651f()) {
            abstractC6287ac2 = this.f28376I;
        }
        try {
            Pair<Integer, Long> m11975k = m11975k(abstractC6287ac2, 0, c6806ob.f27483c);
            AbstractC6287ac abstractC6287ac3 = this.f28376I;
            if (abstractC6287ac3 == abstractC6287ac2) {
                return m11975k;
            }
            if (abstractC6287ac3.mo9296e(abstractC6287ac2.mo9297d(((Integer) m11975k.first).intValue(), this.f28390m, true).f32456b) != -1) {
                return Pair.create(0, (Long) m11975k.second);
            }
            if (m11981e(((Integer) m11975k.first).intValue(), abstractC6287ac2, this.f28376I) == -1) {
                return null;
            }
            this.f28376I.mo9297d(0, this.f28390m, false);
            return m11976j(0, -9223372036854775807L);
        } catch (IndexOutOfBoundsException e) {
            throw new zzano(this.f28376I, 0, c6806ob.f27483c);
        }
    }

    /* renamed from: j */
    private final Pair<Integer, Long> m11976j(int i, long j) {
        return m11975k(this.f28376I, 0, -9223372036854775807L);
    }

    /* renamed from: k */
    private final Pair<Integer, Long> m11975k(AbstractC6287ac abstractC6287ac, int i, long j) {
        return m11974l(abstractC6287ac, 0, j, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    private final Pair<Integer, Long> m11974l(AbstractC6287ac abstractC6287ac, int i, long j, long j2) {
        C6367ci.m16040c(0, 0, abstractC6287ac.mo9300a());
        abstractC6287ac.mo9299b(0, this.f28389l, false, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            c = 0;
        }
        if (abstractC6287ac.mo9297d(0, this.f28390m, false).f32457c != -9223372036854775807L) {
        }
        return Pair.create(0, Long.valueOf(c));
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: m */
    private final void m11973m() {
        C6732mb c6732mb = this.f28373F;
        char zza = !c6732mb.f26515j ? (char) 0 : c6732mb.f26506a.zza();
        if (zza == Long.MIN_VALUE) {
            m11995C(false);
            return;
        }
        C6732mb c6732mb2 = this.f28373F;
        long j = this.f28372E - (c6732mb2.f26511f - c6732mb2.f26513h);
        boolean m14907f = this.f28380M.m14907f(zza - j);
        m11995C(m14907f);
        if (!m14907f) {
            return;
        }
        this.f28373F.f26506a.mo9595d(j);
    }

    /* renamed from: n */
    private final void m11972n(C6732mb c6732mb) {
        if (this.f28375H == c6732mb) {
            return;
        }
        boolean[] zArr = new boolean[2];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                this.f28375H = c6732mb;
                this.f28387j.obtainMessage(3, c6732mb.f26518m).sendToTarget();
                m11971o(zArr, i3);
                return;
            }
            AbstractC7028ub abstractC7028ub = this.f28381d[i];
            zArr[i] = abstractC7028ub.mo10365a() != 0;
            C6329bh m14128a = c6732mb.f26518m.f26598b.m14128a(i);
            int i4 = i3;
            if (m14128a != null) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (m14128a == null || (abstractC7028ub.mo10361i() && abstractC7028ub.zzi() == this.f28375H.f26509d[i]))) {
                if (abstractC7028ub == this.f28393p) {
                    this.f28384g.m12654d(this.f28394q);
                    this.f28394q = null;
                    this.f28393p = null;
                }
                m11970p(abstractC7028ub);
                abstractC7028ub.mo10359l();
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: o */
    private final void m11971o(boolean[] zArr, int i) {
        this.f28396s = new AbstractC7028ub[i];
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            AbstractC7028ub abstractC7028ub = this.f28381d[i3];
            C6329bh m14128a = this.f28375H.f26518m.f26598b.m14128a(i3);
            if (m14128a != null) {
                this.f28396s[i2] = abstractC7028ub;
                if (abstractC7028ub.mo10365a() == 0) {
                    C7102wb c7102wb = this.f28375H.f26518m.f26600d[i3];
                    boolean z = this.f28398u && this.f28401x == 3;
                    boolean z2 = !zArr[i3] && z;
                    m14128a.m16376b();
                    zzanm[] zzanmVarArr = new zzanm[1];
                    for (int i4 = 0; i4 <= 0; i4++) {
                        zzanmVarArr[i4] = m14128a.m16375c(i4);
                    }
                    C6732mb c6732mb = this.f28375H;
                    abstractC7028ub.mo10368E(c7102wb, zzanmVarArr, c6732mb.f26509d[i3], this.f28372E, z2, c6732mb.f26511f - c6732mb.f26513h);
                    AbstractC6516gi mo9287e = abstractC7028ub.mo9287e();
                    if (mo9287e != null) {
                        if (this.f28394q != null) {
                            throw zzamy.zzc(new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                        this.f28394q = mo9287e;
                        this.f28393p = abstractC7028ub;
                        mo9287e.mo9288d0(this.f28392o);
                    }
                    if (z) {
                        abstractC7028ub.zzg();
                    }
                }
                i2++;
            }
        }
    }

    /* renamed from: p */
    private static final void m11970p(AbstractC7028ub abstractC7028ub) {
        if (abstractC7028ub.mo10365a() == 2) {
            abstractC7028ub.mo10358n();
        }
    }

    /* renamed from: q */
    private static final void m11969q(C6732mb c6732mb) {
        while (c6732mb != null) {
            c6732mb.m13310e();
            c6732mb = c6732mb.f26517l;
        }
    }

    /* renamed from: A */
    public final void m11997A(int i) {
        this.f28379L = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6551hg
    /* renamed from: a */
    public final void mo11984a(AbstractC6589ig abstractC6589ig) {
        this.f28385h.obtainMessage(8, abstractC6589ig).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7033ug
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10332b(AbstractC6589ig abstractC6589ig) {
        this.f28385h.obtainMessage(9, abstractC6589ig).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6626jg
    /* renamed from: f */
    public final void mo11980f(AbstractC6287ac abstractC6287ac, Object obj) {
        this.f28385h.obtainMessage(7, Pair.create(abstractC6287ac, null)).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6664kh
    /* renamed from: h */
    public final void mo11978h() {
        this.f28385h.sendEmptyMessage(10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:251:0x06ec, code lost:
        if (r24 != false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x06ef, code lost:
        r0 = r16.f28375H.f26512g;
        r16.f28391n = new com.google.android.gms.internal.ads.C6769nb(r0, m11990H(r0, r16.f28391n.f27054c));
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0719, code lost:
        r16.f28373F = r23;
        r23.f26517l = null;
        m11969q(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0ee7, code lost:
        if (r27 != false) goto L509;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0ef2, code lost:
        if (m11986L(r0) != false) goto L509;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x052a A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0533 A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TRY_LEAVE, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x053d A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TRY_LEAVE, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0a28 A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TRY_LEAVE, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0a53  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0a58 A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0aad A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0aff A[LOOP:7: B:370:0x0aff->B:376:0x0b20, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0d77 A[Catch: IOException -> 0x1081, zzamy -> 0x1085, RuntimeException -> 0x1089, TRY_ENTER, TryCatch #8 {RuntimeException -> 0x1089, blocks: (B:2:0x0000, B:6:0x004e, B:9:0x0068, B:12:0x0074, B:17:0x0085, B:22:0x0094, B:24:0x00ac, B:28:0x00bc, B:31:0x00ca, B:37:0x00e3, B:43:0x00fa, B:47:0x0122, B:49:0x012d, B:51:0x013c, B:54:0x0146, B:56:0x014f, B:58:0x0174, B:62:0x0180, B:64:0x0187, B:76:0x01c8, B:85:0x01df, B:88:0x01e2, B:93:0x01f4, B:98:0x01f9, B:100:0x01fb, B:105:0x020a, B:108:0x0214, B:112:0x0220, B:117:0x023c, B:119:0x027e, B:121:0x028c, B:125:0x029b, B:131:0x02be, B:137:0x02dc, B:139:0x02e8, B:143:0x02f6, B:145:0x0302, B:147:0x030d, B:150:0x0322, B:151:0x032d, B:153:0x0336, B:154:0x034f, B:157:0x035d, B:158:0x0369, B:160:0x037a, B:162:0x039a, B:163:0x03ad, B:169:0x03c2, B:171:0x03cc, B:173:0x03df, B:175:0x03e8, B:177:0x03ee, B:179:0x0401, B:182:0x040d, B:184:0x0430, B:186:0x044b, B:188:0x0450, B:190:0x0479, B:192:0x0480, B:194:0x049e, B:195:0x04a8, B:196:0x04ce, B:198:0x04dc, B:200:0x04e3, B:201:0x04ed, B:204:0x051c, B:207:0x052a, B:210:0x0533, B:211:0x053d, B:214:0x0550, B:216:0x0562, B:217:0x056c, B:219:0x05bb, B:221:0x05c3, B:225:0x05da, B:226:0x05e3, B:227:0x0605, B:232:0x0628, B:234:0x0639, B:236:0x0641, B:238:0x0676, B:240:0x0680, B:243:0x069d, B:245:0x06b8, B:252:0x06ef, B:253:0x0719, B:255:0x072a, B:257:0x0732, B:258:0x0744, B:267:0x0756, B:269:0x0758, B:271:0x075d, B:273:0x0770, B:274:0x077c, B:276:0x0786, B:278:0x0799, B:280:0x07a8, B:281:0x07ba, B:283:0x07c6, B:284:0x0801, B:289:0x0815, B:296:0x0855, B:298:0x0873, B:304:0x0890, B:307:0x08b6, B:308:0x08da, B:309:0x08db, B:309:0x08db, B:310:0x08de, B:312:0x08e7, B:313:0x08f3, B:315:0x08fc, B:316:0x0908, B:318:0x0915, B:320:0x091c, B:322:0x0934, B:324:0x093d, B:327:0x094f, B:329:0x0967, B:331:0x0971, B:332:0x097d, B:334:0x0984, B:336:0x098f, B:338:0x09b4, B:340:0x09fe, B:342:0x0a16, B:345:0x0a28, B:346:0x0a4a, B:349:0x0a58, B:351:0x0a60, B:353:0x0aad, B:355:0x0ab4, B:356:0x0acb, B:358:0x0ad4, B:361:0x0ade, B:363:0x0ae5, B:365:0x0aec, B:366:0x0af3, B:368:0x0af9, B:371:0x0b00, B:374:0x0b10, B:376:0x0b20, B:377:0x0b63, B:383:0x0b73, B:385:0x0b8b, B:387:0x0b96, B:389:0x0ba0, B:390:0x0ba7, B:394:0x0bb6, B:398:0x0bda, B:400:0x0be3, B:401:0x0be9, B:403:0x0bf9, B:405:0x0c01, B:409:0x0c27, B:414:0x0c48, B:415:0x0c52, B:417:0x0c5c, B:419:0x0c7f, B:421:0x0c89, B:425:0x0c9b, B:426:0x0cab, B:427:0x0cd0, B:428:0x0cd7, B:429:0x0cdd, B:431:0x0ce4, B:433:0x0cf4, B:438:0x0d2f, B:440:0x0d42, B:445:0x0d54, B:447:0x0d5d, B:454:0x0d77, B:464:0x0d9b, B:466:0x0da0, B:468:0x0da8, B:470:0x0dba, B:472:0x0dd8, B:476:0x0dfb, B:479:0x0e08, B:481:0x0e11, B:482:0x0e1d, B:485:0x0e29, B:489:0x0e36, B:491:0x0e48, B:492:0x0e50, B:496:0x0e65, B:499:0x0e74, B:501:0x0e8a, B:503:0x0e90, B:504:0x0ebf, B:507:0x0eed, B:510:0x0ef6, B:512:0x0f01, B:515:0x0f0e, B:518:0x0f19, B:521:0x0f25, B:523:0x0f37, B:525:0x0f3e, B:529:0x0f4f, B:530:0x0f5e, B:532:0x0f65, B:535:0x0f6e, B:538:0x0f76, B:540:0x0f7c, B:542:0x0f89, B:543:0x0f93, B:545:0x0f9b, B:547:0x0fa2, B:549:0x0faf, B:550:0x0fb9, B:551:0x0fc1, B:551:0x0fc1, B:554:0x0fc9, B:559:0x0fd9, B:561:0x0fe9, B:563:0x0ff4, B:566:0x1000, B:569:0x1016, B:571:0x1024, B:573:0x104d, B:575:0x105f), top: B:598:0x0000 }] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r0v386, types: [long] */
    /* JADX WARN: Type inference failed for: r0v388, types: [long] */
    /* JADX WARN: Type inference failed for: r0v418, types: [long] */
    /* JADX WARN: Type inference failed for: r0v421, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r17) {
        /*
            Method dump skipped, instructions count: 4332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6880qb.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: r */
    public final void m11968r() {
        this.f28377J = true;
    }

    /* renamed from: s */
    public final void m11967s(AbstractC6663kg abstractC6663kg, boolean z) {
        this.f28385h.obtainMessage(0, 1, 0, abstractC6663kg).sendToTarget();
    }

    /* renamed from: t */
    public final void m11966t(boolean z) {
        this.f28385h.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: u */
    public final void m11965u(AbstractC6287ac abstractC6287ac, int i, long j) {
        this.f28385h.obtainMessage(3, new C6806ob(abstractC6287ac, 0, j)).sendToTarget();
    }

    /* renamed from: v */
    public final void m11964v() {
        this.f28385h.sendEmptyMessage(5);
    }

    /* renamed from: w */
    public final void m11963w(C6546hb... c6546hbArr) {
        if (this.f28397t) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.f28403z++;
        this.f28385h.obtainMessage(11, c6546hbArr).sendToTarget();
    }

    /* renamed from: x */
    public final void m11962x(C6546hb... c6546hbArr) {
        synchronized (this) {
            if (this.f28397t) {
                Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                return;
            }
            int i = this.f28403z;
            this.f28403z = i + 1;
            this.f28385h.obtainMessage(11, c6546hbArr).sendToTarget();
            while (this.f28368A <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* renamed from: y */
    public final void m11961y() {
        synchronized (this) {
            if (this.f28397t) {
                return;
            }
            this.f28385h.sendEmptyMessage(6);
            while (!this.f28397t) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.f28386i.quit();
        }
    }

    /* renamed from: z */
    public final void m11960z(int i) {
        this.f28378K = i;
    }
}
