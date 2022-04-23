package com.google.android.exoplayer2.text.a;

import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/d.class */
final class d implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f21732a;

    public d(List<b> list) {
        this.f21732a = list;
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
        return j >= 0 ? this.f21732a : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        a.a(i == 0);
        return 0L;
    }
}
