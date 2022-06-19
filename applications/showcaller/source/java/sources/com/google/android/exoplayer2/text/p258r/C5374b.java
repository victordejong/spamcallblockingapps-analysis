package com.google.android.exoplayer2.text.p258r;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.r.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/r/b.class */
final class C5374b implements AbstractC5320e {

    /* renamed from: d */
    public static final C5374b f17193d = new C5374b();

    /* renamed from: e */
    private final List<C5317b> f17194e;

    private C5374b() {
        this.f17194e = Collections.emptyList();
    }

    public C5374b(C5317b c5317b) {
        this.f17194e = Collections.singletonList(c5317b);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        C5508e.m18915a(i == 0);
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        return j >= 0 ? this.f17194e : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return 1;
    }
}
