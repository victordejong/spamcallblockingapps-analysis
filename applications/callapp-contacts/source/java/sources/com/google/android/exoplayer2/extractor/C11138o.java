package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/o.class */
public final class C11138o implements AbstractC11146v {

    /* renamed from: a */
    private final C11139p f36476a;

    /* renamed from: b */
    private final long f36477b;

    public C11138o(C11139p c11139p, long j) {
        this.f36476a = c11139p;
        this.f36477b = j;
    }

    /* renamed from: a */
    private C11149w m21415a(long j, long j2) {
        return new C11149w((j * 1000000) / this.f36476a.f36482e, this.f36477b + j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long[]] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.exoplayer2.extractor.o] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        C11593a.m20024a(this.f36476a.f36488k);
        ?? r0 = this.f36476a.f36488k.f36490a;
        ?? r02 = this.f36476a.f36488k.f36491b;
        int m19956a = C11599af.m19956a((long[]) r0, this.f36476a.m21412a(j), false);
        ?? r15 = false;
        ?? r17 = m19956a == -1 ? (char) 0 : r0[m19956a];
        if (m19956a != -1) {
            r15 = r02[m19956a];
        }
        C11149w m21415a = m21415a(r17, r15 == true ? 1L : 0L);
        if (m21415a.f36507b == j || m19956a == r0.length - 1) {
            return new AbstractC11146v.C11147a(m21415a);
        }
        int i = m19956a + 1;
        return new AbstractC11146v.C11147a(m21415a, m21415a(r0[i], r02[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f36476a.m21414a();
    }
}
