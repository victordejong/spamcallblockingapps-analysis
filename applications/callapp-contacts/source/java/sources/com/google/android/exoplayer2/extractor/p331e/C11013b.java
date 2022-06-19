package com.google.android.exoplayer2.extractor.p331e;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11149w;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11618o;
/* renamed from: com.google.android.exoplayer2.extractor.e.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/b.class */
final class C11013b implements AbstractC11016e {

    /* renamed from: a */
    final C11618o f35742a;

    /* renamed from: b */
    final C11618o f35743b;

    /* renamed from: c */
    long f35744c;

    /* renamed from: d */
    private final long f35745d;

    public C11013b(long j, long j2, long j3) {
        this.f35744c = j;
        this.f35745d = j3;
        C11618o c11618o = new C11618o();
        this.f35742a = c11618o;
        C11618o c11618o2 = new C11618o();
        this.f35743b = c11618o2;
        c11618o.m19855a(0L);
        c11618o2.m19855a(j2);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        int m19979a = C11599af.m19979a(this.f35742a, j);
        C11149w c11149w = new C11149w(this.f35742a.m19856a(m19979a), this.f35743b.m19856a(m19979a));
        if (c11149w.f36507b == j || m19979a == this.f35742a.f38699a - 1) {
            return new AbstractC11146v.C11147a(c11149w);
        }
        int i = m19979a + 1;
        return new AbstractC11146v.C11147a(c11149w, new C11149w(this.f35742a.m19856a(i), this.f35743b.m19856a(i)));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35744c;
    }

    /* renamed from: b */
    public final boolean m21702b(long j) {
        C11618o c11618o = this.f35742a;
        return j - c11618o.m19856a(c11618o.f38699a - 1) < 100000;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21688c() {
        return this.f35745d;
    }

    @Override // com.google.android.exoplayer2.extractor.p331e.AbstractC11016e
    /* renamed from: c */
    public final long mo21687c(long j) {
        return this.f35742a.m19856a(C11599af.m19979a(this.f35743b, j));
    }
}
