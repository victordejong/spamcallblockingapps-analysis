package com.google.android.exoplayer2.extractor.p335i;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.i.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/d.class */
final class C11129d implements AbstractC11146v {

    /* renamed from: a */
    private final C11126b f36467a;

    /* renamed from: b */
    private final int f36468b;

    /* renamed from: c */
    private final long f36469c;

    /* renamed from: d */
    private final long f36470d;

    /* renamed from: e */
    private final long f36471e;

    public C11129d(C11126b c11126b, int i, long j, long j2) {
        this.f36467a = c11126b;
        this.f36468b = i;
        this.f36469c = j;
        long j3 = (j2 - j) / c11126b.f36462e;
        this.f36470d = j3;
        this.f36471e = m21426b(j3);
    }

    /* renamed from: b */
    private long m21426b(long j) {
        return C11599af.m19946b(j * this.f36468b, 1000000L, this.f36467a.f36460c);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        long m19993a = C11599af.m19993a((this.f36467a.f36460c * j) / (this.f36468b * 1000000), 0L, this.f36470d - 1);
        long j2 = this.f36469c;
        long j3 = this.f36467a.f36462e;
        long m21426b = m21426b(m19993a);
        C11149w c11149w = new C11149w(m21426b, j2 + (j3 * m19993a));
        if (m21426b >= j || m19993a == this.f36470d - 1) {
            return new AbstractC11146v.C11147a(c11149w);
        }
        long j4 = m19993a + 1;
        return new AbstractC11146v.C11147a(c11149w, new C11149w(m21426b(j4), this.f36469c + (this.f36467a.f36462e * j4)));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f36471e;
    }
}
