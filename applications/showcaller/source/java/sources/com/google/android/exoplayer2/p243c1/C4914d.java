package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.c1.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d.class */
public class C4914d implements AbstractC4992t {

    /* renamed from: a */
    private final long f15092a;

    /* renamed from: b */
    private final long f15093b;

    /* renamed from: c */
    private final int f15094c;

    /* renamed from: d */
    private final long f15095d;

    /* renamed from: e */
    private final int f15096e;

    /* renamed from: f */
    private final long f15097f;

    public C4914d(long j, long j2, int i, int i2) {
        this.f15092a = j;
        this.f15093b = j2;
        this.f15094c = i2 == -1 ? 1 : i2;
        this.f15096e = i;
        if (j == -1) {
            this.f15095d = -1L;
            this.f15097f = -9223372036854775807L;
            return;
        }
        this.f15095d = j - j2;
        this.f15097f = m21201f(j, j2, i);
    }

    /* renamed from: b */
    private long m21203b(long j) {
        long j2 = (j * this.f15096e) / 8000000;
        int i = this.f15094c;
        return this.f15093b + C5515h0.m18817o((j2 / i) * i, 0L, this.f15095d - i);
    }

    /* renamed from: f */
    private static long m21201f(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    /* renamed from: c */
    public long m21202c(long j) {
        return m21201f(j, this.f15093b, this.f15096e);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return this.f15095d != -1;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        if (this.f15095d == -1) {
            return new AbstractC4992t.C4993a(new C4995u(0L, this.f15093b));
        }
        long m21203b = m21203b(j);
        long m21202c = m21202c(m21203b);
        C4995u c4995u = new C4995u(m21202c, m21203b);
        if (m21202c < j) {
            int i = this.f15094c;
            if (i + m21203b < this.f15092a) {
                long j2 = m21203b + i;
                return new AbstractC4992t.C4993a(c4995u, new C4995u(m21202c(j2), j2));
            }
        }
        return new AbstractC4992t.C4993a(c4995u);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15097f;
    }
}
