package com.google.android.exoplayer2.text.b;

import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/c.class */
final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f21776a;

    public c(List<b> list) {
        this.f21776a = list;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        return this.f21776a;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        return 0L;
    }
}
