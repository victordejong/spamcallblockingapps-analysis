package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource.class */
public final class ClippingMediaSource extends d<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final t f3479a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3480b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3481c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3482d;
    private final boolean e;
    private final boolean f;
    private final ArrayList<c> g;
    private final al.b h;
    private a i;
    private IllegalClippingException j;
    private long k;
    private long l;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException.class */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f3483a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r5) {
            /*
                r4 = this;
                r0 = r5
                if (r0 == 0) goto L_0x0020
                r0 = r5
                r1 = 1
                if (r0 == r1) goto L_0x001a
                r0 = r5
                r1 = 2
                if (r0 == r1) goto L_0x0014
                java.lang.String r0 = "unknown"
                r6 = r0
                goto L_0x0023
            L_0x0014:
                java.lang.String r0 = "start exceeds end"
                r6 = r0
                goto L_0x0023
            L_0x001a:
                java.lang.String r0 = "not seekable to start"
                r6 = r0
                goto L_0x0023
            L_0x0020:
                java.lang.String r0 = "invalid period count"
                r6 = r0
            L_0x0023:
                r0 = r6
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0034
                java.lang.String r0 = "Illegal clipping: "
                r1 = r6
                java.lang.String r0 = r0.concat(r1)
                r6 = r0
                goto L_0x003e
            L_0x0034:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Illegal clipping: "
                r1.<init>(r2)
                r6 = r0
            L_0x003e:
                r0 = r4
                r1 = r6
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f3483a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaSource$a.class */
    public static final class a extends o {

        /* renamed from: c  reason: collision with root package name */
        private final long f3484c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3485d;
        private final long e;
        private final boolean f;

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e4, code lost:
            if (r10 == r0.j) goto L_0x00e7;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r8v1, types: [long] */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(androidx.media2.exoplayer.external.al r7, long r8, long r10) throws androidx.media2.exoplayer.external.source.ClippingMediaSource.IllegalClippingException {
            /*
                Method dump skipped, instructions count: 250
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.a.<init>(androidx.media2.exoplayer.external.al, long, long):void");
        }

        @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
        public final al.a a(int i, al.a aVar, boolean z) {
            this.f3732b.a(0, aVar, z);
            long j = aVar.e - this.f3484c;
            long j2 = this.e;
            return aVar.a(aVar.f2830a, aVar.f2831b, j2 == -9223372036854775807L ? -9223372036854775807L : j2 - j, j);
        }

        @Override // androidx.media2.exoplayer.external.source.o, androidx.media2.exoplayer.external.al
        public final al.b a(int i, al.b bVar, long j) {
            this.f3732b.a(0, bVar, 0L);
            bVar.k += this.f3484c;
            bVar.j = this.e;
            bVar.f = this.f;
            if (bVar.i != -9223372036854775807L) {
                bVar.i = Math.max(bVar.i, this.f3484c);
                bVar.i = this.f3485d == -9223372036854775807L ? bVar.i : Math.min(bVar.i, this.f3485d);
                bVar.i -= this.f3484c;
            }
            long a2 = c.a(this.f3484c);
            if (bVar.f2836c != -9223372036854775807L) {
                bVar.f2836c += a2;
            }
            if (bVar.f2837d != -9223372036854775807L) {
                bVar.f2837d += a2;
            }
            return bVar;
        }
    }

    public ClippingMediaSource(t tVar, long j) {
        this(tVar, 0L, j, true, false, true);
    }

    public ClippingMediaSource(t tVar, long j, long j2) {
        this(tVar, j, j2, true, false, false);
    }

    public ClippingMediaSource(t tVar, long j, long j2, boolean z, boolean z2, boolean z3) {
        androidx.media2.exoplayer.external.util.a.a(j >= 0);
        this.f3479a = (t) androidx.media2.exoplayer.external.util.a.a(tVar);
        this.f3480b = j;
        this.f3481c = j2;
        this.f3482d = z;
        this.e = z2;
        this.f = z3;
        this.g = new ArrayList<>();
        this.h = new al.b();
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
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media2.exoplayer.external.source.ClippingMediaSource] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(androidx.media2.exoplayer.external.al r8) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.b(androidx.media2.exoplayer.external.al):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ long a(long r8) {
        /*
            r7 = this;
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x000c:
            r0 = r7
            long r0 = r0.f3480b
            long r0 = androidx.media2.exoplayer.external.c.a(r0)
            r10 = r0
            r0 = 0
            r1 = r8
            r2 = r10
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r12 = r0
            r0 = r7
            long r0 = r0.f3481c
            r14 = r0
            r0 = r12
            r8 = r0
            r0 = r14
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003c
            r0 = r14
            long r0 = androidx.media2.exoplayer.external.c.a(r0)
            r1 = r10
            long r0 = r0 - r1
            r1 = r12
            long r0 = java.lang.Math.min(r0, r1)
            r8 = r0
        L_0x003c:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaSource.a(long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, b bVar, long j) {
        c cVar = new c(this.f3479a.a(aVar, bVar, j), this.f3482d, this.k, this.l);
        this.g.add(cVar);
        return cVar;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        androidx.media2.exoplayer.external.util.a.b(this.g.remove(sVar));
        this.f3479a.a(((c) sVar).f3596a);
        if (this.g.isEmpty() && !this.e) {
            b(((a) androidx.media2.exoplayer.external.util.a.a(this.i)).f3732b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        super.a(wVar);
        a((ClippingMediaSource) null, this.f3479a);
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ void a(Void r4, t tVar, al alVar) {
        if (this.j == null) {
            b(alVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void c() {
        super.c();
        this.j = null;
        this.i = null;
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return this.f3479a.e();
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.t
    public final void f() throws IOException {
        IllegalClippingException illegalClippingException = this.j;
        if (illegalClippingException == null) {
            super.f();
            return;
        }
        throw illegalClippingException;
    }
}
