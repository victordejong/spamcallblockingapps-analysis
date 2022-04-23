package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.trackselection.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u.class */
final class u implements p, p.a {

    /* renamed from: a  reason: collision with root package name */
    final p[] f21647a;

    /* renamed from: c  reason: collision with root package name */
    private final f f21649c;
    private p.a e;
    private TrackGroupArray f;
    private ab h;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<p> f21650d = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<aa, Integer> f21648b = new IdentityHashMap<>();
    private p[] g = new p[0];

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u$a.class */
    static final class a implements p, p.a {

        /* renamed from: a  reason: collision with root package name */
        final p f21651a;

        /* renamed from: b  reason: collision with root package name */
        private final long f21652b;

        /* renamed from: c  reason: collision with root package name */
        private p.a f21653c;

        public a(p pVar, long j) {
            this.f21651a = pVar;
            this.f21652b = j;
        }

        @Override // com.google.android.exoplayer2.source.p
        public final void D_() throws IOException {
            this.f21651a.D_();
        }

        @Override // com.google.android.exoplayer2.source.p
        public final long a(long j, ai aiVar) {
            return this.f21651a.a(j - this.f21652b, aiVar) + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p
        public final long a(c[] cVarArr, boolean[] zArr, aa[] aaVarArr, boolean[] zArr2, long j) {
            aa[] aaVarArr2 = new aa[aaVarArr.length];
            int i = 0;
            while (true) {
                aa aaVar = null;
                if (i >= aaVarArr.length) {
                    break;
                }
                b bVar = (b) aaVarArr[i];
                if (bVar != null) {
                    aaVar = bVar.f21654a;
                }
                aaVarArr2[i] = aaVar;
                i++;
            }
            long a2 = this.f21651a.a(cVarArr, zArr, aaVarArr2, zArr2, j - this.f21652b);
            for (int i2 = 0; i2 < aaVarArr.length; i2++) {
                aa aaVar2 = aaVarArr2[i2];
                if (aaVar2 == null) {
                    aaVarArr[i2] = null;
                } else if (aaVarArr[i2] == null || ((b) aaVarArr[i2]).f21654a != aaVar2) {
                    aaVarArr[i2] = new b(aaVar2, this.f21652b);
                }
            }
            return a2 + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
        public final void a(long j) {
            this.f21651a.a(j - this.f21652b);
        }

        @Override // com.google.android.exoplayer2.source.p
        public final void a(long j, boolean z) {
            this.f21651a.a(j - this.f21652b, z);
        }

        @Override // com.google.android.exoplayer2.source.ab.a
        public final /* synthetic */ void a(p pVar) {
            ((p.a) com.google.android.exoplayer2.util.a.b(this.f21653c)).a((p.a) this);
        }

        @Override // com.google.android.exoplayer2.source.p
        public final void a(p.a aVar, long j) {
            this.f21653c = aVar;
            this.f21651a.a(this, j - this.f21652b);
        }

        @Override // com.google.android.exoplayer2.source.p.a
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void a2(p pVar) {
            ((p.a) com.google.android.exoplayer2.util.a.b(this.f21653c)).a((p) this);
        }

        @Override // com.google.android.exoplayer2.source.p
        public final long b(long j) {
            return this.f21651a.b(j - this.f21652b) + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p
        public final TrackGroupArray b() {
            return this.f21651a.b();
        }

        @Override // com.google.android.exoplayer2.source.p
        public final long c() {
            long c2 = this.f21651a.c();
            if (c2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return c2 + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
        public final boolean c(long j) {
            return this.f21651a.c(j - this.f21652b);
        }

        @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
        public final long d() {
            long d2 = this.f21651a.d();
            if (d2 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return d2 + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
        public final long e() {
            long e = this.f21651a.e();
            if (e == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return e + this.f21652b;
        }

        @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
        public final boolean f() {
            return this.f21651a.f();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/u$b.class */
    static final class b implements aa {

        /* renamed from: a  reason: collision with root package name */
        final aa f21654a;

        /* renamed from: b  reason: collision with root package name */
        private final long f21655b;

        public b(aa aaVar, long j) {
            this.f21654a = aaVar;
            this.f21655b = j;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(long j) {
            return this.f21654a.a(j - this.f21655b);
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(q qVar, DecoderInputBuffer decoderInputBuffer, boolean z) {
            int a2 = this.f21654a.a(qVar, decoderInputBuffer, z);
            if (a2 == -4) {
                decoderInputBuffer.e = Math.max(0L, decoderInputBuffer.e + this.f21655b);
            }
            return a2;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final boolean a() {
            return this.f21654a.a();
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final void b() throws IOException {
            this.f21654a.b();
        }
    }

    public u(f fVar, long[] jArr, p... pVarArr) {
        this.f21649c = fVar;
        this.f21647a = pVarArr;
        this.h = fVar.a(new ab[0]);
        for (int i = 0; i < pVarArr.length; i++) {
            if (jArr[i] != 0) {
                this.f21647a[i] = new a(pVarArr[i], jArr[i]);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void D_() throws IOException {
        for (p pVar : this.f21647a) {
            pVar.D_();
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(long j, ai aiVar) {
        p[] pVarArr = this.g;
        return (pVarArr.length > 0 ? pVarArr[0] : this.f21647a[0]).a(j, aiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.source.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.exoplayer2.trackselection.c[] r9, boolean[] r10, com.google.android.exoplayer2.source.aa[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.u.a(com.google.android.exoplayer2.trackselection.c[], boolean[], com.google.android.exoplayer2.source.aa[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final void a(long j) {
        this.h.a(j);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(long j, boolean z) {
        for (p pVar : this.g) {
            pVar.a(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.ab.a
    public final /* synthetic */ void a(p pVar) {
        ((p.a) com.google.android.exoplayer2.util.a.b(this.e)).a((p.a) this);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(p.a aVar, long j) {
        this.e = aVar;
        Collections.addAll(this.f21650d, this.f21647a);
        for (p pVar : this.f21647a) {
            pVar.a(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.p.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(p pVar) {
        this.f21650d.remove(pVar);
        if (this.f21650d.isEmpty()) {
            int i = 0;
            for (p pVar2 : this.f21647a) {
                i += pVar2.b().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i];
            int i2 = 0;
            for (p pVar3 : this.f21647a) {
                TrackGroupArray b2 = pVar3.b();
                int i3 = b2.length;
                int i4 = 0;
                while (i4 < i3) {
                    trackGroupArr[i2] = b2.get(i4);
                    i4++;
                    i2++;
                }
            }
            this.f = new TrackGroupArray(trackGroupArr);
            ((p.a) com.google.android.exoplayer2.util.a.b(this.e)).a((p) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long b(long j) {
        long b2 = this.g[0].b(j);
        int i = 1;
        while (true) {
            p[] pVarArr = this.g;
            if (i >= pVarArr.length) {
                return b2;
            }
            if (pVarArr[i].b(b2) == b2) {
                i++;
            } else {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final TrackGroupArray b() {
        return (TrackGroupArray) com.google.android.exoplayer2.util.a.b(this.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.exoplayer2.source.p[]] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.exoplayer2.source.p[]] */
    /* JADX WARN: Type inference failed for: r0v36, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // com.google.android.exoplayer2.source.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.exoplayer2.source.p[] r0 = r0.g
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x000f:
            r0 = r10
            r1 = r7
            if (r0 >= r1) goto L_0x00c2
            r0 = r6
            r1 = r10
            r0 = r0[r1]
            r11 = r0
            r0 = r11
            long r0 = r0.c()
            r12 = r0
            r0 = r12
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0091
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x007a
            r0 = r5
            com.google.android.exoplayer2.source.p[] r0 = r0.g
            r14 = r0
            r0 = r14
            int r0 = r0.length
            r15 = r0
            r0 = 0
            r16 = r0
        L_0x0043:
            r0 = r16
            r1 = r15
            if (r0 >= r1) goto L_0x0077
            r0 = r14
            r1 = r16
            r0 = r0[r1]
            r17 = r0
            r0 = r17
            r1 = r11
            if (r0 == r1) goto L_0x0077
            r0 = r17
            r1 = r12
            long r0 = r0.b(r1)
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006d
            int r16 = r16 + 1
            goto L_0x0043
        L_0x006d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Unexpected child seekToUs result."
            r1.<init>(r2)
            throw r0
        L_0x0077:
            goto L_0x00b9
        L_0x007a:
            r0 = r12
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0087
            r0 = r8
            r12 = r0
            goto L_0x00b9
        L_0x0087:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Conflicting discontinuities."
            r1.<init>(r2)
            throw r0
        L_0x0091:
            r0 = r8
            r12 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00b9
            r0 = r11
            r1 = r8
            long r0 = r0.b(r1)
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00af
            r0 = r8
            r12 = r0
            goto L_0x00b9
        L_0x00af:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Unexpected child seekToUs result."
            r1.<init>(r2)
            throw r0
        L_0x00b9:
            int r10 = r10 + 1
            r0 = r12
            r8 = r0
            goto L_0x000f
        L_0x00c2:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.u.c():long");
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean c(long j) {
        if (this.f21650d.isEmpty()) {
            return this.h.c(j);
        }
        int size = this.f21650d.size();
        for (int i = 0; i < size; i++) {
            this.f21650d.get(i).c(j);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long d() {
        return this.h.d();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long e() {
        return this.h.e();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean f() {
        return this.h.f();
    }
}
