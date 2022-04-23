package com.google.android.exoplayer2.extractor.e;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/g.class */
final class g implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long f21006a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21007b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21008c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21009d;
    private final long e;
    private final long[] f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(long j, int i, long j2, long j3, long[] jArr) {
        this.f21006a = j;
        this.f21007b = i;
        this.f21008c = j2;
        this.f = jArr;
        this.f21009d = j3;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j + j3;
        }
        this.e = j4;
    }

    private long a(int i) {
        return (this.f21008c * i) / 100;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        long[] jArr;
        if (!a()) {
            return new v.a(new w(0L, this.f21006a + this.f21007b));
        }
        long a2 = af.a(j, 0L, this.f21008c);
        double d2 = (a2 * 100.0d) / this.f21008c;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                double d4 = ((long[]) a.a(this.f))[i];
                d3 = d4 + ((d2 - i) * ((i == 99 ? 256.0d : jArr[i + 1]) - d4));
            }
        }
        return new v.a(new w(a2, this.f21006a + af.a(Math.round((d3 / 256.0d) * this.f21009d), this.f21007b, this.f21009d - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return this.f != null;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f21008c;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c(long j) {
        long j2 = j - this.f21006a;
        if (!a() || j2 <= this.f21007b) {
            return 0L;
        }
        long[] jArr = (long[]) a.a(this.f);
        double d2 = (j2 * 256.0d) / this.f21009d;
        int a2 = af.a(jArr, (long) d2, true);
        long a3 = a(a2);
        long j3 = jArr[a2];
        int i = a2 + 1;
        long a4 = a(i);
        long j4 = a2 == 99 ? 256L : jArr[i];
        return a3 + Math.round((j3 == j4 ? 0.0d : (d2 - j3) / (j4 - j3)) * (a4 - a3));
    }
}
