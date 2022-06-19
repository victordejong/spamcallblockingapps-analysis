package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d.class */
public class C10998d implements AbstractC11146v {

    /* renamed from: a */
    private final long f35596a;

    /* renamed from: b */
    private final long f35597b;

    /* renamed from: c */
    private final int f35598c;

    /* renamed from: d */
    private final long f35599d;

    /* renamed from: e */
    private final int f35600e;

    /* renamed from: f */
    private final long f35601f;

    public C10998d(long j, long j2, int i, int i2) {
        this.f35596a = j;
        this.f35597b = j2;
        this.f35598c = i2 == -1 ? 1 : i2;
        this.f35600e = i;
        if (j == -1) {
            this.f35599d = -1L;
            this.f35601f = -9223372036854775807L;
            return;
        }
        this.f35599d = j - j2;
        this.f35601f = m21752a(j, j2, i);
    }

    /* renamed from: a */
    private static long m21752a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        long j2 = this.f35599d;
        if (j2 == -1) {
            return new AbstractC11146v.C11147a(new C11149w(0L, this.f35597b));
        }
        long j3 = (this.f35600e * j) / 8000000;
        int i = this.f35598c;
        long m19993a = this.f35597b + C11599af.m19993a((j3 / i) * i, 0L, j2 - i);
        long m21751b = m21751b(m19993a);
        C11149w c11149w = new C11149w(m21751b, m19993a);
        if (m21751b < j) {
            int i2 = this.f35598c;
            if (i2 + m19993a < this.f35596a) {
                long j4 = m19993a + i2;
                return new AbstractC11146v.C11147a(c11149w, new C11149w(m21751b(j4), j4));
            }
        }
        return new AbstractC11146v.C11147a(c11149w);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return this.f35599d != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35601f;
    }

    /* renamed from: b */
    public final long m21751b(long j) {
        return m21752a(j, this.f35597b, this.f35600e);
    }
}
