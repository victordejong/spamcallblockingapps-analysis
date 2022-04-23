package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/c.class */
final class c extends q {

    /* renamed from: a  reason: collision with root package name */
    private final long f20950a;

    public c(i iVar, long j) {
        super(iVar);
        a.a(iVar.c() >= j);
        this.f20950a = j;
    }

    @Override // com.google.android.exoplayer2.extractor.q, com.google.android.exoplayer2.extractor.i
    public final long b() {
        return super.b() - this.f20950a;
    }

    @Override // com.google.android.exoplayer2.extractor.q, com.google.android.exoplayer2.extractor.i
    public final long c() {
        return super.c() - this.f20950a;
    }

    @Override // com.google.android.exoplayer2.extractor.q, com.google.android.exoplayer2.extractor.i
    public final long d() {
        return super.d() - this.f20950a;
    }
}
