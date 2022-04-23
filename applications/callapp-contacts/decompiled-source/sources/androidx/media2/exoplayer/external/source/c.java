package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.x;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/c.class */
public final class c implements s, s.a {

    /* renamed from: a  reason: collision with root package name */
    public final s f3596a;

    /* renamed from: b  reason: collision with root package name */
    long f3597b;

    /* renamed from: c  reason: collision with root package name */
    long f3598c;

    /* renamed from: d  reason: collision with root package name */
    private s.a f3599d;
    private a[] e = new a[0];
    private long f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/c$a.class */
    final class a implements al {

        /* renamed from: a  reason: collision with root package name */
        public final al f3600a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3601b;

        public a(al alVar) {
            this.f3600a = alVar;
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final int a(long j) {
            if (c.this.f()) {
                return -3;
            }
            return this.f3600a.a(j);
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final int a(x xVar, e eVar, boolean z) {
            if (c.this.f()) {
                return -3;
            }
            if (this.f3601b) {
                eVar.f2937a = 4;
                return -4;
            }
            int a2 = this.f3600a.a(xVar, eVar, z);
            if (a2 == -5) {
                Format format = (Format) androidx.media2.exoplayer.external.util.a.a(xVar.f4257c);
                if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = c.this.f3597b != 0 ? 0 : format.encoderDelay;
                if (c.this.f3598c == Long.MIN_VALUE) {
                    i = format.encoderPadding;
                }
                xVar.f4257c = format.copyWithGaplessInfo(i2, i);
                return -5;
            } else if (c.this.f3598c == Long.MIN_VALUE || ((a2 != -4 || eVar.f2950d < c.this.f3598c) && (a2 != -3 || c.this.d() != Long.MIN_VALUE))) {
                return a2;
            } else {
                eVar.a();
                eVar.f2937a = 4;
                this.f3601b = true;
                return -4;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final boolean a() {
            return !c.this.f() && this.f3600a.a();
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final void b() throws IOException {
            this.f3600a.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public c(s sVar, boolean z, long j, long j2) {
        this.f3596a = sVar;
        this.f = z ? j : -9223372036854775807;
        this.f3597b = j;
        this.f3598c = j2;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(long j, aj ajVar) {
        long j2 = this.f3597b;
        if (j == j2) {
            return j2;
        }
        long a2 = ac.a(ajVar.f, 0L, j - this.f3597b);
        long j3 = ajVar.g;
        long j4 = this.f3598c;
        long a3 = ac.a(j3, 0L, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j);
        if (!(a2 == ajVar.f && a3 == ajVar.g)) {
            ajVar = new aj(a2, a3);
        }
        return this.f3596a.a(j, ajVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0122  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.trackselection.e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.al[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.c.a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
        this.f3596a.a(j);
    }

    public final void a(long j, long j2) {
        this.f3597b = j;
        this.f3598c = j2;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(long j, boolean z) {
        this.f3596a.a(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.am.a
    public final /* bridge */ /* synthetic */ void a(s sVar) {
        ((s.a) androidx.media2.exoplayer.external.util.a.a(this.f3599d)).a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(s.a aVar, long j) {
        this.f3599d = aVar;
        this.f3596a.a(this, j);
    }

    @Override // androidx.media2.exoplayer.external.source.s.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(s sVar) {
        ((s.a) androidx.media2.exoplayer.external.util.a.a(this.f3599d)).a((s) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if (r0 <= r0) goto L_0x006d;
     */
    @Override // androidx.media2.exoplayer.external.source.s
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
            androidx.media2.exoplayer.external.source.c$a[] r0 = r0.e
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
            r0.f3601b = r1
        L_0x002e:
            int r11 = r11 + 1
            goto L_0x0016
        L_0x0034:
            r0 = r5
            androidx.media2.exoplayer.external.source.s r0 = r0.f3596a
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
            long r1 = r1.f3597b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0070
            r0 = r5
            long r0 = r0.f3598c
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
            androidx.media2.exoplayer.external.util.a.b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.c.b(long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final TrackGroupArray b() {
        return this.f3596a.b();
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long c() {
        if (f()) {
            long j = this.f;
            this.f = -9223372036854775807L;
            long c2 = c();
            return c2 != -9223372036854775807L ? c2 : j;
        }
        long c3 = this.f3596a.c();
        if (c3 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        androidx.media2.exoplayer.external.util.a.b(c3 >= this.f3597b);
        long j2 = this.f3598c;
        boolean z = true;
        if (j2 != Long.MIN_VALUE) {
            z = c3 <= j2;
        }
        androidx.media2.exoplayer.external.util.a.b(z);
        return c3;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        return this.f3596a.c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long d() {
        long d2 = this.f3596a.d();
        if (d2 == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f3598c;
        if (j == Long.MIN_VALUE || d2 < j) {
            return d2;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long e() {
        long e = this.f3596a.e();
        if (e == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f3598c;
        if (j == Long.MIN_VALUE || e < j) {
            return e;
        }
        return Long.MIN_VALUE;
    }

    final boolean f() {
        return this.f != -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void k_() throws IOException {
        this.f3596a.k_();
    }
}
