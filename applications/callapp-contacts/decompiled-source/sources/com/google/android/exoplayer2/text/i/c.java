package com.google.android.exoplayer2.text.i;

import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/c.class */
final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f21864a;

    public c(List<b> list) {
        this.f21864a = Collections.unmodifiableList(list);
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        return j >= 0 ? this.f21864a : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        a.a(i == 0);
        return 0L;
    }
}
