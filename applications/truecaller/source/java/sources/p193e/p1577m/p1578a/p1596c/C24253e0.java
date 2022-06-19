package p193e.p1577m.p1578a.p1596c;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24845s0;
import p193e.p1577m.p1578a.p1596c.C24865z;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24649h;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24650i;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24695f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24776f;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24791p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24767a0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24806y;
/* renamed from: e.m.a.c.e0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/e0.class */
public final class C24253e0 implements Handler.Callback, AbstractC24529o.AbstractC24530a, AbstractC24531p.AbstractC24533b, C24865z.AbstractC24866a, C24845s0.AbstractC24846a {

    /* renamed from: A */
    public int f67237A;

    /* renamed from: B */
    public boolean f67238B;

    /* renamed from: C */
    public boolean f67239C;

    /* renamed from: D */
    public int f67240D;

    /* renamed from: E */
    public C24258e f67241E;

    /* renamed from: J */
    public long f67242J;

    /* renamed from: K */
    public int f67243K;

    /* renamed from: L */
    public boolean f67244L;

    /* renamed from: a */
    public final AbstractC24853u0[] f67245a;

    /* renamed from: b */
    public final AbstractC24852u[] f67246b;

    /* renamed from: c */
    public final AbstractC24649h f67247c;

    /* renamed from: d */
    public final C24650i f67248d;

    /* renamed from: e */
    public final AbstractC24460i0 f67249e;

    /* renamed from: f */
    public final AbstractC24695f f67250f;

    /* renamed from: g */
    public final C24767a0 f67251g;

    /* renamed from: h */
    public final HandlerThread f67252h;

    /* renamed from: i */
    public final Handler f67253i;

    /* renamed from: j */
    public final AbstractC24861y0.C24864c f67254j;

    /* renamed from: k */
    public final AbstractC24861y0.C24863b f67255k;

    /* renamed from: l */
    public final long f67256l;

    /* renamed from: m */
    public final boolean f67257m;

    /* renamed from: n */
    public final C24865z f67258n;

    /* renamed from: p */
    public final ArrayList<C24256c> f67260p;

    /* renamed from: q */
    public final AbstractC24776f f67261q;

    /* renamed from: t */
    public C24632n0 f67264t;

    /* renamed from: u */
    public AbstractC24531p f67265u;

    /* renamed from: v */
    public AbstractC24853u0[] f67266v;

    /* renamed from: w */
    public boolean f67267w;

    /* renamed from: x */
    public boolean f67268x;

    /* renamed from: y */
    public boolean f67269y;

    /* renamed from: z */
    public boolean f67270z;

    /* renamed from: r */
    public final C24510l0 f67262r = new C24510l0();

    /* renamed from: s */
    public C24859x0 f67263s = C24859x0.f69709d;

    /* renamed from: o */
    public final C24257d f67259o = new C24257d(null);

    /* renamed from: e.m.a.c.e0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e0$b.class */
    public static final class C24255b {

        /* renamed from: a */
        public final AbstractC24531p f67271a;

        /* renamed from: b */
        public final AbstractC24861y0 f67272b;

        public C24255b(AbstractC24531p abstractC24531p, AbstractC24861y0 abstractC24861y0) {
            this.f67271a = abstractC24531p;
            this.f67272b = abstractC24861y0;
        }
    }

    /* renamed from: e.m.a.c.e0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e0$c.class */
    public static final class C24256c implements Comparable<C24256c> {

        /* renamed from: a */
        public final C24845s0 f67273a;

        /* renamed from: b */
        public int f67274b;

        /* renamed from: c */
        public long f67275c;

        /* renamed from: d */
        public Object f67276d;

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
            if (r0 != null) goto L14;
         */
        @Override // java.lang.Comparable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compareTo(p193e.p1577m.p1578a.p1596c.C24253e0.C24256c r6) {
            /*
                r5 = this;
                r0 = r6
                e.m.a.c.e0$c r0 = (p193e.p1577m.p1578a.p1596c.C24253e0.C24256c) r0
                r7 = r0
                r0 = r5
                java.lang.Object r0 = r0.f67276d
                r6 = r0
                r0 = 1
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r6
                if (r0 != 0) goto L19
                r0 = 1
                r10 = r0
                goto L1c
            L19:
                r0 = 0
                r10 = r0
            L1c:
                r0 = r7
                java.lang.Object r0 = r0.f67276d
                if (r0 != 0) goto L29
                r0 = 1
                r11 = r0
                goto L2c
            L29:
                r0 = 0
                r11 = r0
            L2c:
                r0 = r10
                r1 = r11
                if (r0 == r1) goto L40
                r0 = r8
                r10 = r0
                r0 = r6
                if (r0 == 0) goto L3d
            L3a:
                r0 = -1
                r10 = r0
            L3d:
                goto L8c
            L40:
                r0 = r6
                if (r0 != 0) goto L4b
                r0 = r9
                r10 = r0
                goto L8c
            L4b:
                r0 = r5
                int r0 = r0.f67274b
                r1 = r7
                int r1 = r1.f67274b
                int r0 = r0 - r1
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L5e
                goto L8c
            L5e:
                r0 = r5
                long r0 = r0.f67275c
                r12 = r0
                r0 = r7
                long r0 = r0.f67275c
                r14 = r0
                int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
                r10 = r0
                r0 = r12
                r1 = r14
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r11 = r0
                r0 = r11
                if (r0 >= 0) goto L7e
                goto L3a
            L7e:
                r0 = r8
                r10 = r0
                r0 = r11
                if (r0 != 0) goto L3d
                r0 = 0
                r10 = r0
                goto L3d
            L8c:
                r0 = r10
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.C24256c.compareTo(java.lang.Object):int");
        }
    }

    /* renamed from: e.m.a.c.e0$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e0$d.class */
    public static final class C24257d {

        /* renamed from: a */
        public C24632n0 f67277a;

        /* renamed from: b */
        public int f67278b;

        /* renamed from: c */
        public boolean f67279c;

        /* renamed from: d */
        public int f67280d;

        public C24257d(C24254a c24254a) {
        }

        /* renamed from: a */
        public void m5332a(int i) {
            this.f67278b += i;
        }

        /* renamed from: b */
        public void m5331b(int i) {
            boolean z = true;
            if (!this.f67279c || this.f67280d == 4) {
                this.f67279c = true;
                this.f67280d = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C26232y.m2310r(z);
        }
    }

    /* renamed from: e.m.a.c.e0$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e0$e.class */
    public static final class C24258e {

        /* renamed from: a */
        public final AbstractC24861y0 f67281a;

        /* renamed from: b */
        public final int f67282b;

        /* renamed from: c */
        public final long f67283c;

        public C24258e(AbstractC24861y0 abstractC24861y0, int i, long j) {
            this.f67281a = abstractC24861y0;
            this.f67282b = i;
            this.f67283c = j;
        }
    }

    public C24253e0(AbstractC24853u0[] abstractC24853u0Arr, AbstractC24649h abstractC24649h, C24650i c24650i, AbstractC24460i0 abstractC24460i0, AbstractC24695f abstractC24695f, boolean z, int i, boolean z2, Handler handler, AbstractC24776f abstractC24776f) {
        this.f67245a = abstractC24853u0Arr;
        this.f67247c = abstractC24649h;
        this.f67248d = c24650i;
        this.f67249e = abstractC24460i0;
        this.f67250f = abstractC24695f;
        this.f67268x = z;
        this.f67237A = i;
        this.f67238B = z2;
        this.f67253i = handler;
        this.f67261q = abstractC24776f;
        this.f67256l = abstractC24460i0.mo4377e();
        this.f67257m = abstractC24460i0.mo4381a();
        this.f67264t = C24632n0.m4806d(-9223372036854775807L, c24650i);
        this.f67246b = new AbstractC24852u[abstractC24853u0Arr.length];
        for (int i2 = 0; i2 < abstractC24853u0Arr.length; i2++) {
            abstractC24853u0Arr[i2].mo4398d(i2);
            this.f67246b[i2] = abstractC24853u0Arr[i2].mo4386q();
        }
        this.f67258n = new C24865z(this, abstractC24776f);
        this.f67260p = new ArrayList<>();
        this.f67266v = new AbstractC24853u0[0];
        this.f67254j = new AbstractC24861y0.C24864c();
        this.f67255k = new AbstractC24861y0.C24863b();
        abstractC24649h.f69029a = abstractC24695f;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f67252h = handlerThread;
        handlerThread.start();
        this.f67251g = abstractC24776f.mo4500c(handlerThread.getLooper(), this);
        this.f67244L = true;
    }

    /* renamed from: h */
    public static Format[] m5350h(AbstractC24645f abstractC24645f) {
        int length = abstractC24645f != null ? abstractC24645f.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = abstractC24645f.mo4795h(i);
        }
        return formatArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0229  */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5379A(boolean r23, boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5379A(boolean, boolean, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [e.m.a.c.q1.y] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: B */
    public final void m5378B(long j) throws C24189b0 {
        AbstractC24645f[] m4793a;
        C24477j0 c24477j0 = this.f67262r.f68441g;
        ?? r6 = j;
        if (c24477j0 != null) {
            r6 = j + c24477j0.f68342n;
        }
        this.f67242J = r6;
        this.f67258n.f69743a.m4504a(r6);
        for (AbstractC24853u0 abstractC24853u0 : this.f67266v) {
            abstractC24853u0.mo4391l(this.f67242J);
        }
        C24477j0 c24477j02 = this.f67262r.f68441g;
        while (true) {
            C24477j0 c24477j03 = c24477j02;
            if (c24477j03 != null) {
                for (AbstractC24645f abstractC24645f : c24477j03.f68341m.f69032c.m4793a()) {
                    if (abstractC24645f != null) {
                        abstractC24645f.mo4798e();
                    }
                }
                c24477j02 = c24477j03.f68339k;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
        if (r0.mo4361b(r0.first) != (-1)) goto L13;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5377C(p193e.p1577m.p1578a.p1596c.C24253e0.C24256c r8) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5377C(e.m.a.c.e0$c):boolean");
    }

    /* renamed from: D */
    public final Pair<Object, Long> m5376D(C24258e c24258e, boolean z) {
        Object m5375E;
        AbstractC24861y0 abstractC24861y0 = this.f67264t.f68994a;
        AbstractC24861y0 abstractC24861y02 = c24258e.f67281a;
        if (abstractC24861y0.m4362p()) {
            return null;
        }
        AbstractC24861y0 abstractC24861y03 = abstractC24861y02;
        if (abstractC24861y02.m4362p()) {
            abstractC24861y03 = abstractC24861y0;
        }
        try {
            Pair<Object, Long> m4365j = abstractC24861y03.m4365j(this.f67254j, this.f67255k, c24258e.f67282b, c24258e.f67283c);
            if (abstractC24861y0 != abstractC24861y03 && abstractC24861y0.mo4361b(m4365j.first) == -1) {
                if (z && (m5375E = m5375E(m4365j.first, abstractC24861y03, abstractC24861y0)) != null) {
                    return m5349j(abstractC24861y0, abstractC24861y0.mo4360g(abstractC24861y0.mo4361b(m5375E), this.f67255k, true).f69727b, -9223372036854775807L);
                }
                return null;
            }
            return m4365j;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: E */
    public final Object m5375E(Object obj, AbstractC24861y0 abstractC24861y0, AbstractC24861y0 abstractC24861y02) {
        int mo4361b = abstractC24861y0.mo4361b(obj);
        int mo4359i = abstractC24861y0.mo4359i();
        int i = -1;
        for (int i2 = 0; i2 < mo4359i && i == -1; i2++) {
            mo4361b = abstractC24861y0.m4369d(mo4361b, this.f67255k, this.f67254j, this.f67237A, this.f67238B);
            if (mo4361b == -1) {
                break;
            }
            i = abstractC24861y02.mo4361b(abstractC24861y0.mo4358l(mo4361b));
        }
        return i == -1 ? null : abstractC24861y02.mo4358l(i);
    }

    /* renamed from: F */
    public final void m5374F(long j, long j2) {
        this.f67251g.f69416a.removeMessages(2);
        this.f67251g.f69416a.sendEmptyMessageAtTime(2, j + j2);
    }

    /* renamed from: G */
    public final void m5373G(boolean z) throws C24189b0 {
        AbstractC24531p.C24532a c24532a = this.f67262r.f68441g.f68334f.f68415a;
        long m5371I = m5371I(c24532a, this.f67264t.f69006m, true);
        if (m5371I != this.f67264t.f69006m) {
            this.f67264t = m5355b(c24532a, m5371I, this.f67264t.f68997d);
            if (!z) {
                return;
            }
            this.f67259o.m5331b(4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5372H(p193e.p1577m.p1578a.p1596c.C24253e0.C24258e r9) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5372H(e.m.a.c.e0$e):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
        if ((r12.f68342n + r8) < 0) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0111  */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m5371I(p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p.C24532a r7, long r8, boolean r10) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5371I(e.m.a.c.l1.p$a, long, boolean):long");
    }

    /* renamed from: J */
    public final void m5370J(C24845s0 c24845s0) throws C24189b0 {
        if (c24845s0.f69683f.getLooper() != this.f67251g.f69416a.getLooper()) {
            this.f67251g.m4640c(16, c24845s0).sendToTarget();
            return;
        }
        m5354c(c24845s0);
        int i = this.f67264t.f68998e;
        if (i != 3 && i != 2) {
            return;
        }
        this.f67251g.m4639d(2);
    }

    /* renamed from: K */
    public final void m5369K(final C24845s0 c24845s0) {
        Handler handler = c24845s0.f69683f;
        if (!handler.getLooper().getThread().isAlive()) {
            c24845s0.m4421b(false);
        } else {
            handler.post(new Runnable() { // from class: e.m.a.c.p
                @Override // java.lang.Runnable
                public final void run() {
                    C24253e0 c24253e0 = C24253e0.this;
                    C24845s0 c24845s02 = c24845s0;
                    Objects.requireNonNull(c24253e0);
                    try {
                        c24253e0.m5354c(c24845s02);
                    } catch (C24189b0 e) {
                        C24789n.m4576a("Unexpected error delivering message on external thread.", e);
                        throw new RuntimeException(e);
                    }
                }
            });
        }
    }

    /* renamed from: L */
    public final void m5368L() {
        AbstractC24853u0[] abstractC24853u0Arr;
        for (AbstractC24853u0 abstractC24853u0 : this.f67245a) {
            if (abstractC24853u0.mo4393j() != null) {
                abstractC24853u0.mo4389n();
            }
        }
    }

    /* renamed from: M */
    public final void m5367M(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC24853u0[] abstractC24853u0Arr;
        if (this.f67239C != z) {
            this.f67239C = z;
            if (!z) {
                for (AbstractC24853u0 abstractC24853u0 : this.f67245a) {
                    if (abstractC24853u0.getState() == 0) {
                        abstractC24853u0.reset();
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

    /* renamed from: N */
    public final void m5366N(boolean z) throws C24189b0 {
        this.f67269y = false;
        this.f67268x = z;
        if (!z) {
            m5359U();
            m5357W();
            return;
        }
        int i = this.f67264t.f68998e;
        if (i == 3) {
            m5361S();
            this.f67251g.m4639d(2);
        } else if (i != 2) {
        } else {
            this.f67251g.m4639d(2);
        }
    }

    /* renamed from: O */
    public final void m5365O(C24652o0 c24652o0) {
        this.f67258n.mo4347t(c24652o0);
        this.f67251g.m4641b(17, 1, 0, this.f67258n.getPlaybackParameters()).sendToTarget();
    }

    /* renamed from: P */
    public final void m5364P(int i) throws C24189b0 {
        this.f67237A = i;
        C24510l0 c24510l0 = this.f67262r;
        c24510l0.f68439e = i;
        if (!c24510l0.m4983m()) {
            m5373G(true);
        }
        m5345n(false);
    }

    /* renamed from: Q */
    public final void m5363Q(boolean z) throws C24189b0 {
        this.f67238B = z;
        C24510l0 c24510l0 = this.f67262r;
        c24510l0.f68440f = z;
        if (!c24510l0.m4983m()) {
            m5373G(true);
        }
        m5345n(false);
    }

    /* renamed from: R */
    public final void m5362R(int i) {
        C24632n0 c24632n0 = this.f67264t;
        if (c24632n0.f68998e != i) {
            this.f67264t = new C24632n0(c24632n0.f68994a, c24632n0.f68995b, c24632n0.f68996c, c24632n0.f68997d, i, c24632n0.f68999f, c24632n0.f69000g, c24632n0.f69001h, c24632n0.f69002i, c24632n0.f69003j, c24632n0.f69004k, c24632n0.f69005l, c24632n0.f69006m);
        }
    }

    /* renamed from: S */
    public final void m5361S() throws C24189b0 {
        this.f67269y = false;
        C24865z c24865z = this.f67258n;
        c24865z.f69748f = true;
        c24865z.f69743a.m4503b();
        for (AbstractC24853u0 abstractC24853u0 : this.f67266v) {
            abstractC24853u0.start();
        }
    }

    /* renamed from: T */
    public final void m5360T(boolean z, boolean z2, boolean z3) {
        m5379A(z || !this.f67239C, true, z2, z2, z2);
        this.f67259o.m5332a(this.f67240D + (z3 ? 1 : 0));
        this.f67240D = 0;
        this.f67249e.mo4375g();
        m5362R(1);
    }

    /* renamed from: U */
    public final void m5359U() throws C24189b0 {
        AbstractC24853u0[] abstractC24853u0Arr;
        C24865z c24865z = this.f67258n;
        c24865z.f69748f = false;
        C24806y c24806y = c24865z.f69743a;
        if (c24806y.f69527b) {
            c24806y.m4504a(c24806y.mo4348r());
            c24806y.f69527b = false;
        }
        for (AbstractC24853u0 abstractC24853u0 : this.f67266v) {
            if (abstractC24853u0.getState() == 2) {
                abstractC24853u0.stop();
            }
        }
    }

    /* renamed from: V */
    public final void m5358V() {
        C24477j0 c24477j0 = this.f67262r.f68443i;
        boolean z = this.f67270z || (c24477j0 != null && c24477j0.f68329a.mo4956o());
        C24632n0 c24632n0 = this.f67264t;
        if (z != c24632n0.f69000g) {
            this.f67264t = new C24632n0(c24632n0.f68994a, c24632n0.f68995b, c24632n0.f68996c, c24632n0.f68997d, c24632n0.f68998e, c24632n0.f68999f, z, c24632n0.f69001h, c24632n0.f69002i, c24632n0.f69003j, c24632n0.f69004k, c24632n0.f69005l, c24632n0.f69006m);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0286 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0345 A[EDGE_INSN: B:125:0x0345->B:138:0x0345 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0273 A[LOOP:0: B:65:0x023c->B:75:0x0273, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x034a  */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v229, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0230 -> B:65:0x023c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x02c5 -> B:81:0x02d5). Please submit an issue!!! */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5357W() throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5357W():void");
    }

    /* renamed from: X */
    public final void m5356X(C24477j0 c24477j0) throws C24189b0 {
        C24477j0 c24477j02 = this.f67262r.f68441g;
        if (c24477j02 == null || c24477j0 == c24477j02) {
            return;
        }
        boolean[] zArr = new boolean[this.f67245a.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            AbstractC24853u0[] abstractC24853u0Arr = this.f67245a;
            if (i >= abstractC24853u0Arr.length) {
                this.f67264t = this.f67264t.m4807c(c24477j02.f68340l, c24477j02.f68341m);
                m5351f(zArr, i3);
                return;
            }
            AbstractC24853u0 abstractC24853u0 = abstractC24853u0Arr[i];
            zArr[i] = abstractC24853u0.getState() != 0;
            int i4 = i3;
            if (c24477j02.f68341m.m4789b(i)) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (!c24477j02.f68341m.m4789b(i) || (abstractC24853u0.mo4395h() && abstractC24853u0.mo4393j() == c24477j0.f68331c[i]))) {
                m5353d(abstractC24853u0);
            }
            i++;
            i2 = i4;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p.AbstractC24533b
    /* renamed from: a */
    public void mo4973a(AbstractC24531p abstractC24531p, AbstractC24861y0 abstractC24861y0) {
        this.f67251g.m4640c(8, new C24255b(abstractC24531p, abstractC24861y0)).sendToTarget();
    }

    /* renamed from: b */
    public final C24632n0 m5355b(AbstractC24531p.C24532a c24532a, long j, long j2) {
        this.f67244L = true;
        return this.f67264t.m4809a(c24532a, j, j2, m5348k());
    }

    /* renamed from: c */
    public final void m5354c(C24845s0 c24845s0) throws C24189b0 {
        c24845s0.m4422a();
        try {
            c24845s0.f69678a.mo4407f(c24845s0.f69681d, c24845s0.f69682e);
        } finally {
            c24845s0.m4421b(true);
        }
    }

    /* renamed from: d */
    public final void m5353d(AbstractC24853u0 abstractC24853u0) throws C24189b0 {
        C24865z c24865z = this.f67258n;
        if (abstractC24853u0 == c24865z.f69745c) {
            c24865z.f69746d = null;
            c24865z.f69745c = null;
            c24865z.f69747e = true;
        }
        if (abstractC24853u0.getState() == 2) {
            abstractC24853u0.stop();
        }
        abstractC24853u0.mo4401a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x014b, code lost:
        if (r18 != (-9223372036854775807L)) goto L44;
     */
    /* JADX WARN: Type inference failed for: r0v370, types: [long] */
    /* JADX WARN: Type inference failed for: r0v376, types: [long] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5352e() throws p193e.p1577m.p1578a.p1596c.C24189b0, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1941
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5352e():void");
    }

    /* renamed from: f */
    public final void m5351f(boolean[] zArr, int i) throws C24189b0 {
        AbstractC24791p abstractC24791p;
        this.f67266v = new AbstractC24853u0[i];
        C24650i c24650i = this.f67262r.f68441g.f68341m;
        for (int i2 = 0; i2 < this.f67245a.length; i2++) {
            if (!c24650i.m4789b(i2)) {
                this.f67245a[i2].reset();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f67245a.length; i4++) {
            if (c24650i.m4789b(i4)) {
                boolean z = zArr[i4];
                C24477j0 c24477j0 = this.f67262r.f68441g;
                AbstractC24853u0 abstractC24853u0 = this.f67245a[i4];
                this.f67266v[i3] = abstractC24853u0;
                if (abstractC24853u0.getState() == 0) {
                    C24650i c24650i2 = c24477j0.f68341m;
                    C24855v0 c24855v0 = c24650i2.f69031b[i4];
                    Format[] m5350h = m5350h(c24650i2.f69032c.f69027b[i4]);
                    boolean z2 = this.f67268x && this.f67264t.f68998e == 3;
                    abstractC24853u0.mo4385s(c24855v0, m5350h, c24477j0.f68331c[i4], this.f67242J, !z && z2, c24477j0.f68342n);
                    C24865z c24865z = this.f67258n;
                    Objects.requireNonNull(c24865z);
                    AbstractC24791p mo4390m = abstractC24853u0.mo4390m();
                    if (mo4390m != null && mo4390m != (abstractC24791p = c24865z.f69746d)) {
                        if (abstractC24791p != null) {
                            throw new C24189b0(2, new IllegalStateException("Multiple renderer media clocks enabled."));
                        }
                        c24865z.f69746d = mo4390m;
                        c24865z.f69745c = abstractC24853u0;
                        mo4390m.mo4347t(c24865z.f69743a.f69530e);
                    }
                    if (z2) {
                        abstractC24853u0.start();
                    }
                }
                i3++;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24555x.AbstractC24556a
    /* renamed from: g */
    public void mo4908g(AbstractC24529o abstractC24529o) {
        this.f67251g.m4640c(10, abstractC24529o).sendToTarget();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01cd  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r8) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.handleMessage(android.os.Message):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o.AbstractC24530a
    /* renamed from: i */
    public void mo4979i(AbstractC24529o abstractC24529o) {
        this.f67251g.m4640c(9, abstractC24529o).sendToTarget();
    }

    /* renamed from: j */
    public final Pair<Object, Long> m5349j(AbstractC24861y0 abstractC24861y0, int i, long j) {
        return abstractC24861y0.m4365j(this.f67254j, this.f67255k, i, j);
    }

    /* renamed from: k */
    public final long m5348k() {
        return m5347l(this.f67264t.f69004k);
    }

    /* renamed from: l */
    public final long m5347l(long j) {
        C24477j0 c24477j0 = this.f67262r.f68443i;
        if (c24477j0 == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f67242J - c24477j0.f68342n));
    }

    /* renamed from: m */
    public final void m5346m(AbstractC24529o abstractC24529o) {
        C24510l0 c24510l0 = this.f67262r;
        C24477j0 c24477j0 = c24510l0.f68443i;
        if (!(c24477j0 != null && c24477j0.f68329a == abstractC24529o)) {
            return;
        }
        c24510l0.m4987i(this.f67242J);
        m5337v();
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* renamed from: n */
    public final void m5345n(boolean z) {
        C24477j0 c24477j0 = this.f67262r.f68443i;
        AbstractC24531p.C24532a c24532a = c24477j0 == null ? this.f67264t.f68995b : c24477j0.f68334f.f68415a;
        boolean z2 = !this.f67264t.f69003j.equals(c24532a);
        if (z2) {
            C24632n0 c24632n0 = this.f67264t;
            this.f67264t = new C24632n0(c24632n0.f68994a, c24632n0.f68995b, c24632n0.f68996c, c24632n0.f68997d, c24632n0.f68998e, c24632n0.f68999f, c24632n0.f69000g, c24632n0.f69001h, c24632n0.f69002i, c24532a, c24632n0.f69004k, c24632n0.f69005l, c24632n0.f69006m);
        }
        C24632n0 c24632n02 = this.f67264t;
        c24632n02.f69004k = c24477j0 == null ? c24632n02.f69006m : c24477j0.m5040d();
        this.f67264t.f69005l = m5348k();
        if ((z2 || z) && c24477j0 != null && c24477j0.f68332d) {
            this.f67249e.mo4379c(this.f67245a, c24477j0.f68340l, c24477j0.f68341m.f69032c);
        }
    }

    /* renamed from: o */
    public final void m5344o(AbstractC24529o abstractC24529o) throws C24189b0 {
        C24477j0 c24477j0 = this.f67262r.f68443i;
        if (!(c24477j0 != null && c24477j0.f68329a == abstractC24529o)) {
            return;
        }
        float f = this.f67258n.getPlaybackParameters().f69036a;
        AbstractC24861y0 abstractC24861y0 = this.f67264t.f68994a;
        c24477j0.f68332d = true;
        c24477j0.f68340l = c24477j0.f68329a.mo4961h();
        long m5043a = c24477j0.m5043a(c24477j0.m5036h(f, abstractC24861y0), c24477j0.f68334f.f68416b, false, new boolean[c24477j0.f68336h.length]);
        long j = c24477j0.f68342n;
        C24502k0 c24502k0 = c24477j0.f68334f;
        long j2 = c24502k0.f68416b;
        c24477j0.f68342n = (j2 - m5043a) + j;
        if (m5043a != j2) {
            c24502k0 = new C24502k0(c24502k0.f68415a, m5043a, c24502k0.f68417c, c24502k0.f68418d, c24502k0.f68419e, c24502k0.f68420f, c24502k0.f68421g);
        }
        c24477j0.f68334f = c24502k0;
        this.f67249e.mo4379c(this.f67245a, c24477j0.f68340l, c24477j0.f68341m.f69032c);
        if (c24477j0 == this.f67262r.f68441g) {
            m5378B(c24477j0.f68334f.f68416b);
            m5356X(null);
        }
        m5337v();
    }

    /* renamed from: p */
    public final void m5343p(C24652o0 c24652o0, boolean z) throws C24189b0 {
        AbstractC24853u0[] abstractC24853u0Arr;
        AbstractC24645f[] m4793a;
        this.f67253i.obtainMessage(1, z ? 1 : 0, 0, c24652o0).sendToTarget();
        float f = c24652o0.f69036a;
        C24477j0 c24477j0 = this.f67262r.f68441g;
        while (true) {
            C24477j0 c24477j02 = c24477j0;
            if (c24477j02 == null) {
                break;
            }
            for (AbstractC24645f abstractC24645f : c24477j02.f68341m.f69032c.m4793a()) {
                if (abstractC24645f != null) {
                    abstractC24645f.mo4794i(f);
                }
            }
            c24477j0 = c24477j02.f68339k;
        }
        for (AbstractC24853u0 abstractC24853u0 : this.f67245a) {
            if (abstractC24853u0 != null) {
                abstractC24853u0.mo4396g(c24652o0.f69036a);
            }
        }
    }

    /* renamed from: q */
    public final void m5342q() {
        if (this.f67264t.f68998e != 1) {
            m5362R(4);
        }
        m5379A(false, false, true, false, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x0424, code lost:
        r27 = true;
     */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v200, types: [long] */
    /* JADX WARN: Type inference failed for: r0v218, types: [long] */
    /* JADX WARN: Type inference failed for: r0v226, types: [long] */
    /* JADX WARN: Type inference failed for: r0v233, types: [long] */
    /* JADX WARN: Type inference failed for: r0v236, types: [long] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5341r(p193e.p1577m.p1578a.p1596c.C24253e0.C24255b r23) throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 1209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5341r(e.m.a.c.e0$b):void");
    }

    /* renamed from: s */
    public final boolean m5340s() {
        C24477j0 c24477j0 = this.f67262r.f68442h;
        if (!c24477j0.f68332d) {
            return false;
        }
        int i = 0;
        while (true) {
            AbstractC24853u0[] abstractC24853u0Arr = this.f67245a;
            if (i >= abstractC24853u0Arr.length) {
                return true;
            }
            AbstractC24853u0 abstractC24853u0 = abstractC24853u0Arr[i];
            AbstractC24554w abstractC24554w = c24477j0.f68331c[i];
            if (abstractC24853u0.mo4393j() != abstractC24554w) {
                return false;
            }
            if (abstractC24554w != null && !abstractC24853u0.mo4397e()) {
                return false;
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: t */
    public final boolean m5339t() {
        C24477j0 c24477j0 = this.f67262r.f68443i;
        if (c24477j0 == null) {
            return false;
        }
        return (!c24477j0.f68332d ? (char) 0 : c24477j0.f68329a.mo4965d()) != Long.MIN_VALUE;
    }

    /* renamed from: u */
    public final boolean m5338u() {
        C24477j0 c24477j0 = this.f67262r.f68441g;
        long j = c24477j0.f68334f.f68419e;
        return c24477j0.f68332d && (j == -9223372036854775807L || this.f67264t.f69006m < j);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: v */
    public final void m5337v() {
        boolean z;
        if (!m5339t()) {
            z = false;
        } else {
            C24477j0 c24477j0 = this.f67262r.f68443i;
            z = this.f67249e.mo4374h(m5347l(!c24477j0.f68332d ? (char) 0 : c24477j0.f68329a.mo4965d()), this.f67258n.getPlaybackParameters().f69036a);
        }
        this.f67270z = z;
        if (z) {
            C24477j0 c24477j02 = this.f67262r.f68443i;
            long j = this.f67242J;
            C26232y.m2286x(c24477j02.m5038f());
            c24477j02.f68329a.mo4968a(j - c24477j02.f68342n);
        }
        m5358V();
    }

    /* renamed from: w */
    public final void m5336w() {
        C24257d c24257d = this.f67259o;
        C24632n0 c24632n0 = this.f67264t;
        if (c24632n0 != c24257d.f67277a || c24257d.f67278b > 0 || c24257d.f67279c) {
            this.f67253i.obtainMessage(0, c24257d.f67278b, c24257d.f67279c ? c24257d.f67280d : -1, c24632n0).sendToTarget();
            C24257d c24257d2 = this.f67259o;
            c24257d2.f67277a = this.f67264t;
            c24257d2.f67278b = 0;
            c24257d2.f67279c = false;
        }
    }

    /* renamed from: x */
    public final void m5335x(AbstractC24531p abstractC24531p, boolean z, boolean z2) {
        this.f67240D++;
        m5379A(false, true, z, z2, true);
        this.f67249e.onPrepared();
        this.f67265u = abstractC24531p;
        m5362R(2);
        abstractC24531p.mo4976d(this, this.f67250f.mo4681a());
        this.f67251g.m4639d(2);
    }

    /* renamed from: y */
    public final void m5334y() {
        m5379A(true, true, true, true, false);
        this.f67249e.mo4378d();
        m5362R(1);
        this.f67252h.quit();
        synchronized (this) {
            this.f67267w = true;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x008d A[SYNTHETIC] */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5333z() throws p193e.p1577m.p1578a.p1596c.C24189b0 {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24253e0.m5333z():void");
    }
}
