package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.a;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.upstream.h;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/b.class */
public final class b implements h.a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f22146a;

    /* renamed from: b  reason: collision with root package name */
    private final h.a f22147b;

    /* renamed from: c  reason: collision with root package name */
    private final h.a f22148c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22149d;
    private final g.a e;
    private final a.AbstractC0448a f;
    private final f g;

    public b(Cache cache, h.a aVar) {
        this(cache, aVar, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(com.google.android.exoplayer2.upstream.cache.Cache r9, com.google.android.exoplayer2.upstream.h.a r10, int r11) {
        /*
            r8 = this;
            com.google.android.exoplayer2.upstream.FileDataSource$a r0 = new com.google.android.exoplayer2.upstream.FileDataSource$a
            r1 = r0
            r1.<init>()
            r12 = r0
            com.google.android.exoplayer2.upstream.cache.CacheDataSink$a r0 = new com.google.android.exoplayer2.upstream.cache.CacheDataSink$a
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = r9
            r0.f22139a = r1
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r12
            r4 = r13
            r5 = r11
            r6 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.b.<init>(com.google.android.exoplayer2.upstream.cache.Cache, com.google.android.exoplayer2.upstream.h$a, int):void");
    }

    public b(Cache cache, h.a aVar, h.a aVar2, g.a aVar3, int i, a.AbstractC0448a aVar4) {
        this(cache, aVar, aVar2, aVar3, i, aVar4, null);
    }

    public b(Cache cache, h.a aVar, h.a aVar2, g.a aVar3, int i, a.AbstractC0448a aVar4, f fVar) {
        this.f22146a = cache;
        this.f22147b = aVar;
        this.f22148c = aVar2;
        this.e = aVar3;
        this.f22149d = i;
        this.f = aVar4;
        this.g = fVar;
    }

    @Override // com.google.android.exoplayer2.upstream.h.a
    public final /* synthetic */ h createDataSource() {
        Cache cache = this.f22146a;
        h createDataSource = this.f22147b.createDataSource();
        h createDataSource2 = this.f22148c.createDataSource();
        g.a aVar = this.e;
        return new a(cache, createDataSource, createDataSource2, aVar == null ? null : aVar.a(), this.f22149d, this.f, this.g);
    }
}
