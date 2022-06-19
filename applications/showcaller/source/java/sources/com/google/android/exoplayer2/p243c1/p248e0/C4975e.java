package com.google.android.exoplayer2.p243c1.p248e0;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.c1.e0.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/e.class */
final class C4975e implements AbstractC4992t {

    /* renamed from: a */
    private final C4972c f15480a;

    /* renamed from: b */
    private final int f15481b;

    /* renamed from: c */
    private final long f15482c;

    /* renamed from: d */
    private final long f15483d;

    /* renamed from: e */
    private final long f15484e;

    public C4975e(C4972c c4972c, int i, long j, long j2) {
        this.f15480a = c4972c;
        this.f15481b = i;
        this.f15482c = j;
        long j3 = (j2 - j) / c4972c.f15475e;
        this.f15483d = j3;
        this.f15484e = m21010b(j3);
    }

    /* renamed from: b */
    private long m21010b(long j) {
        return C5515h0.m18822l0(j * this.f15481b, 1000000L, this.f15480a.f15473c);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        long m18817o = C5515h0.m18817o((this.f15480a.f15473c * j) / (this.f15481b * 1000000), 0L, this.f15483d - 1);
        long j2 = this.f15482c;
        long j3 = this.f15480a.f15475e;
        long m21010b = m21010b(m18817o);
        C4995u c4995u = new C4995u(m21010b, j2 + (j3 * m18817o));
        if (m21010b >= j || m18817o == this.f15483d - 1) {
            return new AbstractC4992t.C4993a(c4995u);
        }
        long j4 = m18817o + 1;
        return new AbstractC4992t.C4993a(c4995u, new C4995u(m21010b(j4), this.f15482c + (this.f15480a.f15475e * j4)));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15484e;
    }
}
