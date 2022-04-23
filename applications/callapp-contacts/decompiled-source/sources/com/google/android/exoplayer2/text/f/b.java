package com.google.android.exoplayer2.text.f;

import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/f/b.class */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.text.b[] f21819a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21820b;

    public b(com.google.android.exoplayer2.text.b[] bVarArr, long[] jArr) {
        this.f21819a = bVarArr;
        this.f21820b = jArr;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        int b2 = af.b(this.f21820b, j, false);
        if (b2 < this.f21820b.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return this.f21820b.length;
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<com.google.android.exoplayer2.text.b> b(long j) {
        int a2 = af.a(this.f21820b, j, false);
        return (a2 == -1 || this.f21819a[a2] == com.google.android.exoplayer2.text.b.f21733a) ? Collections.emptyList() : Collections.singletonList(this.f21819a[a2]);
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        boolean z = true;
        a.a(i >= 0);
        if (i >= this.f21820b.length) {
            z = false;
        }
        a.a(z);
        return this.f21820b[i];
    }
}
