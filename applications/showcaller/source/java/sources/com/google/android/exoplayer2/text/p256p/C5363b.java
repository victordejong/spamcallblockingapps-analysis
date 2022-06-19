package com.google.android.exoplayer2.text.p256p;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.p.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/p/b.class */
final class C5363b implements AbstractC5320e {

    /* renamed from: d */
    private final C5317b[] f17128d;

    /* renamed from: e */
    private final long[] f17129e;

    public C5363b(C5317b[] c5317bArr, long[] jArr) {
        this.f17128d = c5317bArr;
        this.f17129e = jArr;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        int m18839d = C5515h0.m18839d(this.f17129e, j, false, false);
        if (m18839d >= this.f17129e.length) {
            m18839d = -1;
        }
        return m18839d;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        C5508e.m18915a(i >= 0);
        C5508e.m18915a(i < this.f17129e.length);
        return this.f17129e[i];
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        int m18835f = C5515h0.m18835f(this.f17129e, j, true, false);
        if (m18835f != -1) {
            C5317b[] c5317bArr = this.f17128d;
            if (c5317bArr[m18835f] != C5317b.f16903d) {
                return Collections.singletonList(c5317bArr[m18835f]);
            }
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return this.f17129e.length;
    }
}
