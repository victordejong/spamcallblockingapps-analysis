package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.AbstractC11565g;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.upstream.cache.C11540a;
@Deprecated
/* renamed from: com.google.android.exoplayer2.upstream.cache.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/b.class */
public final class C11543b implements AbstractC11567h.AbstractC11568a {

    /* renamed from: a */
    private final Cache f38429a;

    /* renamed from: b */
    private final AbstractC11567h.AbstractC11568a f38430b;

    /* renamed from: c */
    private final AbstractC11567h.AbstractC11568a f38431c;

    /* renamed from: d */
    private final int f38432d;

    /* renamed from: e */
    private final AbstractC11565g.AbstractC11566a f38433e;

    /* renamed from: f */
    private final C11540a.AbstractC11542a f38434f;

    /* renamed from: g */
    private final AbstractC11547f f38435g;

    public C11543b(Cache cache, AbstractC11567h.AbstractC11568a abstractC11568a) {
        this(cache, abstractC11568a, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11543b(com.google.android.exoplayer2.upstream.cache.Cache r9, com.google.android.exoplayer2.upstream.AbstractC11567h.AbstractC11568a r10, int r11) {
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
            r0.f38406a = r1
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.C11543b.<init>(com.google.android.exoplayer2.upstream.cache.Cache, com.google.android.exoplayer2.upstream.h$a, int):void");
    }

    public C11543b(Cache cache, AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11567h.AbstractC11568a abstractC11568a2, AbstractC11565g.AbstractC11566a abstractC11566a, int i, C11540a.AbstractC11542a abstractC11542a) {
        this(cache, abstractC11568a, abstractC11568a2, abstractC11566a, i, abstractC11542a, null);
    }

    public C11543b(Cache cache, AbstractC11567h.AbstractC11568a abstractC11568a, AbstractC11567h.AbstractC11568a abstractC11568a2, AbstractC11565g.AbstractC11566a abstractC11566a, int i, C11540a.AbstractC11542a abstractC11542a, AbstractC11547f abstractC11547f) {
        this.f38429a = cache;
        this.f38430b = abstractC11568a;
        this.f38431c = abstractC11568a2;
        this.f38433e = abstractC11566a;
        this.f38432d = i;
        this.f38434f = abstractC11542a;
        this.f38435g = abstractC11547f;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h.AbstractC11568a
    public final /* synthetic */ AbstractC11567h createDataSource() {
        Cache cache = this.f38429a;
        AbstractC11567h createDataSource = this.f38430b.createDataSource();
        AbstractC11567h createDataSource2 = this.f38431c.createDataSource();
        AbstractC11565g.AbstractC11566a abstractC11566a = this.f38433e;
        return new C11540a(cache, createDataSource, createDataSource2, abstractC11566a == null ? null : abstractC11566a.mo20077a(), this.f38432d, this.f38434f, this.f38435g);
    }
}
