package com.google.android.exoplayer2.source;

import android.os.Looper;
import android.util.Log;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.drm.d;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z.class */
public final class z implements x {
    private boolean A;
    private Format B;
    private Format C;
    private Format D;
    private int E;
    private boolean F;
    private boolean G;
    private long H;
    private boolean I;

    /* renamed from: a  reason: collision with root package name */
    final y f21688a;

    /* renamed from: c  reason: collision with root package name */
    b f21690c;

    /* renamed from: d  reason: collision with root package name */
    DrmSession f21691d;
    int e;
    int f;
    private final d h;
    private final c.a i;
    private final Looper j;
    private Format k;
    private int t;
    private int u;
    private boolean x;

    /* renamed from: b  reason: collision with root package name */
    final a f21689b = new a();
    private int l = 1000;
    private int[] m = new int[1000];
    private long[] n = new long[1000];
    private long[] q = new long[1000];
    private int[] p = new int[1000];
    private int[] o = new int[1000];
    private x.a[] r = new x.a[1000];
    private Format[] s = new Format[1000];
    long g = Long.MIN_VALUE;
    private long v = Long.MIN_VALUE;
    private long w = Long.MIN_VALUE;
    private boolean z = true;
    private boolean y = true;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f21692a;

        /* renamed from: b  reason: collision with root package name */
        public long f21693b;

        /* renamed from: c  reason: collision with root package name */
        public x.a f21694c;

        a() {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/z$b.class */
    public interface b {
        void j();
    }

    protected z(com.google.android.exoplayer2.upstream.b bVar, Looper looper, d dVar, c.a aVar) {
        this.j = looper;
        this.h = dVar;
        this.i = aVar;
        this.f21688a = new y(bVar);
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3;
        int i4 = -1;
        int i5 = 0;
        int i6 = i;
        while (true) {
            i3 = i4;
            if (i5 >= i2) {
                break;
            }
            long[] jArr = this.q;
            i3 = i4;
            if (jArr[i6] > j) {
                break;
            }
            if (!z || (this.p[i6] & 1) != 0) {
                if (jArr[i6] == j) {
                    i3 = i5;
                    break;
                }
                i4 = i5;
            }
            int i7 = i6 + 1;
            i6 = i7;
            if (i7 == this.l) {
                i6 = 0;
            }
            i5++;
        }
        return i3;
    }

    public static z a(com.google.android.exoplayer2.upstream.b bVar, Looper looper, d dVar, c.a aVar) {
        return new z(bVar, (Looper) com.google.android.exoplayer2.util.a.b(looper), (d) com.google.android.exoplayer2.util.a.b(dVar), (c.a) com.google.android.exoplayer2.util.a.b(aVar));
    }

    private void a(long j, int i, long j2, int i2, x.a aVar) {
        synchronized (this) {
            int i3 = this.t;
            if (i3 > 0) {
                int e = e(i3 - 1);
                com.google.android.exoplayer2.util.a.a(this.n[e] + ((long) this.o[e]) <= j2);
            }
            this.x = (536870912 & i) != 0;
            this.w = Math.max(this.w, j);
            int e2 = e(this.t);
            this.q[e2] = j;
            long[] jArr = this.n;
            jArr[e2] = j2;
            this.o[e2] = i2;
            this.p[e2] = i;
            this.r[e2] = aVar;
            Format[] formatArr = this.s;
            Format format = this.C;
            formatArr[e2] = format;
            this.m[e2] = this.E;
            this.D = format;
            int i4 = this.t + 1;
            this.t = i4;
            int i5 = this.l;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                x.a[] aVarArr = new x.a[i6];
                Format[] formatArr2 = new Format[i6];
                int i7 = this.u;
                int i8 = i5 - i7;
                System.arraycopy(jArr, i7, jArr2, 0, i8);
                System.arraycopy(this.q, this.u, jArr3, 0, i8);
                System.arraycopy(this.p, this.u, iArr2, 0, i8);
                System.arraycopy(this.o, this.u, iArr3, 0, i8);
                System.arraycopy(this.r, this.u, aVarArr, 0, i8);
                System.arraycopy(this.s, this.u, formatArr2, 0, i8);
                System.arraycopy(this.m, this.u, iArr, 0, i8);
                int i9 = this.u;
                System.arraycopy(this.n, 0, jArr2, i8, i9);
                System.arraycopy(this.q, 0, jArr3, i8, i9);
                System.arraycopy(this.p, 0, iArr2, i8, i9);
                System.arraycopy(this.o, 0, iArr3, i8, i9);
                System.arraycopy(this.r, 0, aVarArr, i8, i9);
                System.arraycopy(this.s, 0, formatArr2, i8, i9);
                System.arraycopy(this.m, 0, iArr, i8, i9);
                this.n = jArr2;
                this.q = jArr3;
                this.p = iArr2;
                this.o = iArr3;
                this.r = aVarArr;
                this.s = formatArr2;
                this.m = iArr;
                this.u = 0;
                this.l = i6;
            }
        }
    }

    private void a(Format format, q qVar) {
        Format format2 = this.k;
        boolean z = format2 == null;
        DrmInitData drmInitData = z ? null : format2.drmInitData;
        this.k = format;
        DrmInitData drmInitData2 = format.drmInitData;
        d dVar = this.h;
        qVar.f21512b = dVar != null ? format.copyWithExoMediaCryptoType(dVar.a(format)) : format;
        qVar.f21511a = this.f21691d;
        if (this.h != null) {
            if (z || !af.a(drmInitData, drmInitData2)) {
                DrmSession drmSession = this.f21691d;
                DrmSession a2 = this.h.a((Looper) com.google.android.exoplayer2.util.a.b(this.j), this.i, format);
                this.f21691d = a2;
                qVar.f21511a = a2;
                if (drmSession != null) {
                    drmSession.b(this.i);
                }
            }
        }
    }

    private boolean a(long j) {
        synchronized (this) {
            if (this.t == 0) {
                return j > this.v;
            } else if (g() >= j) {
                return false;
            } else {
                int i = this.t;
                int e = e(i - 1);
                while (i > this.f && this.q[e] >= j) {
                    int i2 = i - 1;
                    int i3 = e - 1;
                    i = i2;
                    e = i3;
                    if (i3 == -1) {
                        e = this.l - 1;
                        i = i2;
                    }
                }
                int a2 = a() - (this.e + i);
                com.google.android.exoplayer2.util.a.a(a2 >= 0 && a2 <= this.t - this.f);
                int i4 = this.t - a2;
                this.t = i4;
                this.w = Math.max(this.v, d(i4));
                boolean z = false;
                if (a2 == 0) {
                    z = false;
                    if (this.x) {
                        z = true;
                    }
                }
                this.x = z;
                int i5 = this.t;
                if (i5 != 0) {
                    e(i5 - 1);
                }
                return true;
            }
        }
    }

    private boolean b(int i) {
        DrmSession drmSession = this.f21691d;
        if (drmSession == null || drmSession.c() == 4) {
            return true;
        }
        return (this.p[i] & 1073741824) == 0 && this.f21691d.d();
    }

    private boolean b(Format format) {
        synchronized (this) {
            this.z = false;
            if (af.a(format, this.C)) {
                return false;
            }
            if (af.a(format, this.D)) {
                this.C = this.D;
            } else {
                this.C = format;
            }
            this.F = com.google.android.exoplayer2.util.q.a(this.C.sampleMimeType, this.C.codecs);
            this.G = false;
            return true;
        }
    }

    private long c(int i) {
        int i2;
        this.v = Math.max(this.v, d(i));
        int i3 = this.t - i;
        this.t = i3;
        this.e += i;
        int i4 = this.u + i;
        this.u = i4;
        int i5 = this.l;
        if (i4 >= i5) {
            this.u = i4 - i5;
        }
        int i6 = this.f - i;
        this.f = i6;
        if (i6 < 0) {
            this.f = 0;
        }
        if (i3 != 0) {
            return this.n[this.u];
        }
        int i7 = this.u;
        if (i7 == 0) {
            i7 = i5;
        }
        return this.n[i7 - 1] + this.o[i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long d(int r6) {
        /*
            r5 = this;
            r0 = -9223372036854775808
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775808
            return r0
        L_0x000c:
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            int r0 = r0.e(r1)
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0018:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x005a
            r0 = r7
            r1 = r5
            long[] r1 = r1.q
            r2 = r9
            r1 = r1[r2]
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r7
            r11 = r0
            r0 = r5
            int[] r0 = r0.p
            r1 = r9
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x005a
            r0 = r9
            r1 = 1
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = -1
            if (r0 != r1) goto L_0x0054
            r0 = r5
            int r0 = r0.l
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x0054:
            int r10 = r10 + 1
            goto L_0x0018
        L_0x005a:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.z.d(int):long");
    }

    private int e(int i) {
        int i2 = this.u + i;
        int i3 = this.l;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private long g() {
        long max;
        synchronized (this) {
            max = Math.max(this.v, d(this.f));
        }
        return max;
    }

    private void h() {
        synchronized (this) {
            this.f = 0;
            y yVar = this.f21688a;
            yVar.f21682c = yVar.f21681b;
        }
    }

    private long i() {
        synchronized (this) {
            int i = this.t;
            if (i == 0) {
                return -1L;
            }
            return c(i);
        }
    }

    private boolean j() {
        return this.f != this.t;
    }

    public final int a() {
        return this.e + this.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(q qVar, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, a aVar) {
        synchronized (this) {
            decoderInputBuffer.f20823d = false;
            if (!j()) {
                if (!z2 && !this.x) {
                    Format format = this.C;
                    if (format == null || (!z && format == this.k)) {
                        return -3;
                    }
                    a((Format) com.google.android.exoplayer2.util.a.b(format), qVar);
                    return -5;
                }
                decoderInputBuffer.f20826a = 4;
                return -4;
            }
            int e = e(this.f);
            if (!z && this.s[e] == this.k) {
                if (!b(e)) {
                    decoderInputBuffer.f20823d = true;
                    return -3;
                }
                decoderInputBuffer.f20826a = this.p[e];
                decoderInputBuffer.e = this.q[e];
                if (decoderInputBuffer.e < this.g) {
                    decoderInputBuffer.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                aVar.f21692a = this.o[e];
                aVar.f21693b = this.n[e];
                aVar.f21694c = this.r[e];
                return -4;
            }
            a(this.s[e], qVar);
            return -5;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final int a(e eVar, int i, boolean z) throws IOException {
        y yVar = this.f21688a;
        int a2 = eVar.a(yVar.f21683d.f21687d.f22129a, yVar.f21683d.a(yVar.e), yVar.a(i));
        if (a2 != -1) {
            yVar.b(a2);
            return a2;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.t;
            if (i != 0) {
                long[] jArr = this.q;
                int i2 = this.u;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int a2 = a(i2, i3, j, z);
                    if (a2 == -1) {
                        return -1L;
                    }
                    return c(a2);
                }
            }
            return -1L;
        }
    }

    public final void a(int i) {
        boolean z;
        synchronized (this) {
            if (i >= 0) {
                if (this.f + i <= this.t) {
                    z = true;
                    com.google.android.exoplayer2.util.a.a(z);
                    this.f += i;
                }
            }
            z = false;
            com.google.android.exoplayer2.util.a.a(z);
            this.f += i;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(long j, int i, int i2, int i3, x.a aVar) {
        if (this.A) {
            a((Format) com.google.android.exoplayer2.util.a.a(this.B));
        }
        int i4 = i & 1;
        boolean z = i4 != 0;
        if (this.y) {
            if (z) {
                this.y = false;
            } else {
                return;
            }
        }
        long j2 = this.H + j;
        if (this.F) {
            if (j2 >= this.g) {
                if (i4 == 0) {
                    if (!this.G) {
                        Log.w("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.C);
                        this.G = true;
                    }
                    i |= 1;
                }
            } else {
                return;
            }
        }
        if (this.I) {
            if (z && a(j2)) {
                this.I = false;
            } else {
                return;
            }
        }
        a(j2, i, (this.f21688a.e - i2) - i3, i2, aVar);
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(Format format) {
        Format format2;
        if (this.H == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) {
            format2 = format;
        } else {
            Format.a buildUpon = format.buildUpon();
            buildUpon.o = format.subsampleOffsetUs + this.H;
            format2 = buildUpon.a();
        }
        this.A = false;
        this.B = format;
        boolean b2 = b(format2);
        b bVar = this.f21690c;
        if (bVar != null && b2) {
            bVar.j();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public final void a(u uVar, int i) {
        y yVar = this.f21688a;
        while (i > 0) {
            int a2 = yVar.a(i);
            uVar.a(yVar.f21683d.f21687d.f22129a, yVar.f21683d.a(yVar.e), a2);
            i -= a2;
            yVar.b(a2);
        }
    }

    public final void a(boolean z) {
        this.f21688a.a();
        this.t = 0;
        this.e = 0;
        this.u = 0;
        this.f = 0;
        this.y = true;
        this.g = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = Long.MIN_VALUE;
        this.x = false;
        this.D = null;
        if (z) {
            this.B = null;
            this.C = null;
            this.z = true;
        }
    }

    public final boolean a(long j, boolean z) {
        synchronized (this) {
            h();
            int e = e(this.f);
            if (!j() || j < this.q[e] || (j > this.w && !z)) {
                return false;
            }
            int a2 = a(e, this.t - this.f, j, true);
            if (a2 == -1) {
                return false;
            }
            this.g = j;
            this.f += a2;
            return true;
        }
    }

    public final int b(long j, boolean z) {
        synchronized (this) {
            int e = e(this.f);
            if (j() && j >= this.q[e]) {
                if (j <= this.w || !z) {
                    int a2 = a(e, this.t - this.f, j, true);
                    if (a2 == -1) {
                        return 0;
                    }
                    return a2;
                }
                return this.t - this.f;
            }
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public /* synthetic */ int b(e eVar, int i, boolean z) {
        int a2;
        a2 = a(eVar, i, z);
        return a2;
    }

    public final Format b() {
        synchronized (this) {
            if (this.z) {
                return null;
            }
            return this.C;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.x
    public /* synthetic */ void b(u uVar, int i) {
        a(uVar, i);
    }

    public final boolean b(boolean z) {
        Format format;
        synchronized (this) {
            if (!j()) {
                return z || this.x || !((format = this.C) == null || format == this.k);
            }
            int e = e(this.f);
            if (this.s[e] != this.k) {
                return true;
            }
            return b(e);
        }
    }

    public final long c() {
        long j;
        synchronized (this) {
            j = this.w;
        }
        return j;
    }

    public final boolean d() {
        boolean z;
        synchronized (this) {
            z = this.x;
        }
        return z;
    }

    public final void e() {
        this.f21688a.a(i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        DrmSession drmSession = this.f21691d;
        if (drmSession != null) {
            drmSession.b(this.i);
            this.f21691d = null;
            this.k = null;
        }
    }
}
