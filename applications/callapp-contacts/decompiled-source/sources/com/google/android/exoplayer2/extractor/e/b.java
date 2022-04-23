package com.google.android.exoplayer2.extractor.e;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/b.class */
final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    final o f20991a;

    /* renamed from: b  reason: collision with root package name */
    final o f20992b;

    /* renamed from: c  reason: collision with root package name */
    long f20993c;

    /* renamed from: d  reason: collision with root package name */
    private final long f20994d;

    public b(long j, long j2, long j3) {
        this.f20993c = j;
        this.f20994d = j3;
        o oVar = new o();
        this.f20991a = oVar;
        o oVar2 = new o();
        this.f20992b = oVar2;
        oVar.a(0L);
        oVar2.a(j2);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        int a2 = af.a(this.f20991a, j);
        w wVar = new w(this.f20991a.a(a2), this.f20992b.a(a2));
        if (wVar.f21334b == j || a2 == this.f20991a.f22310a - 1) {
            return new v.a(wVar);
        }
        int i = a2 + 1;
        return new v.a(wVar, new w(this.f20991a.a(i), this.f20992b.a(i)));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f20993c;
    }

    public final boolean b(long j) {
        o oVar = this.f20991a;
        return j - oVar.a(oVar.f22310a - 1) < 100000;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c() {
        return this.f20994d;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c(long j) {
        return this.f20991a.a(af.a(this.f20992b, j));
    }
}
