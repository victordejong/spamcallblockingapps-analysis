package com.google.android.exoplayer2.text.p341e;

import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.e.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/d.class */
final class C11385d implements AbstractC11379e {

    /* renamed from: a */
    private final List<List<C11356b>> f37553a;

    /* renamed from: b */
    private final List<Long> f37554b;

    public C11385d(List<List<C11356b>> list, List<Long> list2) {
        this.f37553a = list;
        this.f37554b = list2;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        int m19942b = C11599af.m19942b(this.f37554b, Long.valueOf(j));
        if (m19942b < this.f37554b.size()) {
            return m19942b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return this.f37554b.size();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        int m19963a = C11599af.m19963a((List<? extends Comparable<? super Long>>) this.f37554b, Long.valueOf(j));
        return m19963a == -1 ? Collections.emptyList() : this.f37553a.get(m19963a);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        C11593a.m20022a(i >= 0);
        C11593a.m20022a(i < this.f37554b.size());
        return this.f37554b.get(i).longValue();
    }
}
