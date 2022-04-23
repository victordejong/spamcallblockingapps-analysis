package androidx.media2.exoplayer.external.source;

import java.io.IOException;
import java.util.ArrayList;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1551e;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1593n;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1540c;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource.class */
public final class ClippingMediaSource extends AbstractC1551e<Void> {

    /* renamed from: i */
    public final AbstractC1634r f1838i;

    /* renamed from: j */
    public final long f1839j;

    /* renamed from: k */
    public final long f1840k;

    /* renamed from: l */
    public final boolean f1841l;

    /* renamed from: m */
    public final boolean f1842m;

    /* renamed from: n */
    public final boolean f1843n;

    /* renamed from: o */
    public final ArrayList<C1540c> f1844o;

    /* renamed from: p */
    public final AbstractC1252n0.C1255c f1845p;

    /* renamed from: q */
    public Object f1846q;

    /* renamed from: r */
    public C0324a f1847r;

    /* renamed from: s */
    public IllegalClippingException f1848s;

    /* renamed from: t */
    public long f1849t;

    /* renamed from: u */
    public long f1850u;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException.class */
    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = getReasonDescription(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r6 = r0
                r0 = r6
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0019
                java.lang.String r0 = "Illegal clipping: "
                r1 = r6
                java.lang.String r0 = r0.concat(r1)
                r6 = r0
                goto L_0x0023
            L_0x0019:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Illegal clipping: "
                r1.<init>(r2)
                r6 = r0
            L_0x0023:
                r0 = r4
                r1 = r6
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.reason = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }

        public static String getReasonDescription(int i) {
            return i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.ClippingMediaSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$a.class */
    public static final class C0324a extends AbstractC1593n {

        /* renamed from: c */
        public final long f1851c;

        /* renamed from: d */
        public final long f1852d;

        /* renamed from: e */
        public final long f1853e;

        /* renamed from: f */
        public final boolean f1854f;

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e2, code lost:
            if (r9 == r0) goto L_0x00e5;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r7v1, types: [long] */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0324a(p012b.p076s.p078b.p079a.AbstractC1252n0 r6, long r7, long r9) throws androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.C0324a.<init>(b.s.b.a.n0, long, long):void");
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public AbstractC1252n0.C1254b mo32738a(int i, AbstractC1252n0.C1254b bVar, boolean z) {
            this.f6497b.mo32738a(0, bVar, z);
            long e = bVar.m34025e() - this.f1851c;
            long j = this.f1853e;
            bVar.m34035a(bVar.f5013a, bVar.f5014b, 0, j == -9223372036854775807L ? -9223372036854775807L : j - e, e);
            return bVar;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1593n, p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public AbstractC1252n0.C1255c mo32716a(int i, AbstractC1252n0.C1255c cVar, boolean z, long j) {
            this.f6497b.mo32716a(0, cVar, z, 0L);
            long j2 = cVar.f5028j;
            long j3 = this.f1851c;
            cVar.f5028j = j2 + j3;
            cVar.f5027i = this.f1853e;
            cVar.f5023e = this.f1854f;
            long j4 = cVar.f5026h;
            if (j4 != -9223372036854775807L) {
                long max = Math.max(j4, j3);
                cVar.f5026h = max;
                long j5 = this.f1852d;
                if (j5 != -9223372036854775807L) {
                    max = Math.min(max, j5);
                }
                cVar.f5026h = max;
                cVar.f5026h = max - this.f1851c;
            }
            long b = C1220c.m34195b(this.f1851c);
            long j6 = cVar.f5020b;
            if (j6 != -9223372036854775807L) {
                cVar.f5020b = j6 + b;
            }
            long j7 = cVar.f5021c;
            if (j7 != -9223372036854775807L) {
                cVar.f5021c = j7 + b;
            }
            return cVar;
        }
    }

    public ClippingMediaSource(AbstractC1634r rVar, long j, long j2, boolean z, boolean z2, boolean z3) {
        C1160a.m34520a(j >= 0);
        C1160a.m34522a(rVar);
        this.f1838i = rVar;
        this.f1839j = j;
        this.f1840k = j2;
        this.f1841l = z;
        this.f1842m = z2;
        this.f1843n = z3;
        this.f1844o = new ArrayList<>();
        this.f1845p = new AbstractC1252n0.C1255c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32873a(java.lang.Void r8, long r9) {
        /*
            r7 = this;
            r0 = r9
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x000c:
            r0 = r7
            long r0 = r0.f1839j
            long r0 = p012b.p076s.p078b.p079a.C1220c.m34195b(r0)
            r11 = r0
            r0 = 0
            r1 = r9
            r2 = r11
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r13 = r0
            r0 = r7
            long r0 = r0.f1840k
            r15 = r0
            r0 = r13
            r9 = r0
            r0 = r15
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003f
            r0 = r15
            long r0 = p012b.p076s.p078b.p079a.C1220c.m34195b(r0)
            r1 = r11
            long r0 = r0 - r1
            r1 = r13
            long r0 = java.lang.Math.min(r0, r1)
            r9 = r0
        L_0x003f:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.mo32873a(java.lang.Void, long):long");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        C1540c cVar = new C1540c(this.f1838i.mo32294a(aVar, bVar, j), this.f1841l, this.f1849t, this.f1850u);
        this.f1844o.add(cVar);
        return cVar;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return this.f1838i.mo32507a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media2.exoplayer.external.source.ClippingMediaSource, b.s.b.a.w0.b] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37995a(p012b.p076s.p078b.p079a.AbstractC1252n0 r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.m37995a(b.s.b.a.n0):void");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public void mo32295a(AbstractC1631p pVar) {
        C1160a.m34518b(this.f1844o.remove(pVar));
        this.f1838i.mo32295a(((C1540c) pVar).f6267a);
        if (this.f1844o.isEmpty() && !this.f1842m) {
            C0324a aVar = this.f1847r;
            C1160a.m34522a(aVar);
            m37995a(aVar.f6497b);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        super.mo32293a(xVar);
        m32872a((ClippingMediaSource) null, this.f1838i);
    }

    /* renamed from: a */
    public void mo32291b(Void r4, AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
        if (this.f1848s == null) {
            this.f1846q = obj;
            m37995a(n0Var);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
        IllegalClippingException illegalClippingException = this.f1848s;
        if (illegalClippingException == null) {
            super.mo32502b();
            return;
        }
        throw illegalClippingException;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1551e, p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public void mo32678c() {
        super.mo32678c();
        this.f1848s = null;
        this.f1847r = null;
    }
}
