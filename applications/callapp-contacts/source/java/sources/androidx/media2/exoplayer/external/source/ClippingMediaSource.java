package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource.class */
public final class ClippingMediaSource extends AbstractC1765d<Void> {

    /* renamed from: a */
    private final AbstractC1842t f6723a;

    /* renamed from: b */
    private final long f6724b;

    /* renamed from: c */
    private final long f6725c;

    /* renamed from: d */
    private final boolean f6726d;

    /* renamed from: e */
    private final boolean f6727e;

    /* renamed from: f */
    private final boolean f6728f;

    /* renamed from: g */
    private final ArrayList<C1763c> f6729g;

    /* renamed from: h */
    private final AbstractC1383al.C1386b f6730h;

    /* renamed from: i */
    private C1715a f6731i;

    /* renamed from: j */
    private IllegalClippingException f6732j;

    /* renamed from: k */
    private long f6733k;

    /* renamed from: l */
    private long f6734l;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException.class */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a */
        public final int f6735a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r5) {
            /*
                r4 = this;
                r0 = r5
                if (r0 == 0) goto L20
                r0 = r5
                r1 = 1
                if (r0 == r1) goto L1a
                r0 = r5
                r1 = 2
                if (r0 == r1) goto L14
                java.lang.String r0 = "unknown"
                r6 = r0
                goto L23
            L14:
                java.lang.String r0 = "start exceeds end"
                r6 = r0
                goto L23
            L1a:
                java.lang.String r0 = "not seekable to start"
                r6 = r0
                goto L23
            L20:
                java.lang.String r0 = "invalid period count"
                r6 = r0
            L23:
                r0 = r6
                int r0 = r0.length()
                if (r0 == 0) goto L34
                java.lang.String r0 = "Illegal clipping: "
                r1 = r6
                java.lang.String r0 = r0.concat(r1)
                r6 = r0
                goto L3e
            L34:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Illegal clipping: "
                r1.<init>(r2)
                r6 = r0
            L3e:
                r0 = r4
                r1 = r6
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f6735a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.ClippingMediaSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$a.class */
    public static final class C1715a extends AbstractC1832o {

        /* renamed from: c */
        private final long f6736c;

        /* renamed from: d */
        private final long f6737d;

        /* renamed from: e */
        private final long f6738e;

        /* renamed from: f */
        private final boolean f6739f;

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e4, code lost:
            if (r10 == r0.f5219j) goto L35;
         */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* JADX WARN: Type inference failed for: r0v54, types: [long] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1715a(androidx.media2.exoplayer.external.AbstractC1383al r7, long r8, long r10) throws androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.C1715a.<init>(androidx.media2.exoplayer.external.al, long, long):void");
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
            this.f7329b.mo42091a(0, c1385a, z);
            long j = c1385a.f5208e - this.f6736c;
            long j2 = this.f6738e;
            return c1385a.m43085a(c1385a.f5204a, c1385a.f5205b, j2 == -9223372036854775807L ? (char) 1 : j2 - j, j);
        }

        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final AbstractC1383al.C1386b mo42095a(int i, AbstractC1383al.C1386b c1386b, long j) {
            this.f7329b.mo42095a(0, c1386b, 0L);
            c1386b.f5220k += this.f6736c;
            c1386b.f5219j = this.f6738e;
            c1386b.f5215f = this.f6739f;
            if (c1386b.f5218i != -9223372036854775807L) {
                c1386b.f5218i = Math.max(c1386b.f5218i, this.f6736c);
                c1386b.f5218i = this.f6737d == -9223372036854775807L ? c1386b.f5218i : Math.min(c1386b.f5218i, this.f6737d);
                c1386b.f5218i -= this.f6736c;
            }
            long m42894a = C1446c.m42894a(this.f6736c);
            if (c1386b.f5212c != -9223372036854775807L) {
                c1386b.f5212c += m42894a;
            }
            if (c1386b.f5213d != -9223372036854775807L) {
                c1386b.f5213d += m42894a;
            }
            return c1386b;
        }
    }

    public ClippingMediaSource(AbstractC1842t abstractC1842t, long j) {
        this(abstractC1842t, 0L, j, true, false, true);
    }

    public ClippingMediaSource(AbstractC1842t abstractC1842t, long j, long j2) {
        this(abstractC1842t, j, j2, true, false, false);
    }

    public ClippingMediaSource(AbstractC1842t abstractC1842t, long j, long j2, boolean z, boolean z2, boolean z3) {
        C1993a.m41688a(j >= 0);
        this.f6723a = (AbstractC1842t) C1993a.m41690a(abstractC1842t);
        this.f6724b = j;
        this.f6725c = j2;
        this.f6726d = z;
        this.f6727e = z2;
        this.f6728f = z3;
        this.f6729g = new ArrayList<>();
        this.f6730h = new AbstractC1383al.C1386b();
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: b */
    private void m42383b(AbstractC1383al abstractC1383al) {
        char c;
        char c2;
        abstractC1383al.mo42095a(0, this.f6730h, 0L);
        long j = this.f6730h.f5220k;
        char c3 = 0;
        if (this.f6731i == null || this.f6729g.isEmpty() || this.f6727e) {
            ?? r0 = this.f6724b;
            ?? r02 = this.f6725c;
            c2 = r0;
            c = r02;
            if (this.f6728f) {
                long j2 = this.f6730h.f5218i;
                c2 = r0 + j2;
                c = r02 + j2;
            }
            this.f6733k = j + c2;
            if (this.f6725c != Long.MIN_VALUE) {
                c3 = j + c;
            }
            this.f6734l = c3;
            int size = this.f6729g.size();
            for (int i = 0; i < size; i++) {
                this.f6729g.get(i).m42282a(this.f6733k, this.f6734l);
            }
        } else {
            long j3 = this.f6733k;
            c = this.f6725c == Long.MIN_VALUE ? (char) 0 : this.f6734l - j;
            c2 = j3 - j;
        }
        try {
            C1715a c1715a = new C1715a(abstractC1383al, c2, c);
            this.f6731i = c1715a;
            m42285a((AbstractC1383al) c1715a);
        } catch (IllegalClippingException e) {
            this.f6732j = e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ long mo42280a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long m42894a = C1446c.m42894a(this.f6724b);
        ?? max = Math.max(0L, j - m42894a);
        long j2 = this.f6725c;
        char c = max;
        if (j2 != Long.MIN_VALUE) {
            c = Math.min(C1446c.m42894a(j2) - m42894a, (long) max);
        }
        return c;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        C1763c c1763c = new C1763c(this.f6723a.mo42072a(c1843a, abstractC1963b, j), this.f6726d, this.f6733k, this.f6734l);
        this.f6729g.add(c1763c);
        return c1763c;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1993a.m41686b(this.f6729g.remove(abstractC1840s));
        this.f6723a.mo42073a(((C1763c) abstractC1840s).f6970a);
        if (!this.f6729g.isEmpty() || this.f6727e) {
            return;
        }
        m42383b(((C1715a) C1993a.m41690a(this.f6731i)).f7329b);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        super.mo42102a(abstractC1990w);
        m42278a((ClippingMediaSource) null, this.f6723a);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ void mo42100a(Void r4, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        if (this.f6732j == null) {
            m42383b(abstractC1383al);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        super.mo42097c();
        this.f6732j = null;
        this.f6731i = null;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return this.f6723a.mo42066e();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: f */
    public final void mo42065f() throws IOException {
        IllegalClippingException illegalClippingException = this.f6732j;
        if (illegalClippingException == null) {
            super.mo42065f();
            return;
        }
        throw illegalClippingException;
    }
}
