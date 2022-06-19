package com.google.android.exoplayer2.text.p342f;

import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.f.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/f/b.class */
final class C11388b implements AbstractC11379e {

    /* renamed from: a */
    private final C11356b[] f37559a;

    /* renamed from: b */
    private final long[] f37560b;

    public C11388b(C11356b[] c11356bArr, long[] jArr) {
        this.f37559a = c11356bArr;
        this.f37560b = jArr;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        int m19939b = C11599af.m19939b(this.f37560b, j, false);
        if (m19939b < this.f37560b.length) {
            return m19939b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return this.f37560b.length;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        int m19956a = C11599af.m19956a(this.f37560b, j, false);
        return (m19956a == -1 || this.f37559a[m19956a] == C11356b.f37411a) ? Collections.emptyList() : Collections.singletonList(this.f37559a[m19956a]);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        C11593a.m20022a(i >= 0);
        C11593a.m20022a(i < this.f37560b.length);
        return this.f37560b[i];
    }
}
