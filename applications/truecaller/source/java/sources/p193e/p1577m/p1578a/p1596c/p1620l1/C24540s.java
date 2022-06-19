package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1597b1.AbstractC24193b;
import p193e.p1577m.p1578a.p1596c.p1597b1.C24190a;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24534q;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24527n;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24551v;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24679b0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24691d0;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24751u;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24779i;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
/* renamed from: e.m.a.c.l1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s.class */
public final class C24540s implements AbstractC24529o, AbstractC24409i, C24681c0.AbstractC24683b<C24541a>, C24681c0.AbstractC24687f, C24551v.AbstractC24553b {

    /* renamed from: Q */
    public static final Map<String, String> f68520Q;

    /* renamed from: R */
    public static final Format f68521R = Format.m39251i("icy", "application/x-icy", RecyclerView.FOREVER_NS);

    /* renamed from: A */
    public boolean f68522A;

    /* renamed from: B */
    public boolean f68523B;

    /* renamed from: C */
    public int f68524C;

    /* renamed from: J */
    public boolean f68527J;

    /* renamed from: K */
    public long f68528K;

    /* renamed from: M */
    public boolean f68530M;

    /* renamed from: N */
    public int f68531N;

    /* renamed from: O */
    public boolean f68532O;

    /* renamed from: P */
    public boolean f68533P;

    /* renamed from: a */
    public final Uri f68534a;

    /* renamed from: b */
    public final AbstractC24739l f68535b;

    /* renamed from: c */
    public final AbstractC24279e<?> f68536c;

    /* renamed from: d */
    public final AbstractC24679b0 f68537d;

    /* renamed from: e */
    public final AbstractC24534q.C24535a f68538e;

    /* renamed from: f */
    public final AbstractC24543c f68539f;

    /* renamed from: g */
    public final AbstractC24690d f68540g;

    /* renamed from: h */
    public final String f68541h;

    /* renamed from: i */
    public final long f68542i;

    /* renamed from: k */
    public final C24542b f68544k;

    /* renamed from: p */
    public AbstractC24529o.AbstractC24530a f68549p;

    /* renamed from: q */
    public AbstractC24418q f68550q;

    /* renamed from: r */
    public IcyHeaders f68551r;

    /* renamed from: u */
    public boolean f68554u;

    /* renamed from: v */
    public boolean f68555v;

    /* renamed from: w */
    public C24544d f68556w;

    /* renamed from: x */
    public boolean f68557x;

    /* renamed from: z */
    public boolean f68559z;

    /* renamed from: j */
    public final C24681c0 f68543j = new C24681c0("Loader:ProgressiveMediaPeriod");

    /* renamed from: l */
    public final C24779i f68545l = new C24779i();

    /* renamed from: m */
    public final Runnable f68546m = new Runnable() { // from class: e.m.a.c.l1.i
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 631
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.RunnableC24521i.run():void");
        }
    };

    /* renamed from: n */
    public final Runnable f68547n = new Runnable() { // from class: e.m.a.c.l1.j
        @Override // java.lang.Runnable
        public final void run() {
            C24540s c24540s = C24540s.this;
            if (!c24540s.f68533P) {
                AbstractC24529o.AbstractC24530a abstractC24530a = c24540s.f68549p;
                Objects.requireNonNull(abstractC24530a);
                abstractC24530a.mo4908g(c24540s);
            }
        }
    };

    /* renamed from: o */
    public final Handler f68548o = new Handler();

    /* renamed from: t */
    public C24546f[] f68553t = new C24546f[0];

    /* renamed from: s */
    public C24551v[] f68552s = new C24551v[0];

    /* renamed from: L */
    public long f68529L = -9223372036854775807L;

    /* renamed from: E */
    public long f68526E = -1;

    /* renamed from: D */
    public long f68525D = -9223372036854775807L;

    /* renamed from: y */
    public int f68558y = 1;

    /* renamed from: e.m.a.c.l1.s$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$a.class */
    public final class C24541a implements C24681c0.AbstractC24686e, C24527n.AbstractC24528a {

        /* renamed from: a */
        public final Uri f68560a;

        /* renamed from: b */
        public final C24691d0 f68561b;

        /* renamed from: c */
        public final C24542b f68562c;

        /* renamed from: d */
        public final AbstractC24409i f68563d;

        /* renamed from: e */
        public final C24779i f68564e;

        /* renamed from: g */
        public volatile boolean f68566g;

        /* renamed from: i */
        public long f68568i;

        /* renamed from: l */
        public AbstractC24422s f68571l;

        /* renamed from: m */
        public boolean f68572m;

        /* renamed from: f */
        public final C24417p f68565f = new C24417p();

        /* renamed from: h */
        public boolean f68567h = true;

        /* renamed from: k */
        public long f68570k = -1;

        /* renamed from: j */
        public C24742n f68569j = m4945a(0);

        public C24541a(Uri uri, AbstractC24739l abstractC24739l, C24542b c24542b, AbstractC24409i abstractC24409i, C24779i c24779i) {
            C24540s.this = r6;
            this.f68560a = uri;
            this.f68561b = new C24691d0(abstractC24739l);
            this.f68562c = c24542b;
            this.f68563d = abstractC24409i;
            this.f68564e = c24779i;
        }

        /* renamed from: a */
        public final C24742n m4945a(long j) {
            return new C24742n(this.f68560a, 1, null, j, j, -1L, C24540s.this.f68541h, 6, C24540s.f68520Q);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0223 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0002 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x012a  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0166 A[LOOP:2: B:56:0x0166->B:59:0x016d, LOOP_START] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0203  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0209  */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v88, types: [long] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m4944b() throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 637
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.C24541a.m4944b():void");
        }
    }

    /* renamed from: e.m.a.c.l1.s$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$b.class */
    public static final class C24542b {

        /* renamed from: a */
        public final AbstractC24408h[] f68574a;

        /* renamed from: b */
        public AbstractC24408h f68575b;

        public C24542b(AbstractC24408h[] abstractC24408hArr) {
            this.f68574a = abstractC24408hArr;
        }

        /* renamed from: a */
        public AbstractC24408h m4943a(C24353e c24353e, AbstractC24409i abstractC24409i, Uri uri) throws IOException, InterruptedException {
            AbstractC24408h abstractC24408h = this.f68575b;
            if (abstractC24408h != null) {
                return abstractC24408h;
            }
            AbstractC24408h[] abstractC24408hArr = this.f68574a;
            if (abstractC24408hArr.length == 1) {
                this.f68575b = abstractC24408hArr[0];
            } else {
                int length = abstractC24408hArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    AbstractC24408h abstractC24408h2 = abstractC24408hArr[i];
                    try {
                    } catch (EOFException e) {
                    } catch (Throwable th) {
                        c24353e.f67728f = 0;
                        throw th;
                    }
                    if (abstractC24408h2.mo5126i(c24353e)) {
                        this.f68575b = abstractC24408h2;
                        c24353e.f67728f = 0;
                        break;
                    }
                    continue;
                    c24353e.f67728f = 0;
                    i++;
                }
                if (this.f68575b == null) {
                    StringBuilder m8728C = C22128a.m8728C("None of the available extractors (");
                    AbstractC24408h[] abstractC24408hArr2 = this.f68574a;
                    int i2 = C24773d0.f69427a;
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 0; i3 < abstractC24408hArr2.length; i3++) {
                        sb.append(abstractC24408hArr2[i3].getClass().getSimpleName());
                        if (i3 < abstractC24408hArr2.length - 1) {
                            sb.append(", ");
                        }
                    }
                    m8728C.append(sb.toString());
                    m8728C.append(") could read the stream.");
                    throw new C24558z(m8728C.toString(), uri);
                }
            }
            this.f68575b.mo5127h(abstractC24409i);
            return this.f68575b;
        }
    }

    /* renamed from: e.m.a.c.l1.s$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$c.class */
    public interface AbstractC24543c {
    }

    /* renamed from: e.m.a.c.l1.s$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$d.class */
    public static final class C24544d {

        /* renamed from: a */
        public final AbstractC24418q f68576a;

        /* renamed from: b */
        public final TrackGroupArray f68577b;

        /* renamed from: c */
        public final boolean[] f68578c;

        /* renamed from: d */
        public final boolean[] f68579d;

        /* renamed from: e */
        public final boolean[] f68580e;

        public C24544d(AbstractC24418q abstractC24418q, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f68576a = abstractC24418q;
            this.f68577b = trackGroupArray;
            this.f68578c = zArr;
            int i = trackGroupArray.f5003a;
            this.f68579d = new boolean[i];
            this.f68580e = new boolean[i];
        }
    }

    /* renamed from: e.m.a.c.l1.s$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$e.class */
    public final class C24545e implements AbstractC24554w {

        /* renamed from: a */
        public final int f68581a;

        public C24545e(int i) {
            C24540s.this = r4;
            this.f68581a = i;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: a */
        public void mo4912a() throws IOException {
            C24540s c24540s = C24540s.this;
            C24551v c24551v = c24540s.f68552s[this.f68581a];
            AbstractC24276c<?> abstractC24276c = c24551v.f68619f;
            if (abstractC24276c == null || abstractC24276c.getState() != 1) {
                c24540s.m4947y();
                return;
            }
            AbstractC24276c.C24277a mo5313b = c24551v.f68619f.mo5313b();
            Objects.requireNonNull(mo5313b);
            throw mo5313b;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: b */
        public boolean mo4911b() {
            C24540s c24540s = C24540s.this;
            return !c24540s.m4969B() && c24540s.f68552s[this.f68581a].m4917m(c24540s.f68532O);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: c */
        public int mo4910c(long j) {
            int i;
            int i2;
            C24540s c24540s = C24540s.this;
            int i3 = this.f68581a;
            int i4 = 0;
            int i5 = 0;
            if (!c24540s.m4969B()) {
                c24540s.m4949w(i3);
                C24551v c24551v = c24540s.f68552s[i3];
                if (!c24540s.f68532O || j <= c24551v.m4922h()) {
                    synchronized (c24551v) {
                        int m4920j = c24551v.m4920j(c24551v.f68631r);
                        if (c24551v.m4918l() && j >= c24551v.f68625l[m4920j]) {
                            int m4923g = c24551v.m4923g(m4920j, c24551v.f68628o - c24551v.f68631r, j, true);
                            if (m4923g != -1) {
                                c24551v.f68631r += m4923g;
                                i5 = m4923g;
                            }
                        }
                    }
                } else {
                    synchronized (c24551v) {
                        i = c24551v.f68628o;
                        i2 = c24551v.f68631r;
                        c24551v.f68631r = i;
                    }
                    i5 = i - i2;
                }
                i4 = i5;
                if (i5 == 0) {
                    c24540s.m4948x(i3);
                    i4 = i5;
                }
            }
            return i4;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x0381, code lost:
            if (r0.length < r21) goto L126;
         */
        /* JADX WARN: Code restructure failed: missing block: B:130:0x039e, code lost:
            if (r0.length < r21) goto L131;
         */
        /* JADX WARN: Removed duplicated region for block: B:165:0x014e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x013b A[Catch: all -> 0x05c8, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0044, B:8:0x004c, B:10:0x0058, B:12:0x0068, B:14:0x0076, B:43:0x013b, B:49:0x0158, B:52:0x0163, B:56:0x0173, B:59:0x017f, B:63:0x0191, B:67:0x01a0, B:70:0x01b3, B:72:0x01bd, B:75:0x01cc, B:78:0x01f0, B:80:0x01f7, B:82:0x01fd, B:90:0x021c, B:93:0x0259), top: B:162:0x0044 }] */
        /* JADX WARN: Type inference failed for: r0v148, types: [long] */
        /* JADX WARN: Type inference failed for: r0v170, types: [long] */
        /* JADX WARN: Type inference failed for: r0v94, types: [long] */
        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo4909d(p193e.p1577m.p1578a.p1596c.C24286g0 r9, p193e.p1577m.p1578a.p1596c.p1600e1.C24265e r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 1486
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.C24545e.mo4909d(e.m.a.c.g0, e.m.a.c.e1.e, boolean):int");
        }
    }

    /* renamed from: e.m.a.c.l1.s$f */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/s$f.class */
    public static final class C24546f {

        /* renamed from: a */
        public final int f68583a;

        /* renamed from: b */
        public final boolean f68584b;

        public C24546f(int i, boolean z) {
            this.f68583a = i;
            this.f68584b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C24546f.class != obj.getClass()) {
                return false;
            }
            C24546f c24546f = (C24546f) obj;
            if (this.f68583a != c24546f.f68583a || this.f68584b != c24546f.f68584b) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f68583a * 31) + (this.f68584b ? 1 : 0);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        f68520Q = Collections.unmodifiableMap(hashMap);
    }

    public C24540s(Uri uri, AbstractC24739l abstractC24739l, AbstractC24408h[] abstractC24408hArr, AbstractC24279e<?> abstractC24279e, AbstractC24679b0 abstractC24679b0, final AbstractC24534q.C24535a c24535a, AbstractC24543c abstractC24543c, AbstractC24690d abstractC24690d, String str, int i) {
        this.f68534a = uri;
        this.f68535b = abstractC24739l;
        this.f68536c = abstractC24279e;
        this.f68537d = abstractC24679b0;
        this.f68538e = c24535a;
        this.f68539f = abstractC24543c;
        this.f68540g = abstractC24690d;
        this.f68541h = str;
        this.f68542i = i;
        this.f68544k = new C24542b(abstractC24408hArr);
        final AbstractC24531p.C24532a c24532a = c24535a.f68513b;
        Objects.requireNonNull(c24532a);
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            final AbstractC24534q abstractC24534q = next.f68517b;
            c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.h
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                    AbstractC24534q abstractC24534q2 = abstractC24534q;
                    AbstractC24531p.C24532a c24532a2 = c24532a;
                    int i2 = c24535a2.f68512a;
                    C24190a c24190a = (C24190a) abstractC24534q2;
                    C24190a.C24192b c24192b = c24190a.f66949d;
                    int mo4361b = c24192b.f66960g.mo4361b(c24532a2.f68507a);
                    boolean z = mo4361b != -1;
                    C24190a.C24191a c24191a = new C24190a.C24191a(c24532a2, z ? c24192b.f66960g : AbstractC24861y0.f69725a, z ? c24192b.f66960g.m4367f(mo4361b, c24192b.f66956c).f69727b : i2);
                    c24192b.f66954a.add(c24191a);
                    c24192b.f66955b.put(c24532a2, c24191a);
                    c24192b.f66957d = c24192b.f66954a.get(0);
                    if (c24192b.f66954a.size() == 1 && !c24192b.f66960g.m4362p()) {
                        c24192b.f66958e = c24192b.f66957d;
                    }
                    c24190a.m5496v(i2, c24532a2);
                    Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                    while (it2.hasNext()) {
                        it2.next().m5475g();
                    }
                }
            });
        }
    }

    /* renamed from: A */
    public final void m4970A() {
        C24541a c24541a = new C24541a(this.f68534a, this.f68535b, this.f68544k, this, this.f68545l);
        if (this.f68555v) {
            C24544d c24544d = this.f68556w;
            Objects.requireNonNull(c24544d);
            AbstractC24418q abstractC24418q = c24544d.f68576a;
            C26232y.m2286x(m4950v());
            long j = this.f68525D;
            if (j != -9223372036854775807L && this.f68529L > j) {
                this.f68532O = true;
                this.f68529L = -9223372036854775807L;
                return;
            }
            long j2 = abstractC24418q.mo5144b(this.f68529L).f68117a.f68123b;
            long j3 = this.f68529L;
            c24541a.f68565f.f68116a = j2;
            c24541a.f68568i = j3;
            c24541a.f68567h = true;
            c24541a.f68572m = false;
            this.f68529L = -9223372036854775807L;
        }
        this.f68531N = m4952t();
        C24681c0 c24681c0 = this.f68543j;
        int m4660a = ((C24751u) this.f68537d).m4660a(this.f68558y);
        Objects.requireNonNull(c24681c0);
        Looper myLooper = Looper.myLooper();
        C26232y.m2278z(myLooper);
        c24681c0.f69169c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new C24681c0.HandlerC24685d(myLooper, c24541a, this, m4660a, elapsedRealtime).m4769b(0L);
        final AbstractC24534q.C24535a c24535a = this.f68538e;
        C24742n c24742n = c24541a.f68569j;
        long j4 = c24541a.f68568i;
        long j5 = this.f68525D;
        Objects.requireNonNull(c24535a);
        final AbstractC24534q.C24537b c24537b = new AbstractC24534q.C24537b(c24742n, c24742n.f69328a, Collections.emptyMap(), elapsedRealtime, 0L, 0L);
        final AbstractC24534q.C24538c c24538c = new AbstractC24534q.C24538c(1, -1, null, 0, null, c24535a.m4972a(j4), c24535a.m4972a(j5));
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            final AbstractC24534q abstractC24534q = next.f68517b;
            c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.a
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                    AbstractC24534q abstractC24534q2 = abstractC24534q;
                    int i = c24535a2.f68512a;
                    AbstractC24531p.C24532a c24532a = c24535a2.f68513b;
                    C24190a c24190a = (C24190a) abstractC24534q2;
                    c24190a.m5496v(i, c24532a);
                    Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                    while (it2.hasNext()) {
                        it2.next().m5466p();
                    }
                }
            });
        }
    }

    /* renamed from: B */
    public final boolean m4969B() {
        return this.f68522A || m4950v();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: a */
    public boolean mo4968a(long j) {
        if (!this.f68532O) {
            if ((this.f68543j.f69169c != null) || this.f68530M) {
                return false;
            }
            if (this.f68555v && this.f68524C == 0) {
                return false;
            }
            boolean m4590a = this.f68545l.m4590a();
            if (!this.f68543j.m4774b()) {
                m4970A();
                m4590a = true;
            }
            return m4590a;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: b */
    public long mo4967b() {
        char c;
        boolean z;
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        boolean[] zArr = c24544d.f68578c;
        if (this.f68532O) {
            return Long.MIN_VALUE;
        }
        if (m4950v()) {
            return this.f68529L;
        }
        if (this.f68557x) {
            int length = this.f68552s.length;
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
                    C24551v c24551v = this.f68552s[i];
                    synchronized (c24551v) {
                        z = c24551v.f68634u;
                    }
                    c3 = c2;
                    if (!z) {
                        c3 = Math.min((long) c2, this.f68552s[i].m4922h());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == RecyclerView.FOREVER_NS) {
            c4 = m4951u();
        }
        char c5 = c4;
        if (c4 == Long.MIN_VALUE) {
            c5 = this.f68528K;
        }
        return c5;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: c */
    public void mo4966c(long j) {
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: d */
    public long mo4965d() {
        return this.f68524C == 0 ? (char) 0 : mo4967b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v48, types: [e.m.a.c.l1.v[]] */
    /* JADX WARN: Type inference failed for: r0v49, types: [e.m.a.c.l1.v] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: e */
    public long mo4964e(long j) {
        boolean z;
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        AbstractC24418q abstractC24418q = c24544d.f68576a;
        boolean[] zArr = c24544d.f68578c;
        ?? r6 = j;
        if (!abstractC24418q.mo5143c()) {
            r6 = 0;
        }
        this.f68522A = false;
        this.f68528K = r6;
        if (m4950v()) {
            this.f68529L = r6;
            return r6;
        }
        if (this.f68558y != 7) {
            int length = this.f68552s.length;
            for (int i = 0; i < length; i++) {
                if (!this.f68552s[i].m4913q(r6, false) && (zArr[i] || !this.f68557x)) {
                    z = false;
                    break;
                }
            }
            z = true;
            if (z) {
                return r6;
            }
        }
        this.f68530M = false;
        this.f68529L = r6;
        this.f68532O = false;
        if (this.f68543j.m4774b()) {
            C24681c0.HandlerC24685d<? extends C24681c0.AbstractC24686e> handlerC24685d = this.f68543j.f69168b;
            C26232y.m2278z(handlerC24685d);
            handlerC24685d.m4770a(false);
        } else {
            this.f68543j.f69169c = null;
            for (C24551v c24551v : this.f68552s) {
                c24551v.m4914p(false);
            }
        }
        return r6;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: f */
    public long mo4963f() {
        if (!this.f68523B) {
            final AbstractC24534q.C24535a c24535a = this.f68538e;
            final AbstractC24531p.C24532a c24532a = c24535a.f68513b;
            Objects.requireNonNull(c24532a);
            Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
            while (it.hasNext()) {
                AbstractC24534q.C24535a.C24536a next = it.next();
                final AbstractC24534q abstractC24534q = next.f68517b;
                c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                        AbstractC24534q abstractC24534q2 = abstractC24534q;
                        AbstractC24531p.C24532a c24532a2 = c24532a;
                        int i = c24535a2.f68512a;
                        C24190a c24190a = (C24190a) abstractC24534q2;
                        C24190a.C24192b c24192b = c24190a.f66949d;
                        c24192b.f66959f = c24192b.f66955b.get(c24532a2);
                        c24190a.m5496v(i, c24532a2);
                        Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                        while (it2.hasNext()) {
                            it2.next().m5463s();
                        }
                    }
                });
            }
            this.f68523B = true;
        }
        if (this.f68522A) {
            if (!this.f68532O && m4952t() <= this.f68531N) {
                return -9223372036854775807L;
            }
            this.f68522A = false;
            return this.f68528K;
        }
        return -9223372036854775807L;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i
    /* renamed from: g */
    public void mo4962g() {
        this.f68554u = true;
        this.f68548o.post(this.f68546m);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: h */
    public TrackGroupArray mo4961h() {
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        return c24544d.f68577b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i
    /* renamed from: i */
    public AbstractC24422s mo4960i(int i, int i2) {
        return m4946z(new C24546f(i, false));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: j */
    public void mo4959j() throws IOException {
        m4947y();
        if (!this.f68532O || this.f68555v) {
            return;
        }
        throw new C24560m0("Loading finished before preparation is complete.");
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: k */
    public void mo4958k(long j, boolean z) {
        char c;
        if (m4950v()) {
            return;
        }
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        boolean[] zArr = c24544d.f68579d;
        int length = this.f68552s.length;
        for (int i = 0; i < length; i++) {
            C24551v c24551v = this.f68552s[i];
            boolean z2 = zArr[i];
            C24549u c24549u = c24551v.f68614a;
            synchronized (c24551v) {
                int i2 = c24551v.f68628o;
                c = 65535;
                if (i2 != 0) {
                    long[] jArr = c24551v.f68625l;
                    int i3 = c24551v.f68630q;
                    if (j >= jArr[i3]) {
                        if (z2) {
                            int i4 = c24551v.f68631r;
                            if (i4 != i2) {
                                i2 = i4 + 1;
                            }
                        }
                        int m4923g = c24551v.m4923g(i3, i2, j, z);
                        if (m4923g != -1) {
                            c = c24551v.m4925e(m4923g);
                        }
                    }
                }
            }
            c24549u.m4935a(c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: l */
    public long mo4957l(AbstractC24645f[] abstractC24645fArr, boolean[] zArr, AbstractC24554w[] abstractC24554wArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        TrackGroupArray trackGroupArray = c24544d.f68577b;
        boolean[] zArr3 = c24544d.f68579d;
        int i = this.f68524C;
        for (int i2 = 0; i2 < abstractC24645fArr.length; i2++) {
            if (abstractC24554wArr[i2] != null && (abstractC24645fArr[i2] == null || !zArr[i2])) {
                int i3 = ((C24545e) abstractC24554wArr[i2]).f68581a;
                C26232y.m2286x(zArr3[i3]);
                this.f68524C--;
                zArr3[i3] = false;
                abstractC24554wArr[i2] = null;
            }
        }
        boolean z2 = !this.f68559z ? j != 0 : i == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= abstractC24645fArr.length) {
                break;
            }
            z2 = z;
            if (abstractC24554wArr[i4] == null) {
                z2 = z;
                if (abstractC24645fArr[i4] != null) {
                    AbstractC24645f abstractC24645f = abstractC24645fArr[i4];
                    C26232y.m2286x(abstractC24645f.length() == 1);
                    C26232y.m2286x(abstractC24645f.mo4799d(0) == 0);
                    int m39234a = trackGroupArray.m39234a(abstractC24645f.mo4797f());
                    C26232y.m2286x(!zArr3[m39234a]);
                    this.f68524C++;
                    zArr3[m39234a] = true;
                    abstractC24554wArr[i4] = new C24545e(m39234a);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        C24551v c24551v = this.f68552s[m39234a];
                        z2 = !c24551v.m4913q(j, true) && c24551v.f68629p + c24551v.f68631r != 0;
                    }
                }
            }
            i4++;
        }
        if (this.f68524C == 0) {
            this.f68530M = false;
            this.f68522A = false;
            if (!this.f68543j.m4774b()) {
                C24551v[] c24551vArr = this.f68552s;
                int length = c24551vArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    c24551vArr[i5].m4914p(false);
                    i5++;
                }
            } else {
                for (C24551v c24551v2 : this.f68552s) {
                    c24551v2.m4924f();
                }
                C24681c0.HandlerC24685d<? extends C24681c0.AbstractC24686e> handlerC24685d = this.f68543j.f69168b;
                C26232y.m2278z(handlerC24685d);
                handlerC24685d.m4770a(false);
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? mo4964e = mo4964e(j);
                int i6 = 0;
                while (true) {
                    c = mo4964e;
                    if (i6 >= abstractC24554wArr.length) {
                        break;
                    }
                    if (abstractC24554wArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.f68559z = true;
        return c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0.AbstractC24683b
    /* renamed from: m */
    public void mo4773m(C24541a c24541a, long j, long j2, boolean z) {
        C24541a c24541a2 = c24541a;
        final AbstractC24534q.C24535a c24535a = this.f68538e;
        C24742n c24742n = c24541a2.f68569j;
        C24691d0 c24691d0 = c24541a2.f68561b;
        Uri uri = c24691d0.f69185c;
        Map<String, List<String>> map = c24691d0.f69186d;
        long j3 = c24541a2.f68568i;
        long j4 = this.f68525D;
        final AbstractC24534q.C24537b c24537b = new AbstractC24534q.C24537b(c24742n, uri, map, j, j2, c24691d0.f69184b);
        final AbstractC24534q.C24538c c24538c = new AbstractC24534q.C24538c(1, -1, null, 0, null, c24535a.m4972a(j3), c24535a.m4972a(j4));
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            final AbstractC24534q abstractC24534q = next.f68517b;
            c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.d
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                    AbstractC24534q abstractC24534q2 = abstractC24534q;
                    int i = c24535a2.f68512a;
                    AbstractC24531p.C24532a c24532a = c24535a2.f68513b;
                    C24190a c24190a = (C24190a) abstractC24534q2;
                    c24190a.m5496v(i, c24532a);
                    Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                    while (it2.hasNext()) {
                        it2.next().m5470l();
                    }
                }
            });
        }
        if (!z) {
            if (this.f68526E == -1) {
                this.f68526E = c24541a2.f68570k;
            }
            for (C24551v c24551v : this.f68552s) {
                c24551v.m4914p(false);
            }
            if (this.f68524C <= 0) {
                return;
            }
            AbstractC24529o.AbstractC24530a abstractC24530a = this.f68549p;
            Objects.requireNonNull(abstractC24530a);
            abstractC24530a.mo4908g(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0.AbstractC24683b
    /* renamed from: n */
    public void mo4772n(C24541a c24541a, long j, long j2) {
        AbstractC24418q abstractC24418q;
        C24541a c24541a2 = c24541a;
        if (this.f68525D == -9223372036854775807L && (abstractC24418q = this.f68550q) != null) {
            boolean mo5143c = abstractC24418q.mo5143c();
            long m4951u = m4951u();
            char c = m4951u == Long.MIN_VALUE ? (char) 0 : m4951u + 10000;
            this.f68525D = c;
            ((C24547t) this.f68539f).m4938i(c, mo5143c, this.f68527J);
        }
        final AbstractC24534q.C24535a c24535a = this.f68538e;
        C24742n c24742n = c24541a2.f68569j;
        C24691d0 c24691d0 = c24541a2.f68561b;
        Uri uri = c24691d0.f69185c;
        Map<String, List<String>> map = c24691d0.f69186d;
        long j3 = c24541a2.f68568i;
        long j4 = this.f68525D;
        final AbstractC24534q.C24537b c24537b = new AbstractC24534q.C24537b(c24742n, uri, map, j, j2, c24691d0.f69184b);
        final AbstractC24534q.C24538c c24538c = new AbstractC24534q.C24538c(1, -1, null, 0, null, c24535a.m4972a(j3), c24535a.m4972a(j4));
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            final AbstractC24534q abstractC24534q = next.f68517b;
            c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.f
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                    AbstractC24534q abstractC24534q2 = abstractC24534q;
                    int i = c24535a2.f68512a;
                    AbstractC24531p.C24532a c24532a = c24535a2.f68513b;
                    C24190a c24190a = (C24190a) abstractC24534q2;
                    c24190a.m5496v(i, c24532a);
                    Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                    while (it2.hasNext()) {
                        it2.next().m5487C();
                    }
                }
            });
        }
        if (this.f68526E == -1) {
            this.f68526E = c24541a2.f68570k;
        }
        this.f68532O = true;
        AbstractC24529o.AbstractC24530a abstractC24530a = this.f68549p;
        Objects.requireNonNull(abstractC24530a);
        abstractC24530a.mo4908g(this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: o */
    public boolean mo4956o() {
        boolean z;
        boolean z2;
        if (this.f68543j.m4774b()) {
            C24779i c24779i = this.f68545l;
            synchronized (c24779i) {
                z2 = c24779i.f69451a;
            }
            if (z2) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e9, code lost:
        if (java.lang.Math.abs(r0 - r8) <= java.lang.Math.abs(r0 - r8)) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo4955p(long r8, p193e.p1577m.p1578a.p1596c.C24859x0 r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.mo4955p(long, e.m.a.c.x0):long");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: q */
    public void mo4954q(AbstractC24529o.AbstractC24530a abstractC24530a, long j) {
        this.f68549p = abstractC24530a;
        this.f68545l.m4590a();
        m4970A();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0154, code lost:
        if (r0 == 1) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0108  */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0.AbstractC24683b
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0.C24684c mo4771r(p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.C24541a r14, long r15, long r17, final java.io.IOException r19, int r20) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24540s.mo4771r(e.m.a.c.p1.c0$e, long, long, java.io.IOException, int):e.m.a.c.p1.c0$c");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i
    /* renamed from: s */
    public void mo4953s(AbstractC24418q abstractC24418q) {
        if (this.f68551r != null) {
            abstractC24418q = new AbstractC24418q.C24420b(-9223372036854775807L, 0L);
        }
        this.f68550q = abstractC24418q;
        this.f68548o.post(this.f68546m);
    }

    /* renamed from: t */
    public final int m4952t() {
        C24551v[] c24551vArr;
        int i = 0;
        for (C24551v c24551v : this.f68552s) {
            i += c24551v.f68629p + c24551v.f68628o;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: u */
    public final long m4951u() {
        char c = 0;
        for (C24551v c24551v : this.f68552s) {
            c = Math.max((long) c, c24551v.m4922h());
        }
        return c;
    }

    /* renamed from: v */
    public final boolean m4950v() {
        return this.f68529L != -9223372036854775807L;
    }

    /* renamed from: w */
    public final void m4949w(int i) {
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        boolean[] zArr = c24544d.f68580e;
        if (!zArr[i]) {
            Format format = c24544d.f68577b.f5004b[i].f5000b[0];
            final AbstractC24534q.C24535a c24535a = this.f68538e;
            final AbstractC24534q.C24538c c24538c = new AbstractC24534q.C24538c(1, C24792q.m4569e(format.f4847i), format, 0, null, c24535a.m4972a(this.f68528K), -9223372036854775807L);
            Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
            while (it.hasNext()) {
                AbstractC24534q.C24535a.C24536a next = it.next();
                final AbstractC24534q abstractC24534q = next.f68517b;
                c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                        AbstractC24534q abstractC24534q2 = abstractC24534q;
                        int i2 = c24535a2.f68512a;
                        AbstractC24531p.C24532a c24532a = c24535a2.f68513b;
                        C24190a c24190a = (C24190a) abstractC24534q2;
                        c24190a.m5496v(i2, c24532a);
                        Iterator<AbstractC24193b> it2 = c24190a.f66946a.iterator();
                        while (it2.hasNext()) {
                            it2.next().m5477e();
                        }
                    }
                });
            }
            zArr[i] = true;
        }
    }

    /* renamed from: x */
    public final void m4948x(int i) {
        C24544d c24544d = this.f68556w;
        Objects.requireNonNull(c24544d);
        boolean[] zArr = c24544d.f68578c;
        if (!this.f68530M || !zArr[i] || this.f68552s[i].m4917m(false)) {
            return;
        }
        this.f68529L = 0L;
        this.f68530M = false;
        this.f68522A = true;
        this.f68528K = 0L;
        this.f68531N = 0;
        for (C24551v c24551v : this.f68552s) {
            c24551v.m4914p(false);
        }
        AbstractC24529o.AbstractC24530a abstractC24530a = this.f68549p;
        Objects.requireNonNull(abstractC24530a);
        abstractC24530a.mo4908g(this);
    }

    /* renamed from: y */
    public void m4947y() throws IOException {
        C24681c0 c24681c0 = this.f68543j;
        int m4660a = ((C24751u) this.f68537d).m4660a(this.f68558y);
        IOException iOException = c24681c0.f69169c;
        if (iOException == null) {
            C24681c0.HandlerC24685d<? extends C24681c0.AbstractC24686e> handlerC24685d = c24681c0.f69168b;
            if (handlerC24685d == null) {
                return;
            }
            int i = m4660a;
            if (m4660a == Integer.MIN_VALUE) {
                i = handlerC24685d.f69172a;
            }
            IOException iOException2 = handlerC24685d.f69176e;
            if (iOException2 != null && handlerC24685d.f69177f > i) {
                throw iOException2;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: z */
    public final AbstractC24422s m4946z(C24546f c24546f) {
        int length = this.f68552s.length;
        for (int i = 0; i < length; i++) {
            if (c24546f.equals(this.f68553t[i])) {
                return this.f68552s[i];
            }
        }
        C24551v c24551v = new C24551v(this.f68540g, this.f68536c);
        c24551v.f68617d = this;
        int i2 = length + 1;
        C24546f[] c24546fArr = (C24546f[]) Arrays.copyOf(this.f68553t, i2);
        c24546fArr[length] = c24546f;
        int i3 = C24773d0.f69427a;
        this.f68553t = c24546fArr;
        C24551v[] c24551vArr = (C24551v[]) Arrays.copyOf(this.f68552s, i2);
        c24551vArr[length] = c24551v;
        this.f68552s = c24551vArr;
        return c24551v;
    }
}
