package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.upstream.v;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource.class */
public final class ClippingMediaSource extends d<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final r f21517a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21518b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21519c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f21520d;
    private final boolean e;
    private final boolean f;
    private final ArrayList<c> g;
    private final al.b h;
    private a i;
    private IllegalClippingException j;
    private long k;
    private long l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException.class */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f21521a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r5) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "Illegal clipping: "
                r1.<init>(r2)
                r6 = r0
                r0 = r5
                if (r0 == 0) goto L_0x002a
                r0 = r5
                r1 = 1
                if (r0 == r1) goto L_0x0024
                r0 = r5
                r1 = 2
                if (r0 == r1) goto L_0x001e
                java.lang.String r0 = "unknown"
                r7 = r0
                goto L_0x002d
            L_0x001e:
                java.lang.String r0 = "start exceeds end"
                r7 = r0
                goto L_0x002d
            L_0x0024:
                java.lang.String r0 = "not seekable to start"
                r7 = r0
                goto L_0x002d
            L_0x002a:
                java.lang.String r0 = "invalid period count"
                r7 = r0
            L_0x002d:
                r0 = r6
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f21521a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource$a.class */
    public static final class a extends j {

        /* renamed from: c  reason: collision with root package name */
        private final long f21522c;

        /* renamed from: d  reason: collision with root package name */
        private final long f21523d;
        private final long e;
        private final boolean f;

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
            if (r10 == r0.q) goto L_0x00ee;
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
        public a(com.google.android.exoplayer2.al r7, long r8, long r10) throws com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.a.<init>(com.google.android.exoplayer2.al, long, long):void");
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.a a(int i, al.a aVar, boolean z) {
            this.f21613a.a(0, aVar, z);
            long j = aVar.e - this.f21522c;
            long j2 = this.e;
            return aVar.a(aVar.f20675a, aVar.f20676b, j2 == -9223372036854775807L ? -9223372036854775807L : j2 - j, j);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.b a(int i, al.b bVar, long j) {
            this.f21613a.a(0, bVar, 0L);
            bVar.r += this.f21522c;
            bVar.q = this.e;
            bVar.j = this.f;
            if (bVar.p != -9223372036854775807L) {
                bVar.p = Math.max(bVar.p, this.f21522c);
                long j2 = this.f21523d;
                long j3 = bVar.p;
                if (j2 != -9223372036854775807L) {
                    j3 = Math.min(j3, this.f21523d);
                }
                bVar.p = j3;
                bVar.p -= this.f21522c;
            }
            long a2 = f.a(this.f21522c);
            if (bVar.f != -9223372036854775807L) {
                bVar.f += a2;
            }
            if (bVar.g != -9223372036854775807L) {
                bVar.g += a2;
            }
            return bVar;
        }
    }

    public ClippingMediaSource(r rVar, long j) {
        this(rVar, 0L, j, true, false, true);
    }

    public ClippingMediaSource(r rVar, long j, long j2) {
        this(rVar, j, j2, true, false, false);
    }

    public ClippingMediaSource(r rVar, long j, long j2, boolean z, boolean z2, boolean z3) {
        com.google.android.exoplayer2.util.a.a(j >= 0);
        this.f21517a = (r) com.google.android.exoplayer2.util.a.b(rVar);
        this.f21518b = j;
        this.f21519c = j2;
        this.f21520d = z;
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
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.exoplayer2.source.ClippingMediaSource] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(com.google.android.exoplayer2.al r8) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.b(com.google.android.exoplayer2.al):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.source.d
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
            long r0 = r0.f21518b
            long r0 = com.google.android.exoplayer2.f.a(r0)
            r10 = r0
            r0 = 0
            r1 = r8
            r2 = r10
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r12 = r0
            r0 = r7
            long r0 = r0.f21519c
            r14 = r0
            r0 = r12
            r8 = r0
            r0 = r14
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003c
            r0 = r14
            long r0 = com.google.android.exoplayer2.f.a(r0)
            r1 = r10
            long r0 = r0 - r1
            r1 = r12
            long r0 = java.lang.Math.min(r0, r1)
            r8 = r0
        L_0x003c:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.a(long):long");
    }

    @Override // com.google.android.exoplayer2.source.r
    public final p a(r.a aVar, b bVar, long j) {
        c cVar = new c(this.f21517a.a(aVar, bVar, j), this.f21520d, this.k, this.l);
        this.g.add(cVar);
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        com.google.android.exoplayer2.util.a.b(this.g.remove(pVar));
        this.f21517a.a(((c) pVar).f21591a);
        if (this.g.isEmpty() && !this.e) {
            b(((a) com.google.android.exoplayer2.util.a.b(this.i)).f21613a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void a(v vVar) {
        super.a(vVar);
        a((ClippingMediaSource) null, this.f21517a);
    }

    @Override // com.google.android.exoplayer2.source.d
    protected final /* synthetic */ void a(Void r4, r rVar, al alVar) {
        if (this.j == null) {
            b(alVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void c() {
        super.c();
        this.j = null;
        this.i = null;
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        return this.f21517a.e();
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.r
    public final void f() throws IOException {
        IllegalClippingException illegalClippingException = this.j;
        if (illegalClippingException == null) {
            super.f();
            return;
        }
        throw illegalClippingException;
    }
}
