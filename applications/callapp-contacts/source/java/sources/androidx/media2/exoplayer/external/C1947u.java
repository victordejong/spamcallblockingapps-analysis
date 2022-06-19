package androidx.media2.exoplayer.external;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.C1372af;
import androidx.media2.exoplayer.external.C1478e;
import androidx.media2.exoplayer.external.source.AbstractC1756al;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.trackselection.AbstractC1944g;
import androidx.media2.exoplayer.external.trackselection.C1946h;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.AbstractC2008i;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.media2.exoplayer.external.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u.class */
public final class C1947u implements Handler.Callback, C1372af.AbstractC1373a, C1478e.AbstractC1479a, AbstractC1840s.AbstractC1841a, AbstractC1842t.AbstractC1844b, AbstractC1944g.AbstractC1945a {

    /* renamed from: A */
    private boolean f7829A;

    /* renamed from: B */
    private boolean f7830B;

    /* renamed from: C */
    private int f7831C;

    /* renamed from: D */
    private C1952d f7832D;

    /* renamed from: E */
    private long f7833E;

    /* renamed from: F */
    private int f7834F;

    /* renamed from: a */
    public final AbstractC2008i f7835a;

    /* renamed from: b */
    final HandlerThread f7836b;

    /* renamed from: c */
    private final AbstractC1375ag[] f7837c;

    /* renamed from: d */
    private final AbstractC1376ah[] f7838d;

    /* renamed from: e */
    private final AbstractC1944g f7839e;

    /* renamed from: f */
    private final C1946h f7840f;

    /* renamed from: g */
    private final AbstractC2059y f7841g;

    /* renamed from: h */
    private final AbstractC1964c f7842h;

    /* renamed from: i */
    private final Handler f7843i;

    /* renamed from: j */
    private final AbstractC1383al.C1386b f7844j;

    /* renamed from: k */
    private final AbstractC1383al.C1385a f7845k;

    /* renamed from: l */
    private final long f7846l;

    /* renamed from: m */
    private final boolean f7847m;

    /* renamed from: n */
    private final C1478e f7848n;

    /* renamed from: p */
    private final ArrayList<C1950b> f7850p;

    /* renamed from: q */
    private final AbstractC1999b f7851q;

    /* renamed from: t */
    private C1367ac f7854t;

    /* renamed from: u */
    private AbstractC1842t f7855u;

    /* renamed from: v */
    private AbstractC1375ag[] f7856v;

    /* renamed from: w */
    private boolean f7857w;

    /* renamed from: x */
    private boolean f7858x;

    /* renamed from: y */
    private boolean f7859y;

    /* renamed from: z */
    private int f7860z;

    /* renamed from: r */
    private final C1366ab f7852r = new C1366ab();

    /* renamed from: s */
    private C1378aj f7853s = C1378aj.f5157e;

    /* renamed from: o */
    private final C1951c f7849o = new C1951c();

    /* renamed from: androidx.media2.exoplayer.external.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$a.class */
    static final class C1949a {

        /* renamed from: a */
        public final AbstractC1842t f7861a;

        /* renamed from: b */
        public final AbstractC1383al f7862b;

        public C1949a(AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
            this.f7861a = abstractC1842t;
            this.f7862b = abstractC1383al;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$b.class */
    public static final class C1950b implements Comparable<C1950b> {

        /* renamed from: a */
        public final C1372af f7863a;

        /* renamed from: b */
        public int f7864b;

        /* renamed from: c */
        public long f7865c;

        /* renamed from: d */
        public Object f7866d;

        public C1950b(C1372af c1372af) {
            this.f7863a = c1372af;
        }

        /* renamed from: a */
        public final void m41770a(int i, long j, Object obj) {
            this.f7864b = i;
            this.f7865c = j;
            this.f7866d = obj;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C1950b c1950b) {
            C1950b c1950b2 = c1950b;
            Object obj = this.f7866d;
            if ((obj == null) != (c1950b2.f7866d == null)) {
                return obj != null ? -1 : 1;
            } else if (obj == null) {
                return 0;
            } else {
                int i = this.f7864b - c1950b2.f7864b;
                return i != 0 ? i : C1996ac.m41635b(this.f7865c, c1950b2.f7865c);
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.u$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$c.class */
    public static final class C1951c {

        /* renamed from: a */
        int f7867a;

        /* renamed from: b */
        boolean f7868b;

        /* renamed from: c */
        int f7869c;

        /* renamed from: d */
        private C1367ac f7870d;

        private C1951c() {
        }

        /* renamed from: a */
        public final void m41769a(int i) {
            this.f7867a += i;
        }

        /* renamed from: a */
        public final boolean m41768a(C1367ac c1367ac) {
            return c1367ac != this.f7870d || this.f7867a > 0 || this.f7868b;
        }

        /* renamed from: b */
        public final void m41767b(int i) {
            boolean z = true;
            if (!this.f7868b || this.f7869c == 4) {
                this.f7868b = true;
                this.f7869c = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C1993a.m41688a(z);
        }

        /* renamed from: b */
        public final void m41766b(C1367ac c1367ac) {
            this.f7870d = c1367ac;
            this.f7867a = 0;
            this.f7868b = false;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.u$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/u$d.class */
    public static final class C1952d {

        /* renamed from: a */
        public final AbstractC1383al f7871a;

        /* renamed from: b */
        public final int f7872b;

        /* renamed from: c */
        public final long f7873c;

        public C1952d(AbstractC1383al abstractC1383al, int i, long j) {
            this.f7871a = abstractC1383al;
            this.f7872b = i;
            this.f7873c = j;
        }
    }

    public C1947u(AbstractC1375ag[] abstractC1375agArr, AbstractC1944g abstractC1944g, C1946h c1946h, AbstractC2059y abstractC2059y, AbstractC1964c abstractC1964c, boolean z, int i, boolean z2, Handler handler, AbstractC1999b abstractC1999b) {
        this.f7837c = abstractC1375agArr;
        this.f7839e = abstractC1944g;
        this.f7840f = c1946h;
        this.f7841g = abstractC2059y;
        this.f7842h = abstractC1964c;
        this.f7858x = z;
        this.f7860z = i;
        this.f7829A = z2;
        this.f7843i = handler;
        this.f7851q = abstractC1999b;
        this.f7846l = abstractC2059y.mo41410e();
        this.f7847m = abstractC2059y.mo41409f();
        this.f7854t = C1367ac.m43137a(-9223372036854775807L, c1946h);
        this.f7838d = new AbstractC1376ah[abstractC1375agArr.length];
        for (int i2 = 0; i2 < abstractC1375agArr.length; i2++) {
            abstractC1375agArr[i2].mo42937a(i2);
            this.f7838d[i2] = abstractC1375agArr[i2].mo42931b();
        }
        this.f7848n = new C1478e(this, abstractC1999b);
        this.f7850p = new ArrayList<>();
        this.f7856v = new AbstractC1375ag[0];
        this.f7844j = new AbstractC1383al.C1386b();
        this.f7845k = new AbstractC1383al.C1385a();
        abstractC1944g.f7823b = this;
        abstractC1944g.f7824c = abstractC1964c;
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f7836b = handlerThread;
        handlerThread.start();
        this.f7835a = abstractC1999b.mo41493a(handlerThread.getLooper(), this);
    }

    /* renamed from: a */
    private long m41804a(AbstractC1842t.C1843a c1843a, long j) throws ExoPlaybackException {
        return m41803a(c1843a, j, this.f7852r.f5112d != this.f7852r.f5113e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if ((r12.f8292j + r8) < 0) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f7  */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long m41803a(androidx.media2.exoplayer.external.source.AbstractC1842t.C1843a r7, long r8, boolean r10) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C1947u.m41803a(androidx.media2.exoplayer.external.source.t$a, long, boolean):long");
    }

    /* renamed from: a */
    private Pair<Object, Long> m41807a(AbstractC1383al abstractC1383al, int i) {
        return abstractC1383al.m43092a(this.f7844j, this.f7845k, i, -9223372036854775807L);
    }

    /* renamed from: a */
    private Pair<Object, Long> m41798a(C1952d c1952d, boolean z) {
        int mo42088a;
        AbstractC1383al abstractC1383al = this.f7854t.f5122a;
        AbstractC1383al abstractC1383al2 = c1952d.f7871a;
        if (abstractC1383al.m43094a()) {
            return null;
        }
        AbstractC1383al abstractC1383al3 = abstractC1383al2;
        if (abstractC1383al2.m43094a()) {
            abstractC1383al3 = abstractC1383al;
        }
        try {
            Pair<Object, Long> m43092a = abstractC1383al3.m43092a(this.f7844j, this.f7845k, c1952d.f7872b, c1952d.f7873c);
            if (abstractC1383al != abstractC1383al3 && (mo42088a = abstractC1383al.mo42088a(m43092a.first)) == -1) {
                if (z && m41796a(m43092a.first, abstractC1383al3, abstractC1383al) != null) {
                    return m41807a(abstractC1383al, abstractC1383al.mo42091a(mo42088a, this.f7845k, false).f5206c);
                }
                return null;
            }
            return m43092a;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: a */
    private Object m41796a(Object obj, AbstractC1383al abstractC1383al, AbstractC1383al abstractC1383al2) {
        int mo42088a = abstractC1383al.mo42088a(obj);
        int mo42093c = abstractC1383al.mo42093c();
        int i = -1;
        for (int i2 = 0; i2 < mo42093c && i == -1; i2++) {
            mo42088a = abstractC1383al.m43093a(mo42088a, this.f7845k, this.f7844j, this.f7860z, this.f7829A);
            if (mo42088a == -1) {
                break;
            }
            i = abstractC1383al2.mo42088a(abstractC1383al.mo42092a(mo42088a));
        }
        if (i == -1) {
            return null;
        }
        return abstractC1383al2.mo42092a(i);
    }

    /* renamed from: a */
    private void m41815a(int i) {
        if (this.f7854t.f5126e != i) {
            this.f7854t = this.f7854t.m43138a(i);
        }
    }

    /* renamed from: a */
    private void m41814a(int i, boolean z, int i2) throws ExoPlaybackException {
        C2060z c2060z = this.f7852r.f5112d;
        AbstractC1375ag abstractC1375ag = this.f7837c[i];
        this.f7856v[i2] = abstractC1375ag;
        if (abstractC1375ag.mo42923i_() == 0) {
            C1946h c1946h = c2060z.f8291i;
            RendererConfiguration rendererConfiguration = c1946h.f7826b[i];
            Format[] m41801a = m41801a(c1946h.f7827c.f7821b[i]);
            boolean z2 = this.f7858x && this.f7854t.f5126e == 3;
            abstractC1375ag.mo42935a(rendererConfiguration, m41801a, c2060z.f8285c[i], this.f7833E, !z && z2, c2060z.f8292j);
            this.f7848n.m42846a(abstractC1375ag);
            if (!z2) {
                return;
            }
            abstractC1375ag.mo42928e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.media2.exoplayer.external.e] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: a */
    private void m41813a(long j) throws ExoPlaybackException {
        C2060z c2060z = this.f7852r.f5112d;
        ?? r6 = j;
        if (c2060z != null) {
            r6 = j + c2060z.f8292j;
        }
        this.f7833E = r6;
        this.f7848n.m42847a(r6);
        for (AbstractC1375ag abstractC1375ag : this.f7856v) {
            abstractC1375ag.mo42936a(this.f7833E);
        }
        m41777h();
    }

    /* renamed from: a */
    private void m41812a(long j, long j2) {
        this.f7835a.mo41486b();
        this.f7835a.mo41487a(j + j2);
    }

    /* renamed from: a */
    private void m41810a(C1368ad c1368ad, boolean z) {
        this.f7835a.mo41489a(17, z ? 1 : 0, 0, c1368ad).sendToTarget();
    }

    /* renamed from: a */
    private static void m41808a(AbstractC1375ag abstractC1375ag) throws ExoPlaybackException {
        if (abstractC1375ag.mo42923i_() == 2) {
            abstractC1375ag.mo42920l();
        }
    }

    /* renamed from: a */
    private void m41800a(C1946h c1946h) {
        this.f7841g.mo41414a(this.f7837c, c1946h.f7827c);
    }

    /* renamed from: a */
    private void m41797a(C2060z c2060z) throws ExoPlaybackException {
        C2060z c2060z2 = this.f7852r.f5112d;
        if (c2060z2 == null || c2060z == c2060z2) {
            return;
        }
        boolean[] zArr = new boolean[this.f7837c.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            AbstractC1375ag[] abstractC1375agArr = this.f7837c;
            if (i >= abstractC1375agArr.length) {
                this.f7854t = this.f7854t.m43135a(c2060z2.f8290h, c2060z2.f8291i);
                m41791a(zArr, i3);
                return;
            }
            AbstractC1375ag abstractC1375ag = abstractC1375agArr[i];
            zArr[i] = abstractC1375ag.mo42923i_() != 0;
            int i4 = i3;
            if (c2060z2.f8291i.m41818a(i)) {
                i4 = i3 + 1;
            }
            if (zArr[i] && (!c2060z2.f8291i.m41818a(i) || (abstractC1375ag.mo42922j() && abstractC1375ag.mo42927f() == c2060z.f8285c[i]))) {
                m41786b(abstractC1375ag);
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: a */
    private void m41795a(boolean z) {
        if (this.f7854t.f5128g != z) {
            this.f7854t = this.f7854t.m43132a(z);
        }
    }

    /* renamed from: a */
    private void m41794a(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC1375ag[] abstractC1375agArr;
        if (this.f7830B != z) {
            this.f7830B = z;
            if (!z) {
                for (AbstractC1375ag abstractC1375ag : this.f7837c) {
                    if (abstractC1375ag.mo42923i_() == 0) {
                        abstractC1375ag.mo42918n();
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
    private void m41793a(boolean z, boolean z2, boolean z3) {
        m41792a(z || !this.f7830B, true, z2, z2, z2);
        this.f7849o.m41769a(this.f7831C + (z3 ? 1 : 0));
        this.f7831C = 0;
        this.f7841g.mo41413b();
        m41815a(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0205  */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m41792a(boolean r23, boolean r24, boolean r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C1947u.m41792a(boolean, boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: a */
    private void m41791a(boolean[] zArr, int i) throws ExoPlaybackException {
        this.f7856v = new AbstractC1375ag[i];
        C1946h c1946h = this.f7852r.f5112d.f8291i;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f7837c.length; i3++) {
            if (!c1946h.m41818a(i3)) {
                this.f7837c[i3].mo42918n();
            }
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i2 < this.f7837c.length) {
                int i6 = i5;
                if (c1946h.m41818a(i2)) {
                    m41814a(i2, zArr[i2], i5);
                    i6 = i5 + 1;
                }
                i2++;
                i4 = i6;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private boolean m41799a(C1950b c1950b) {
        if (c1950b.f7866d == null) {
            Pair<Object, Long> m41798a = m41798a(new C1952d(c1950b.f7863a.f5141b, c1950b.f7863a.f5145f, C1446c.m42893b(c1950b.f7863a.f5146g)), false);
            if (m41798a == null) {
                return false;
            }
            c1950b.m41770a(this.f7854t.f5122a.mo42088a(m41798a.first), ((Long) m41798a.second).longValue(), m41798a.first);
            return true;
        }
        int mo42088a = this.f7854t.f5122a.mo42088a(c1950b.f7866d);
        if (mo42088a == -1) {
            return false;
        }
        c1950b.f7864b = mo42088a;
        return true;
    }

    /* renamed from: a */
    private static Format[] m41801a(AbstractC1940e abstractC1940e) {
        int mo41826f = abstractC1940e != null ? abstractC1940e.mo41826f() : 0;
        Format[] formatArr = new Format[mo41826f];
        for (int i = 0; i < mo41826f; i++) {
            formatArr[i] = abstractC1940e.mo41835a(i);
        }
        return formatArr;
    }

    /* renamed from: b */
    private long m41789b(long j) {
        C2060z c2060z = this.f7852r.f5114f;
        if (c2060z == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f7833E - c2060z.f8292j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5 A[LOOP:0: B:13:0x006b->B:23:0x00a5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014e A[EDGE_INSN: B:79:0x014e->B:95:0x014e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0065 -> B:13:0x006b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00dc -> B:28:0x00e2). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m41788b(long r6, long r8) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C1947u.m41788b(long, long):void");
    }

    /* renamed from: b */
    public static void m41787b(C1372af c1372af) throws ExoPlaybackException {
        if (c1372af.m43126b()) {
            return;
        }
        try {
            c1372af.f5140a.mo41430a(c1372af.f5142c, c1372af.f5143d);
        } finally {
            c1372af.m43127a(true);
        }
    }

    /* renamed from: b */
    private void m41786b(AbstractC1375ag abstractC1375ag) throws ExoPlaybackException {
        this.f7848n.m42843b(abstractC1375ag);
        m41808a(abstractC1375ag);
        abstractC1375ag.mo42919m();
    }

    /* renamed from: b */
    private void m41785b(boolean z) throws ExoPlaybackException {
        AbstractC1842t.C1843a c1843a = this.f7852r.f5112d.f8288f.f5102a;
        long m41803a = m41803a(c1843a, this.f7854t.f5134m, true);
        if (m41803a != this.f7854t.f5134m) {
            C1367ac c1367ac = this.f7854t;
            this.f7854t = c1367ac.m43133a(c1843a, m41803a, c1367ac.f5125d, m41771n());
            if (!z) {
                return;
            }
            this.f7849o.m41767b(4);
        }
    }

    /* renamed from: c */
    private void m41784c() {
        if (this.f7849o.m41768a(this.f7854t)) {
            this.f7843i.obtainMessage(0, this.f7849o.f7867a, this.f7849o.f7868b ? this.f7849o.f7869c : -1, this.f7854t).sendToTarget();
            this.f7849o.m41766b(this.f7854t);
        }
    }

    /* renamed from: c */
    private void m41783c(C1372af c1372af) throws ExoPlaybackException {
        if (c1372af.f5144e.getLooper() != this.f7835a.mo41491a()) {
            this.f7835a.mo41488a(16, c1372af).sendToTarget();
            return;
        }
        m41787b(c1372af);
        if (this.f7854t.f5126e != 3 && this.f7854t.f5126e != 2) {
            return;
        }
        this.f7835a.mo41485b(2);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: c */
    private void m41782c(boolean z) {
        C2060z c2060z = this.f7852r.f5114f;
        AbstractC1842t.C1843a c1843a = c2060z == null ? this.f7854t.f5123b : c2060z.f8288f.f5102a;
        boolean z2 = !this.f7854t.f5131j.equals(c1843a);
        if (z2) {
            this.f7854t = this.f7854t.m43134a(c1843a);
        }
        C1367ac c1367ac = this.f7854t;
        c1367ac.f5132k = c2060z == null ? c1367ac.f5134m : c2060z.m41398c();
        this.f7854t.f5133l = m41771n();
        if ((z2 || z) && c2060z != null && c2060z.f8286d) {
            m41800a(c2060z.f8291i);
        }
    }

    /* renamed from: d */
    private void m41781d() throws ExoPlaybackException {
        this.f7859y = false;
        this.f7848n.m42848a();
        for (AbstractC1375ag abstractC1375ag : this.f7856v) {
            abstractC1375ag.mo42928e();
        }
    }

    /* renamed from: e */
    private void m41780e() throws ExoPlaybackException {
        this.f7848n.m42844b();
        for (AbstractC1375ag abstractC1375ag : this.f7856v) {
            m41808a(abstractC1375ag);
        }
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: f */
    private void m41779f() throws ExoPlaybackException {
        C2060z c2060z = this.f7852r.f5112d;
        if (c2060z == null) {
            return;
        }
        char mo42079c = c2060z.f8286d ? c2060z.f8283a.mo42079c() : (char) 1;
        if (mo42079c != -9223372036854775807L) {
            m41813a((long) mo42079c);
            if (mo42079c != this.f7854t.f5134m) {
                C1367ac c1367ac = this.f7854t;
                this.f7854t = c1367ac.m43133a(c1367ac.f5123b, mo42079c, this.f7854t.f5125d, m41771n());
                this.f7849o.m41767b(4);
            }
        } else {
            long m42845a = this.f7848n.m42845a(c2060z != this.f7852r.f5113e);
            this.f7833E = m42845a;
            long j = m42845a - c2060z.f8292j;
            m41788b(this.f7854t.f5134m, j);
            this.f7854t.f5134m = j;
        }
        this.f7854t.f5132k = this.f7852r.f5114f.m41398c();
        this.f7854t.f5133l = m41771n();
    }

    /* renamed from: g */
    private void m41778g() {
        m41792a(true, true, true, true, false);
        this.f7841g.mo41412c();
        m41815a(1);
        this.f7836b.quit();
        synchronized (this) {
            this.f7857w = true;
            notifyAll();
        }
    }

    /* renamed from: h */
    private void m41777h() {
        C2060z c2060z = this.f7852r.f5112d;
        while (true) {
            C2060z c2060z2 = c2060z;
            if (c2060z2 != null) {
                c2060z2.f8291i.f7827c.m41821a();
                c2060z = c2060z2.f8289g;
            } else {
                return;
            }
        }
    }

    /* renamed from: i */
    private boolean m41776i() {
        C2060z c2060z = this.f7852r.f5112d;
        long j = c2060z.f8288f.f5106e;
        if (c2060z.f8286d) {
            return j == -9223372036854775807L || this.f7854t.f5134m < j;
        }
        return false;
    }

    /* renamed from: j */
    private void m41775j() {
        m41815a(4);
        m41792a(false, false, true, false, true);
    }

    /* renamed from: k */
    private boolean m41774k() {
        C2060z c2060z = this.f7852r.f5113e;
        if (!c2060z.f8286d) {
            return false;
        }
        int i = 0;
        while (true) {
            AbstractC1375ag[] abstractC1375agArr = this.f7837c;
            if (i >= abstractC1375agArr.length) {
                return true;
            }
            AbstractC1375ag abstractC1375ag = abstractC1375agArr[i];
            AbstractC1756al abstractC1756al = c2060z.f8285c[i];
            if (abstractC1375ag.mo42927f() != abstractC1756al) {
                return false;
            }
            if (abstractC1756al != null && !abstractC1375ag.mo42926g()) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: l */
    private void m41773l() {
        AbstractC1375ag[] abstractC1375agArr;
        for (AbstractC1375ag abstractC1375ag : this.f7837c) {
            if (abstractC1375ag.mo42927f() != null) {
                abstractC1375ag.mo42924i();
            }
        }
    }

    /* renamed from: m */
    private void m41772m() {
        C2060z c2060z = this.f7852r.f5114f;
        long m41397d = c2060z.m41397d();
        if (m41397d == Long.MIN_VALUE) {
            m41795a(false);
            return;
        }
        boolean mo41416a = this.f7841g.mo41416a(m41789b(m41397d), this.f7848n.mo41496d().f5136b);
        m41795a(mo41416a);
        if (!mo41416a) {
            return;
        }
        c2060z.m41400b(this.f7833E);
    }

    /* renamed from: n */
    private long m41771n() {
        return m41789b(this.f7854t.f5132k);
    }

    /* renamed from: a */
    public final void m41816a() {
        synchronized (this) {
            if (this.f7857w) {
                return;
            }
            this.f7835a.mo41485b(7);
            boolean z = false;
            while (!this.f7857w) {
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

    @Override // androidx.media2.exoplayer.external.C1478e.AbstractC1479a
    /* renamed from: a */
    public final void mo41811a(C1368ad c1368ad) {
        m41810a(c1368ad, false);
    }

    @Override // androidx.media2.exoplayer.external.C1372af.AbstractC1373a
    /* renamed from: a */
    public final void mo41809a(C1372af c1372af) {
        synchronized (this) {
            if (!this.f7857w) {
                this.f7835a.mo41488a(15, c1372af).sendToTarget();
                return;
            }
            C2009j.m41584a("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            c1372af.m43127a(false);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am.AbstractC1758a
    /* renamed from: a */
    public final /* synthetic */ void mo41806a(AbstractC1840s abstractC1840s) {
        this.f7835a.mo41488a(10, abstractC1840s).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s.AbstractC1841a
    /* renamed from: a */
    public final void mo41805a(AbstractC1840s abstractC1840s) {
        this.f7835a.mo41488a(9, abstractC1840s).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t.AbstractC1844b
    /* renamed from: a */
    public final void mo41802a(AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        this.f7835a.mo41488a(8, new C1949a(abstractC1842t, abstractC1383al)).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.AbstractC1944g.AbstractC1945a
    /* renamed from: b */
    public final void mo41790b() {
        this.f7835a.mo41485b(11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:256:0x087e, code lost:
        if (r0.m43147a(r24) != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0881, code lost:
        r23 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x08c1, code lost:
        if (r0.m43147a(r24) != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x098c, code lost:
        if (r23 == false) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x12e4, code lost:
        if (r45 == false) goto L683;
     */
    /* JADX WARN: Removed duplicated region for block: B:311:0x09af A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0c34 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0cde A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0e6a A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0e82 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0ff2 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_LEAVE, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x1036  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x11c9 A[Catch: OutOfMemoryError -> 0x144f, RuntimeException -> 0x1453, IOException -> 0x1457, ExoPlaybackException -> 0x145f, TRY_ENTER, TryCatch #21 {ExoPlaybackException -> 0x145f, IOException -> 0x1457, blocks: (B:161:0x05aa, B:165:0x05e1, B:168:0x05f6, B:170:0x060a, B:174:0x0621, B:180:0x0640, B:182:0x065f, B:183:0x066c, B:185:0x0678, B:187:0x0682, B:189:0x0695, B:190:0x069c, B:194:0x06c3, B:196:0x06cb, B:198:0x06fb, B:200:0x0711, B:202:0x071e, B:204:0x072f, B:205:0x0736, B:207:0x076c, B:209:0x0773, B:212:0x0786, B:217:0x079d, B:220:0x07bb, B:222:0x07c6, B:226:0x07d0, B:228:0x07da, B:232:0x07e4, B:236:0x07f3, B:238:0x0809, B:242:0x0828, B:243:0x0831, B:246:0x083f, B:252:0x085a, B:255:0x0874, B:261:0x089c, B:268:0x08b7, B:311:0x09af, B:312:0x09ba, B:314:0x09c7, B:316:0x09ce, B:318:0x09d7, B:320:0x09e6, B:322:0x09fe, B:327:0x0a0f, B:329:0x0a30, B:338:0x0a57, B:340:0x0a5d, B:345:0x0a6d, B:346:0x0a78, B:347:0x0a86, B:348:0x0aa5, B:350:0x0ac4, B:352:0x0ae7, B:356:0x0b14, B:385:0x0bc8, B:387:0x0bdf, B:389:0x0be5, B:399:0x0c1d, B:401:0x0c34, B:403:0x0c3e, B:405:0x0c56, B:407:0x0c60, B:410:0x0c64, B:412:0x0c78, B:414:0x0c7f, B:415:0x0c88, B:417:0x0c9f, B:419:0x0cac, B:421:0x0cb6, B:423:0x0cc7, B:430:0x0cde, B:432:0x0cf6, B:433:0x0d0d, B:436:0x0d1c, B:438:0x0d26, B:442:0x0d37, B:444:0x0d42, B:445:0x0d48, B:446:0x0d54, B:450:0x0d89, B:454:0x0d97, B:456:0x0da2, B:458:0x0dab, B:459:0x0dc9, B:461:0x0de8, B:462:0x0df5, B:464:0x0e05, B:466:0x0e3c, B:468:0x0e46, B:470:0x0e4b, B:472:0x0e56, B:475:0x0e60, B:477:0x0e6a, B:478:0x0e71, B:480:0x0e77, B:482:0x0e82, B:484:0x0e89, B:488:0x0e95, B:492:0x0ea8, B:494:0x0eb5, B:496:0x0ec1, B:498:0x0ecb, B:499:0x0ed2, B:500:0x0ed8, B:502:0x0edf, B:504:0x0ee9, B:506:0x0efc, B:511:0x0f10, B:513:0x0f41, B:515:0x0f4a, B:519:0x0f5d, B:521:0x0f65, B:523:0x0f6f, B:528:0x0f9c, B:530:0x0fb2, B:534:0x0fc1, B:535:0x0fdc, B:536:0x0fe3, B:538:0x0feb, B:540:0x0ff2, B:542:0x0ffe, B:544:0x1009, B:546:0x1014, B:549:0x101c, B:558:0x103a, B:560:0x103f, B:562:0x1053, B:564:0x1058, B:569:0x109b, B:571:0x10ac, B:573:0x10b8, B:574:0x10c4, B:576:0x10d5, B:578:0x10fb, B:580:0x1108, B:584:0x111e, B:586:0x1128, B:588:0x113e, B:593:0x1151, B:600:0x1170, B:602:0x1177, B:611:0x1194, B:613:0x119e, B:626:0x11c9, B:630:0x11e4, B:632:0x11f3, B:634:0x1201, B:639:0x1211, B:642:0x121f, B:644:0x1228, B:645:0x1234, B:647:0x123f, B:649:0x1247, B:652:0x1255, B:656:0x1265, B:658:0x1274, B:665:0x1289, B:671:0x12b2, B:673:0x12be, B:674:0x12c5, B:676:0x12d0, B:678:0x12d8, B:683:0x12e7, B:685:0x12f9, B:687:0x1303, B:691:0x1314, B:692:0x1322, B:694:0x1329, B:697:0x1335, B:700:0x1340, B:701:0x134b, B:703:0x1353, B:705:0x135e, B:706:0x136a, B:707:0x1373, B:707:0x1373, B:709:0x1379, B:714:0x1389, B:716:0x1399, B:717:0x13a4, B:719:0x13af, B:720:0x13c1, B:722:0x13cc, B:723:0x13da, B:728:0x13f3, B:733:0x1403, B:735:0x1449), top: B:757:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:746:0x147f  */
    /* JADX WARN: Removed duplicated region for block: B:747:0x148a  */
    /* JADX WARN: Removed duplicated region for block: B:775:0x02bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:808:0x10ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02ad  */
    /* JADX WARN: Type inference failed for: r0v417, types: [long] */
    /* JADX WARN: Type inference failed for: r0v446, types: [long] */
    /* JADX WARN: Type inference failed for: r0v510, types: [long] */
    /* JADX WARN: Type inference failed for: r0v541, types: [long] */
    /* JADX WARN: Type inference failed for: r0v549, types: [long] */
    /* JADX WARN: Type inference failed for: r0v558, types: [long] */
    /* JADX WARN: Type inference failed for: r0v715, types: [long] */
    /* JADX WARN: Type inference failed for: r0v756, types: [long] */
    /* JADX WARN: Type inference failed for: r0v784, types: [long] */
    /* JADX WARN: Type inference failed for: r0v805, types: [long] */
    /* JADX WARN: Type inference failed for: r0v823, types: [long] */
    /* JADX WARN: Type inference failed for: r0v831, types: [long] */
    /* JADX WARN: Type inference failed for: r0v838, types: [long] */
    /* JADX WARN: Type inference failed for: r0v841, types: [long] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r21) {
        /*
            Method dump skipped, instructions count: 5384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C1947u.handleMessage(android.os.Message):boolean");
    }
}
