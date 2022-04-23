package com.google.android.exoplayer2.text.c;

import com.google.android.exoplayer2.text.e;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c/b.class */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.b> f21786a;

    public b(List<com.google.android.exoplayer2.text.b> list) {
        this.f21786a = list;
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
    public final List<com.google.android.exoplayer2.text.b> b(long j) {
        return this.f21786a;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        return 0L;
    }
}
