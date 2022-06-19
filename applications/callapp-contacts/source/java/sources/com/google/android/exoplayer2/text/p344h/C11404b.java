package com.google.android.exoplayer2.text.p344h;

import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.h.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/h/b.class */
final class C11404b implements AbstractC11379e {

    /* renamed from: a */
    public static final C11404b f37641a = new C11404b();

    /* renamed from: b */
    private final List<C11356b> f37642b;

    private C11404b() {
        this.f37642b = Collections.emptyList();
    }

    public C11404b(C11356b c11356b) {
        this.f37642b = Collections.singletonList(c11356b);
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
        return j >= 0 ? this.f37642b : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        C11593a.m20022a(i == 0);
        return 0L;
    }
}
