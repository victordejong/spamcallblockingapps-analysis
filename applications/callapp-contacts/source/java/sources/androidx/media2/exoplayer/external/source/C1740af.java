package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1512d;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.metadata.icy.IcyHeaders;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.source.C1753ak;
import androidx.media2.exoplayer.external.source.C1833p;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.upstream.C1989v;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2002e;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.source.af */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af.class */
public final class C1740af implements AbstractC1601i, C1753ak.AbstractC1755b, AbstractC1840s, Loader.AbstractC1956a<C1741a>, Loader.AbstractC1960e {

    /* renamed from: v */
    private static final Format f6823v = Format.createSampleFormat("icy", "application/x-icy", Long.MAX_VALUE);

    /* renamed from: A */
    private final AbstractC1963b f6824A;

    /* renamed from: B */
    private final String f6825B;

    /* renamed from: C */
    private final long f6826C;

    /* renamed from: D */
    private final C1742b f6827D;

    /* renamed from: G */
    private boolean f6830G;

    /* renamed from: H */
    private boolean f6831H;

    /* renamed from: I */
    private boolean f6832I;

    /* renamed from: J */
    private int f6833J;

    /* renamed from: L */
    private boolean f6835L;

    /* renamed from: M */
    private int f6836M;

    /* renamed from: a */
    final AbstractC1845u.C1846a f6837a;

    /* renamed from: b */
    final AbstractC1743c f6838b;

    /* renamed from: f */
    AbstractC1840s.AbstractC1841a f6842f;

    /* renamed from: g */
    AbstractC1637o f6843g;

    /* renamed from: h */
    IcyHeaders f6844h;

    /* renamed from: l */
    boolean f6848l;

    /* renamed from: m */
    boolean f6849m;

    /* renamed from: n */
    C1744d f6850n;

    /* renamed from: o */
    boolean f6851o;

    /* renamed from: s */
    long f6855s;

    /* renamed from: t */
    boolean f6856t;

    /* renamed from: u */
    boolean f6857u;

    /* renamed from: w */
    private final Uri f6858w;

    /* renamed from: x */
    private final AbstractC1968f f6859x;

    /* renamed from: y */
    private final AbstractC1468k<?> f6860y;

    /* renamed from: z */
    private final AbstractC1986t f6861z;

    /* renamed from: c */
    final Loader f6839c = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: d */
    final C2002e f6840d = new C2002e();

    /* renamed from: E */
    private final Runnable f6828E = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.ag

        /* renamed from: a */
        private final C1740af f6887a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f6887a = this;
        }

        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 454
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.RunnableC1747ag.run():void");
        }
    };

    /* renamed from: F */
    private final Runnable f6829F = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.ah

        /* renamed from: a */
        private final C1740af f6888a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f6888a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1740af c1740af = this.f6888a;
            if (!c1740af.f6857u) {
                ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(c1740af.f6842f)).mo41806a((AbstractC1840s.AbstractC1841a) c1740af);
            }
        }
    };

    /* renamed from: e */
    final Handler f6841e = new Handler();

    /* renamed from: k */
    C1746f[] f6847k = new C1746f[0];

    /* renamed from: i */
    C1753ak[] f6845i = new C1753ak[0];

    /* renamed from: j */
    C1823j[] f6846j = new C1823j[0];

    /* renamed from: K */
    private long f6834K = -9223372036854775807L;

    /* renamed from: r */
    long f6854r = -1;

    /* renamed from: q */
    long f6853q = -9223372036854775807L;

    /* renamed from: p */
    int f6852p = 1;

    /* renamed from: androidx.media2.exoplayer.external.source.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$a.class */
    public final class C1741a implements C1833p.AbstractC1834a, Loader.AbstractC1959d {

        /* renamed from: a */
        final C1989v f6862a;

        /* renamed from: b */
        long f6863b;

        /* renamed from: f */
        private final Uri f6867f;

        /* renamed from: g */
        private final C1742b f6868g;

        /* renamed from: h */
        private final AbstractC1601i f6869h;

        /* renamed from: i */
        private final C2002e f6870i;

        /* renamed from: k */
        private volatile boolean f6872k;

        /* renamed from: m */
        private AbstractC1641q f6874m;

        /* renamed from: n */
        private boolean f6875n;

        /* renamed from: j */
        private final C1636n f6871j = new C1636n();

        /* renamed from: l */
        private boolean f6873l = true;

        /* renamed from: d */
        long f6865d = -1;

        /* renamed from: c */
        C1971h f6864c = m42342a(0);

        public C1741a(Uri uri, AbstractC1968f abstractC1968f, C1742b c1742b, AbstractC1601i abstractC1601i, C2002e c2002e) {
            C1740af.this = r6;
            this.f6867f = uri;
            this.f6862a = new C1989v(abstractC1968f);
            this.f6868g = c1742b;
            this.f6869h = abstractC1601i;
            this.f6870i = c2002e;
        }

        /* renamed from: a */
        private C1971h m42342a(long j) {
            return new C1971h(this.f6867f, j, -1L, C1740af.this.f6825B, 22);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
        /* renamed from: a */
        public final void mo41700a() {
            this.f6872k = true;
        }

        /* renamed from: a */
        final void m42341a(long j, long j2) {
            this.f6871j.f6500a = j;
            this.f6863b = j2;
            this.f6873l = true;
            this.f6875n = false;
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        @Override // androidx.media2.exoplayer.external.source.C1833p.AbstractC1834a
        /* renamed from: a */
        public final void mo42107a(C2018p c2018p) {
            char max = !this.f6875n ? this.f6863b : Math.max(C1740af.this.m42344n(), this.f6863b);
            int m41536b = c2018p.m41536b();
            AbstractC1641q abstractC1641q = (AbstractC1641q) C1993a.m41690a(this.f6874m);
            abstractC1641q.mo42306a(c2018p, m41536b);
            abstractC1641q.mo42313a(max, 1, m41536b, 0, null);
            this.f6875n = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v76, types: [long] */
        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
        /* renamed from: b */
        public final void mo41699b() throws IOException, InterruptedException {
            Throwable th;
            int i;
            int i2 = 0;
            while (i2 == 0 && !this.f6872k) {
                C1512d c1512d = null;
                try {
                    ?? r0 = this.f6871j.f6500a;
                    C1971h m42342a = m42342a((long) r0);
                    this.f6864c = m42342a;
                    long mo41199a = this.f6862a.mo41199a(m42342a);
                    this.f6865d = mo41199a;
                    if (mo41199a != -1) {
                        this.f6865d = mo41199a + r0;
                    }
                    Uri uri = (Uri) C1993a.m41690a(this.f6862a.mo41200a());
                    C1740af.this.f6844h = IcyHeaders.parse(this.f6862a.mo41696b());
                    C1989v c1989v = this.f6862a;
                    AbstractC1968f abstractC1968f = c1989v;
                    if (C1740af.this.f6844h != null) {
                        abstractC1968f = c1989v;
                        if (C1740af.this.f6844h.metadataInterval != -1) {
                            abstractC1968f = new C1833p(this.f6862a, C1740af.this.f6844h.metadataInterval, this);
                            AbstractC1641q m42360a = C1740af.this.m42360a(new C1746f(0, true));
                            this.f6874m = m42360a;
                            m42360a.mo42192a(C1740af.f6823v);
                        }
                    }
                    C1512d c1512d2 = new C1512d(abstractC1968f, r0, this.f6865d);
                    int i3 = i2;
                    try {
                        AbstractC1599g m42340a = this.f6868g.m42340a(c1512d2, this.f6869h, uri);
                        int i4 = i2;
                        char c = r0;
                        if (this.f6873l) {
                            int i5 = i2;
                            m42340a.mo42189a((long) r0, this.f6863b);
                            int i6 = i2;
                            this.f6873l = false;
                            c = r0;
                            i4 = i2;
                        }
                        while (i4 == 0 && !this.f6872k) {
                            int i7 = i4;
                            this.f6870i.m41592c();
                            int i8 = i4;
                            int mo42187a = m42340a.mo42187a(c1512d2, this.f6871j);
                            i4 = mo42187a;
                            if (c1512d2.mo42603c() > C1740af.this.f6826C + c) {
                                c = c1512d2.mo42603c();
                                this.f6870i.m41593b();
                                C1740af.this.f6841e.post(C1740af.this.f6829F);
                                i4 = mo42187a;
                            }
                        }
                        if (i4 == 1) {
                            i = 0;
                        } else {
                            this.f6871j.f6500a = c1512d2.mo42603c();
                            i = i4;
                        }
                        i2 = i;
                        C1996ac.m41662a((AbstractC1968f) this.f6862a);
                    } catch (Throwable th2) {
                        th = th2;
                        c1512d = c1512d2;
                        i2 = i3;
                        if (i2 != 1 && c1512d != null) {
                            this.f6871j.f6500a = c1512d.mo42603c();
                        }
                        C1996ac.m41662a((AbstractC1968f) this.f6862a);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.af$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$b.class */
    public static final class C1742b {

        /* renamed from: a */
        AbstractC1599g f6876a;

        /* renamed from: b */
        private final AbstractC1599g[] f6877b;

        public C1742b(AbstractC1599g[] abstractC1599gArr) {
            this.f6877b = abstractC1599gArr;
        }

        /* renamed from: a */
        public final AbstractC1599g m42340a(AbstractC1600h abstractC1600h, AbstractC1601i abstractC1601i, Uri uri) throws IOException, InterruptedException {
            AbstractC1599g abstractC1599g = this.f6876a;
            if (abstractC1599g != null) {
                return abstractC1599g;
            }
            AbstractC1599g[] abstractC1599gArr = this.f6877b;
            int i = 0;
            if (abstractC1599gArr.length == 1) {
                this.f6876a = abstractC1599gArr[0];
            } else {
                int length = abstractC1599gArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    AbstractC1599g abstractC1599g2 = abstractC1599gArr[i];
                    try {
                    } catch (EOFException e) {
                    } catch (Throwable th) {
                        abstractC1600h.mo42612a();
                        throw th;
                    }
                    if (abstractC1599g2.mo42188a(abstractC1600h)) {
                        this.f6876a = abstractC1599g2;
                        abstractC1600h.mo42612a();
                        break;
                    }
                    continue;
                    abstractC1600h.mo42612a();
                    i++;
                }
                if (this.f6876a == null) {
                    String m41628b = C1996ac.m41628b(this.f6877b);
                    StringBuilder sb = new StringBuilder(String.valueOf(m41628b).length() + 58);
                    sb.append("None of the available extractors (");
                    sb.append(m41628b);
                    sb.append(") could read the stream.");
                    throw new UnrecognizedInputFormatException(sb.toString(), uri);
                }
            }
            this.f6876a.mo42186a(abstractC1601i);
            return this.f6876a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.af$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$c.class */
    public interface AbstractC1743c {
        /* renamed from: a */
        void mo42339a(long j, boolean z);
    }

    /* renamed from: androidx.media2.exoplayer.external.source.af$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$d.class */
    public static final class C1744d {

        /* renamed from: a */
        public final AbstractC1637o f6878a;

        /* renamed from: b */
        public final TrackGroupArray f6879b;

        /* renamed from: c */
        public final boolean[] f6880c;

        /* renamed from: d */
        public final boolean[] f6881d;

        /* renamed from: e */
        public final boolean[] f6882e;

        public C1744d(AbstractC1637o abstractC1637o, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f6878a = abstractC1637o;
            this.f6879b = trackGroupArray;
            this.f6880c = zArr;
            this.f6881d = new boolean[trackGroupArray.length];
            this.f6882e = new boolean[trackGroupArray.length];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.af$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$e.class */
    final class C1745e implements AbstractC1756al {

        /* renamed from: a */
        final int f6883a;

        public C1745e(int i) {
            C1740af.this = r4;
            this.f6883a = i;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final int mo42118a(long j) {
            C1740af c1740af = C1740af.this;
            int i = this.f6883a;
            int i2 = 0;
            if (c1740af.m42349h()) {
                return 0;
            }
            c1740af.m42362a(i);
            C1753ak c1753ak = c1740af.f6845i[i];
            if (!c1740af.f6856t || j <= c1753ak.f6931a.m42321e()) {
                int m42311a = c1753ak.m42311a(j, true);
                if (m42311a != -1) {
                    i2 = m42311a;
                }
            } else {
                i2 = c1753ak.f6931a.m42318h();
            }
            if (i2 == 0) {
                c1740af.m42356b(i);
            }
            return i2;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final int mo42117a(C2058x c2058x, C1442e c1442e, boolean z) {
            C1740af c1740af = C1740af.this;
            int i = this.f6883a;
            if (c1740af.m42349h()) {
                return -3;
            }
            c1740af.m42362a(i);
            int m42123a = c1740af.f6846j[i].m42123a(c2058x, c1442e, z, c1740af.f6856t, c1740af.f6855s);
            if (m42123a == -3) {
                c1740af.m42356b(i);
            }
            return m42123a;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: a */
        public final boolean mo42119a() {
            C1740af c1740af = C1740af.this;
            return !c1740af.m42349h() && c1740af.f6846j[this.f6883a].m42122a(c1740af.f6856t);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
        /* renamed from: b */
        public final void mo42116b() throws IOException {
            C1740af c1740af = C1740af.this;
            c1740af.f6846j[this.f6883a].m42121b();
            c1740af.m42350g();
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.af$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$f.class */
    public static final class C1746f {

        /* renamed from: a */
        public final int f6885a;

        /* renamed from: b */
        public final boolean f6886b;

        public C1746f(int i, boolean z) {
            this.f6885a = i;
            this.f6886b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C1746f c1746f = (C1746f) obj;
            return this.f6885a == c1746f.f6885a && this.f6886b == c1746f.f6886b;
        }

        public final int hashCode() {
            return (this.f6885a * 31) + (this.f6886b ? 1 : 0);
        }
    }

    public C1740af(Uri uri, AbstractC1968f abstractC1968f, AbstractC1599g[] abstractC1599gArr, AbstractC1468k<?> abstractC1468k, AbstractC1986t abstractC1986t, AbstractC1845u.C1846a c1846a, AbstractC1743c abstractC1743c, AbstractC1963b abstractC1963b, String str, int i) {
        this.f6858w = uri;
        this.f6859x = abstractC1968f;
        this.f6860y = abstractC1468k;
        this.f6861z = abstractC1986t;
        this.f6837a = c1846a;
        this.f6838b = abstractC1743c;
        this.f6824A = abstractC1963b;
        this.f6825B = str;
        this.f6826C = i;
        this.f6827D = new C1742b(abstractC1599gArr);
        c1846a.m42054a();
    }

    /* renamed from: a */
    private void m42361a(C1741a c1741a) {
        if (this.f6854r == -1) {
            this.f6854r = c1741a.f6865d;
        }
    }

    /* renamed from: a */
    private boolean m42357a(boolean[] zArr, long j) {
        int length = this.f6845i.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i < length) {
                C1753ak c1753ak = this.f6845i[i];
                c1753ak.m42304b();
                if (c1753ak.m42311a(j, false) == -1) {
                    z = false;
                }
                if (!z && (zArr[i] || !this.f6851o)) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    /* renamed from: k */
    private C1744d m42347k() {
        return (C1744d) C1993a.m41690a(this.f6850n);
    }

    /* renamed from: l */
    private void m42346l() {
        C1741a c1741a = new C1741a(this.f6858w, this.f6859x, this.f6827D, this, this.f6840d);
        if (this.f6849m) {
            AbstractC1637o abstractC1637o = m42347k().f6878a;
            C1993a.m41686b(m42343o());
            long j = this.f6853q;
            if (j != -9223372036854775807L && this.f6834K > j) {
                this.f6856t = true;
                this.f6834K = -9223372036854775807L;
                return;
            }
            c1741a.m42341a(abstractC1637o.mo42504a(this.f6834K).f6501a.f6507c, this.f6834K);
            this.f6834K = -9223372036854775807L;
        }
        this.f6836M = m42345m();
        this.f6837a.m42046a(c1741a.f6864c, 1, -1, (Format) null, 0, (Object) null, c1741a.f6863b, this.f6853q, this.f6839c.m41762a(c1741a, this, this.f6861z.mo41703a(this.f6852p)));
    }

    /* renamed from: m */
    private int m42345m() {
        int i = 0;
        for (C1753ak c1753ak : this.f6845i) {
            i += c1753ak.f6931a.m42337a();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: n */
    public long m42344n() {
        char c = 0;
        for (C1753ak c1753ak : this.f6845i) {
            c = Math.max((long) c, c1753ak.f6931a.m42321e());
        }
        return c;
    }

    /* renamed from: o */
    private boolean m42343o() {
        return this.f6834K != -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42085a(long j, C1378aj c1378aj) {
        AbstractC1637o abstractC1637o = m42347k().f6878a;
        if (!abstractC1637o.mo42502j_()) {
            return 0L;
        }
        AbstractC1637o.C1638a mo42504a = abstractC1637o.mo42504a(j);
        return C1996ac.m41670a(j, c1378aj, mo42504a.f6501a.f6506b, mo42504a.f6502b.f6506b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final long mo42082a(AbstractC1940e[] abstractC1940eArr, boolean[] zArr, AbstractC1756al[] abstractC1756alArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        C1744d m42347k = m42347k();
        TrackGroupArray trackGroupArray = m42347k.f6879b;
        boolean[] zArr3 = m42347k.f6881d;
        int i = this.f6833J;
        for (int i2 = 0; i2 < abstractC1940eArr.length; i2++) {
            if (abstractC1756alArr[i2] != null && (abstractC1940eArr[i2] == null || !zArr[i2])) {
                int i3 = ((C1745e) abstractC1756alArr[i2]).f6883a;
                C1993a.m41686b(zArr3[i3]);
                this.f6833J--;
                zArr3[i3] = false;
                abstractC1756alArr[i2] = null;
            }
        }
        boolean z2 = !this.f6830G ? j != 0 : i == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= abstractC1940eArr.length) {
                break;
            }
            z2 = z;
            if (abstractC1756alArr[i4] == null) {
                z2 = z;
                if (abstractC1940eArr[i4] != null) {
                    AbstractC1940e abstractC1940e = abstractC1940eArr[i4];
                    C1993a.m41686b(abstractC1940e.mo41826f() == 1);
                    C1993a.m41686b(abstractC1940e.mo41831b(0) == 0);
                    int indexOf = trackGroupArray.indexOf(abstractC1940e.mo41827e());
                    C1993a.m41686b(!zArr3[indexOf]);
                    this.f6833J++;
                    zArr3[indexOf] = true;
                    abstractC1756alArr[i4] = new C1745e(indexOf);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        C1753ak c1753ak = this.f6845i[indexOf];
                        c1753ak.m42304b();
                        z2 = c1753ak.m42311a(j, true) == -1 && c1753ak.f6931a.m42328b() != 0;
                    }
                }
            }
            i4++;
        }
        if (this.f6833J == 0) {
            this.f6835L = false;
            this.f6831H = false;
            if (!this.f6839c.m41764a()) {
                C1753ak[] c1753akArr = this.f6845i;
                int length = c1753akArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    c1753akArr[i5].m42305a(false);
                    i5++;
                }
            } else {
                for (C1753ak c1753ak2 : this.f6845i) {
                    c1753ak2.m42301c();
                }
                this.f6839c.m41756b();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? mo42080b = mo42080b(j);
                int i6 = 0;
                while (true) {
                    c = mo42080b;
                    if (i6 >= abstractC1756alArr.length) {
                        break;
                    }
                    if (abstractC1756alArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.f6830G = true;
        return c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final AbstractC1641q mo42213a(int i, int i2) {
        return m42360a(new C1746f(i, false));
    }

    /* renamed from: a */
    final AbstractC1641q m42360a(C1746f c1746f) {
        int length = this.f6845i.length;
        for (int i = 0; i < length; i++) {
            if (c1746f.equals(this.f6847k[i])) {
                return this.f6845i[i];
            }
        }
        C1753ak c1753ak = new C1753ak(this.f6824A);
        c1753ak.f6936f = this;
        int i2 = length + 1;
        C1746f[] c1746fArr = (C1746f[]) Arrays.copyOf(this.f6847k, i2);
        c1746fArr[length] = c1746f;
        this.f6847k = (C1746f[]) C1996ac.m41643a((Object[]) c1746fArr);
        C1753ak[] c1753akArr = (C1753ak[]) Arrays.copyOf(this.f6845i, i2);
        c1753akArr[length] = c1753ak;
        this.f6845i = (C1753ak[]) C1996ac.m41643a((Object[]) c1753akArr);
        C1823j[] c1823jArr = (C1823j[]) Arrays.copyOf(this.f6846j, i2);
        c1823jArr[length] = new C1823j(this.f6845i[length], this.f6860y);
        this.f6846j = (C1823j[]) C1996ac.m41643a((Object[]) c1823jArr);
        return c1753ak;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ androidx.media2.exoplayer.external.upstream.Loader.C1957b mo41753a(androidx.media2.exoplayer.external.source.C1740af.C1741a r24, long r25, long r27, java.io.IOException r29, int r30) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1740af.mo41753a(androidx.media2.exoplayer.external.upstream.Loader$d, long, long, java.io.IOException, int):androidx.media2.exoplayer.external.upstream.Loader$b");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final void mo42215a() {
        this.f6848l = true;
        this.f6841e.post(this.f6828E);
    }

    /* renamed from: a */
    final void m42362a(int i) {
        C1744d m42347k = m42347k();
        boolean[] zArr = m42347k.f6882e;
        if (!zArr[i]) {
            Format format = m42347k.f6879b.get(i).getFormat(0);
            this.f6837a.m42053a(C2012m.m41568g(format.sampleMimeType), format, 0, null, this.f6855s);
            zArr[i] = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    public final void mo42086a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42084a(long j, boolean z) {
        if (m42343o()) {
            return;
        }
        boolean[] zArr = m42347k().f6881d;
        int length = this.f6845i.length;
        for (int i = 0; i < length; i++) {
            this.f6845i[i].m42310a(j, z, zArr[i]);
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1601i
    /* renamed from: a */
    public final void mo42209a(AbstractC1637o abstractC1637o) {
        if (this.f6844h != null) {
            abstractC1637o = new AbstractC1637o.C1639b(-9223372036854775807L);
        }
        this.f6843g = abstractC1637o;
        this.f6841e.post(this.f6828E);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: a */
    public final void mo42083a(AbstractC1840s.AbstractC1841a abstractC1841a, long j) {
        this.f6842f = abstractC1841a;
        this.f6840d.m41594a();
        m42346l();
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41754a(C1741a c1741a, long j, long j2) {
        AbstractC1637o abstractC1637o;
        C1741a c1741a2 = c1741a;
        if (this.f6853q == -9223372036854775807L && (abstractC1637o = this.f6843g) != null) {
            boolean mo42502j_ = abstractC1637o.mo42502j_();
            long m42344n = m42344n();
            char c = m42344n == Long.MIN_VALUE ? (char) 0 : m42344n + 10000;
            this.f6853q = c;
            this.f6838b.mo42339a(c, mo42502j_);
        }
        this.f6837a.m42044a(c1741a2.f6864c, c1741a2.f6862a.f8048b, c1741a2.f6862a.f8049c, 1, -1, null, 0, null, c1741a2.f6863b, this.f6853q, j, j2, c1741a2.f6862a.f8047a);
        m42361a(c1741a2);
        this.f6856t = true;
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6842f)).mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1956a
    /* renamed from: a */
    public final /* synthetic */ void mo41752a(C1741a c1741a, long j, long j2, boolean z) {
        C1741a c1741a2 = c1741a;
        this.f6837a.m42038b(c1741a2.f6864c, c1741a2.f6862a.f8048b, c1741a2.f6862a.f8049c, 1, -1, null, 0, null, c1741a2.f6863b, this.f6853q, j, j2, c1741a2.f6862a.f8047a);
        if (!z) {
            m42361a(c1741a2);
            for (C1753ak c1753ak : this.f6845i) {
                c1753ak.m42305a(false);
            }
            if (this.f6833J <= 0) {
                return;
            }
            ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6842f)).mo41806a((AbstractC1840s.AbstractC1841a) this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.media2.exoplayer.external.source.af] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final long mo42080b(long j) {
        C1744d m42347k = m42347k();
        AbstractC1637o abstractC1637o = m42347k.f6878a;
        boolean[] zArr = m42347k.f6880c;
        ?? r6 = j;
        if (!abstractC1637o.mo42502j_()) {
            r6 = 0;
        }
        this.f6831H = false;
        this.f6855s = r6;
        if (m42343o()) {
            this.f6834K = r6;
            return r6;
        } else if (this.f6852p != 7 && m42357a(zArr, r6)) {
            return r6;
        } else {
            this.f6835L = false;
            this.f6834K = r6;
            this.f6856t = false;
            if (this.f6839c.m41764a()) {
                this.f6839c.m41756b();
            } else {
                for (C1753ak c1753ak : this.f6845i) {
                    c1753ak.m42305a(false);
                }
            }
            return r6;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: b */
    public final TrackGroupArray mo42081b() {
        return m42347k().f6879b;
    }

    /* renamed from: b */
    final void m42356b(int i) {
        boolean[] zArr = m42347k().f6880c;
        if (!this.f6835L || !zArr[i] || this.f6845i[i].f6931a.m42324c()) {
            return;
        }
        this.f6834K = 0L;
        this.f6835L = false;
        this.f6831H = true;
        this.f6855s = 0L;
        this.f6836M = 0;
        for (C1753ak c1753ak : this.f6845i) {
            c1753ak.m42305a(false);
        }
        ((AbstractC1840s.AbstractC1841a) C1993a.m41690a(this.f6842f)).mo41806a((AbstractC1840s.AbstractC1841a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: c */
    public final long mo42079c() {
        if (!this.f6832I) {
            this.f6837a.m42036c();
            this.f6832I = true;
        }
        if (this.f6831H) {
            if (!this.f6856t && m42345m() <= this.f6836M) {
                return -9223372036854775807L;
            }
            this.f6831H = false;
            return this.f6855s;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    public final boolean mo42078c(long j) {
        if (this.f6856t || this.f6835L) {
            return false;
        }
        if (this.f6849m && this.f6833J == 0) {
            return false;
        }
        boolean m41594a = this.f6840d.m41594a();
        if (!this.f6839c.m41764a()) {
            m42346l();
            m41594a = true;
        }
        return m41594a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    public final long mo42077d() {
        char c;
        boolean[] zArr = m42347k().f6880c;
        if (this.f6856t) {
            return Long.MIN_VALUE;
        }
        if (m42343o()) {
            return this.f6834K;
        }
        if (this.f6851o) {
            int length = this.f6845i.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.f6845i[i].f6931a.m42320f()) {
                        c3 = Math.min((long) c2, this.f6845i[i].f6931a.m42321e());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == Long.MAX_VALUE) {
            c4 = m42344n();
        }
        return c4 == Long.MIN_VALUE ? this.f6855s : c4;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s, androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    public final long mo42076e() {
        if (this.f6833J == 0) {
            return Long.MIN_VALUE;
        }
        return mo42077d();
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1960e
    /* renamed from: f */
    public final void mo41745f() {
        for (C1753ak c1753ak : this.f6845i) {
            c1753ak.m42305a(false);
        }
        for (C1823j c1823j : this.f6846j) {
            c1823j.m42124a();
        }
        C1742b c1742b = this.f6827D;
        if (c1742b.f6876a != null) {
            c1742b.f6876a = null;
        }
    }

    /* renamed from: g */
    final void m42350g() throws IOException {
        this.f6839c.m41763a(this.f6861z.mo41703a(this.f6852p));
    }

    /* renamed from: h */
    final boolean m42349h() {
        return this.f6831H || m42343o();
    }

    @Override // androidx.media2.exoplayer.external.source.C1753ak.AbstractC1755b
    /* renamed from: i */
    public final void mo42197i() {
        this.f6841e.post(this.f6828E);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1840s
    /* renamed from: k_ */
    public final void mo42075k_() throws IOException {
        m42350g();
        if (!this.f6856t || this.f6849m) {
            return;
        }
        throw new ParserException("Loading finished before preparation is complete.");
    }
}
