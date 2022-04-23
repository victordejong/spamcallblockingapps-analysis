package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d.class */
public class d implements v {

    /* renamed from: a  reason: collision with root package name */
    private final long f20958a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20959b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20960c;

    /* renamed from: d  reason: collision with root package name */
    private final long f20961d;
    private final int e;
    private final long f;

    public d(long j, long j2, int i, int i2) {
        this.f20958a = j;
        this.f20959b = j2;
        this.f20960c = i2 == -1 ? 1 : i2;
        this.e = i;
        if (j == -1) {
            this.f20961d = -1L;
            this.f = -9223372036854775807L;
            return;
        }
        this.f20961d = j - j2;
        this.f = a(j, j2, i);
    }

    private static long a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        long j2 = this.f20961d;
        if (j2 == -1) {
            return new v.a(new w(0L, this.f20959b));
        }
        long j3 = (this.e * j) / 8000000;
        int i = this.f20960c;
        long a2 = this.f20959b + af.a((j3 / i) * i, 0L, j2 - i);
        long b2 = b(a2);
        w wVar = new w(b2, a2);
        if (b2 < j) {
            int i2 = this.f20960c;
            if (i2 + a2 < this.f20958a) {
                long j4 = a2 + i2;
                return new v.a(wVar, new w(b(j4), j4));
            }
        }
        return new v.a(wVar);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return this.f20961d != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f;
    }

    public final long b(long j) {
        return a(j, this.f20959b, this.e);
    }
}
