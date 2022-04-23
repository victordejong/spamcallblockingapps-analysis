package com.google.android.exoplayer2.text.e;

import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/d.class */
final class d implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<List<b>> f21813a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Long> f21814b;

    public d(List<List<b>> list, List<Long> list2) {
        this.f21813a = list;
        this.f21814b = list2;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        int b2 = af.b(this.f21814b, Long.valueOf(j));
        if (b2 < this.f21814b.size()) {
            return b2;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return this.f21814b.size();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        int a2 = af.a((List<? extends Comparable<? super Long>>) this.f21814b, Long.valueOf(j));
        return a2 == -1 ? Collections.emptyList() : this.f21813a.get(a2);
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        boolean z = true;
        a.a(i >= 0);
        if (i >= this.f21814b.size()) {
            z = false;
        }
        a.a(z);
        return this.f21814b.get(i).longValue();
    }
}
