package com.google.android.exoplayer2.text.p257q;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.text.q.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/q/f.class */
final class C5372f implements AbstractC5320e {

    /* renamed from: d */
    private final C5368b f17181d;

    /* renamed from: e */
    private final long[] f17182e;

    /* renamed from: f */
    private final Map<String, C5371e> f17183f;

    /* renamed from: g */
    private final Map<String, C5369c> f17184g;

    /* renamed from: h */
    private final Map<String, String> f17185h;

    public C5372f(C5368b c5368b, Map<String, C5371e> map, Map<String, C5369c> map2, Map<String, String> map3) {
        this.f17181d = c5368b;
        this.f17184g = map2;
        this.f17185h = map3;
        this.f17183f = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f17182e = c5368b.m19494j();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        int m18839d = C5515h0.m18839d(this.f17182e, j, false, false);
        if (m18839d >= this.f17182e.length) {
            m18839d = -1;
        }
        return m18839d;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        return this.f17182e[i];
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        return this.f17181d.m19496h(j, this.f17183f, this.f17184g, this.f17185h);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return this.f17182e.length;
    }
}
