package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/c.class */
public final class c implements p, p.a {

    /* renamed from: a  reason: collision with root package name */
    public final p f21591a;

    /* renamed from: b  reason: collision with root package name */
    long f21592b;

    /* renamed from: c  reason: collision with root package name */
    long f21593c;

    /* renamed from: d  reason: collision with root package name */
    private p.a f21594d;
    private a[] e = new a[0];
    private long f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/c$a.class */
    final class a implements aa {

        /* renamed from: a  reason: collision with root package name */
        public final aa f21595a;

        /* renamed from: b  reason: collision with root package name */
        boolean f21596b;

        public a(aa aaVar) {
            this.f21595a = aaVar;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(long j) {
            if (c.this.g()) {
                return -3;
            }
            return this.f21595a.a(j);
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(q qVar, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (c.this.g()) {
                return -3;
            }
            if (this.f21596b) {
                decoderInputBuffer.f20826a = 4;
                return -4;
            }
            int a2 = this.f21595a.a(qVar, decoderInputBuffer, z);
            if (a2 == -5) {
                Format format = (Format) com.google.android.exoplayer2.util.a.b(qVar.f21512b);
                if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = c.this.f21592b != 0 ? 0 : format.encoderDelay;
                if (c.this.f21593c == Long.MIN_VALUE) {
                    i = format.encoderPadding;
                }
                Format.a buildUpon = format.buildUpon();
                buildUpon.A = i2;
                buildUpon.B = i;
                qVar.f21512b = buildUpon.a();
                return -5;
            } else if (c.this.f21593c == Long.MIN_VALUE || ((a2 != -4 || decoderInputBuffer.e < c.this.f21593c) && (a2 != -3 || c.this.d() != Long.MIN_VALUE || decoderInputBuffer.f20823d))) {
                return a2;
            } else {
                decoderInputBuffer.a();
                decoderInputBuffer.f20826a = 4;
                this.f21596b = true;
                return -4;
            }
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final boolean a() {
            return !c.this.g() && this.f21595a.a();
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final void b() throws IOException {
            this.f21595a.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public c(p pVar, boolean z, long j, long j2) {
        this.f21591a = pVar;
        this.f = z ? j : -9223372036854775807;
        this.f21592b = j;
        this.f21593c = j2;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void D_() throws IOException {
        this.f21591a.D_();
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(long j, ai aiVar) {
        long j2 = this.f21592b;
        if (j == j2) {
            return j2;
        }
        long a2 = af.a(aiVar.f, 0L, j - this.f21592b);
        long j3 = aiVar.g;
        long j4 = this.f21593c;
        long a3 = af.a(j3, 0L, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j);
        if (!(a2 == aiVar.f && a3 == aiVar.g)) {
            aiVar = new ai(a2, a3);
        }
        return this.f21591a.a(j, aiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0128  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.source.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.exoplayer2.trackselection.c[] r9, boolean[] r10, com.google.android.exoplayer2.source.aa[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.c.a(com.google.android.exoplayer2.trackselection.c[], boolean[], com.google.android.exoplayer2.source.aa[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final void a(long j) {
        this.f21591a.a(j);
    }

    public final void a(long j, long j2) {
        this.f21592b = j;
        this.f21593c = j2;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(long j, boolean z) {
        this.f21591a.a(j, z);
    }

    @Override // com.google.android.exoplayer2.source.ab.a
    public final /* synthetic */ void a(p pVar) {
        ((p.a) com.google.android.exoplayer2.util.a.b(this.f21594d)).a((p.a) this);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(p.a aVar, long j) {
        this.f21594d = aVar;
        this.f21591a.a(this, j);
    }

    @Override // com.google.android.exoplayer2.source.p.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(p pVar) {
        ((p.a) com.google.android.exoplayer2.util.a.b(this.f21594d)).a((p) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if (r0 <= r0) goto L_0x006d;
     */
    @Override // com.google.android.exoplayer2.source.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f = r1
            r0 = r5
            com.google.android.exoplayer2.source.c$a[] r0 = r0.e
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0016:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0034
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x002e
            r0 = r12
            r1 = 0
            r0.f21596b = r1
        L_0x002e:
            int r11 = r11 + 1
            goto L_0x0016
        L_0x0034:
            r0 = r5
            com.google.android.exoplayer2.source.p r0 = r0.f21591a
            r1 = r6
            long r0 = r0.b(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f21592b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0070
            r0 = r5
            long r0 = r0.f21593c
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0070
        L_0x006d:
            r0 = 1
            r15 = r0
        L_0x0070:
            r0 = r15
            com.google.android.exoplayer2.util.a.b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.c.b(long):long");
    }

    @Override // com.google.android.exoplayer2.source.p
    public final TrackGroupArray b() {
        return this.f21591a.b();
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long c() {
        if (g()) {
            long j = this.f;
            this.f = -9223372036854775807L;
            long c2 = c();
            return c2 != -9223372036854775807L ? c2 : j;
        }
        long c3 = this.f21591a.c();
        if (c3 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        com.google.android.exoplayer2.util.a.b(c3 >= this.f21592b);
        long j2 = this.f21593c;
        boolean z = true;
        if (j2 != Long.MIN_VALUE) {
            z = c3 <= j2;
        }
        com.google.android.exoplayer2.util.a.b(z);
        return c3;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean c(long j) {
        return this.f21591a.c(j);
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long d() {
        long d2 = this.f21591a.d();
        if (d2 == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f21593c;
        if (j == Long.MIN_VALUE || d2 < j) {
            return d2;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long e() {
        long e = this.f21591a.e();
        if (e == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f21593c;
        if (j == Long.MIN_VALUE || e < j) {
            return e;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean f() {
        return this.f21591a.f();
    }

    final boolean g() {
        return this.f != -9223372036854775807L;
    }
}
