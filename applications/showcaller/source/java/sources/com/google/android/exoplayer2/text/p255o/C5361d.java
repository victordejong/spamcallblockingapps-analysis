package com.google.android.exoplayer2.text.p255o;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.o.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/d.class */
final class C5361d implements AbstractC5320e {

    /* renamed from: d */
    private final List<List<C5317b>> f17122d;

    /* renamed from: e */
    private final List<Long> f17123e;

    public C5361d(List<List<C5317b>> list, List<Long> list2) {
        this.f17122d = list;
        this.f17123e = list2;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        int m18841c = C5515h0.m18841c(this.f17123e, Long.valueOf(j), false, false);
        if (m18841c >= this.f17123e.size()) {
            m18841c = -1;
        }
        return m18841c;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        C5508e.m18915a(i >= 0);
        C5508e.m18915a(i < this.f17123e.size());
        return this.f17123e.get(i).longValue();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        int m18837e = C5515h0.m18837e(this.f17123e, Long.valueOf(j), true, false);
        return m18837e == -1 ? Collections.emptyList() : this.f17122d.get(m18837e);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return this.f17123e.size();
    }
}
