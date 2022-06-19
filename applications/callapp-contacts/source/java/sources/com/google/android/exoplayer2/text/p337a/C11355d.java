package com.google.android.exoplayer2.text.p337a;

import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.a.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/d.class */
final class C11355d implements AbstractC11379e {

    /* renamed from: a */
    private final List<C11356b> f37410a;

    public C11355d(List<C11356b> list) {
        this.f37410a = list;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        return j >= 0 ? this.f37410a : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        C11593a.m20022a(i == 0);
        return 0L;
    }
}
