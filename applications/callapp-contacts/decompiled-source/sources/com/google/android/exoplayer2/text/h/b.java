package com.google.android.exoplayer2.text.h;

import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/h/b.class */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    public static final b f21857a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.text.b> f21858b;

    private b() {
        this.f21858b = Collections.emptyList();
    }

    public b(com.google.android.exoplayer2.text.b bVar) {
        this.f21858b = Collections.singletonList(bVar);
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
    public final List<com.google.android.exoplayer2.text.b> b(long j) {
        return j >= 0 ? this.f21858b : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        a.a(i == 0);
        return 0L;
    }
}
