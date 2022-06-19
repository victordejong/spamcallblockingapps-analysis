package com.google.android.exoplayer2.text.p252l;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.l.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/f.class */
final class C5340f implements AbstractC5320e {

    /* renamed from: d */
    private final List<C5317b> f17027d;

    public C5340f(List<C5317b> list) {
        this.f17027d = list;
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
        return j >= 0 ? this.f17027d : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return 1;
    }
}
