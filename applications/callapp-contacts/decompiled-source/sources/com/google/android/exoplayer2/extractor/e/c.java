package com.google.android.exoplayer2.extractor.e;

import android.util.Pair;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/c.class */
final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f20995a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f20996b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20997c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(long[] jArr, long[] jArr2, long j) {
        this.f20995a = jArr;
        this.f20996b = jArr2;
        this.f20997c = j == -9223372036854775807L ? f.b(jArr2[jArr2.length - 1]) : j;
    }

    private static Pair<Long, Long> a(long j, long[] jArr, long[] jArr2) {
        int a2 = af.a(jArr, j, true);
        long j2 = jArr[a2];
        long j3 = jArr2[a2];
        int i = a2 + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        Pair<Long, Long> a2 = a(f.a(af.a(j, 0L, this.f20997c)), this.f20996b, this.f20995a);
        return new v.a(new w(f.b(((Long) a2.first).longValue()), ((Long) a2.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f20997c;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c(long j) {
        return f.b(((Long) a(j, this.f20995a, this.f20996b).second).longValue());
    }
}
