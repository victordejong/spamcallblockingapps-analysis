package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/o.class */
public final class o implements v {

    /* renamed from: a  reason: collision with root package name */
    private final p f21311a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21312b;

    public o(p pVar, long j) {
        this.f21311a = pVar;
        this.f21312b = j;
    }

    private w a(long j, long j2) {
        return new w((j * 1000000) / this.f21311a.e, this.f21312b + j2);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        a.a(this.f21311a.k);
        long[] jArr = this.f21311a.k.f21317a;
        long[] jArr2 = this.f21311a.k.f21318b;
        int a2 = af.a(jArr, this.f21311a.a(j), false);
        long j2 = 0;
        long j3 = a2 == -1 ? 0L : jArr[a2];
        if (a2 != -1) {
            j2 = jArr2[a2];
        }
        w a3 = a(j3, j2);
        if (a3.f21334b == j || a2 == jArr.length - 1) {
            return new v.a(a3);
        }
        int i = a2 + 1;
        return new v.a(a3, a(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f21311a.a();
    }
}
