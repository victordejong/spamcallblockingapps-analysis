package com.google.android.exoplayer2.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/m.class */
public final class m implements c {

    /* renamed from: a  reason: collision with root package name */
    private final long f22183a;

    /* renamed from: b  reason: collision with root package name */
    private final TreeSet<g> f22184b = new TreeSet<>((Comparator<? super g>) _$$Lambda$m$t6DBXzl_XIsEf0A4m7uHpb9kbi4.INSTANCE);

    /* renamed from: c  reason: collision with root package name */
    private long f22185c;

    public m(long j) {
        this.f22183a = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(g gVar, g gVar2) {
        return gVar.f - gVar2.f == 0 ? gVar.compareTo(gVar2) : gVar.f < gVar2.f ? -1 : 1;
    }

    private void b(Cache cache, long j) {
        while (this.f22185c + j > this.f22183a && !this.f22184b.isEmpty()) {
            cache.b(this.f22184b.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.c
    public final void a(Cache cache, long j) {
        if (j != -1) {
            b(cache, j);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public final void a(Cache cache, g gVar) {
        this.f22184b.add(gVar);
        this.f22185c += gVar.f22158c;
        b(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public final void a(Cache cache, g gVar, g gVar2) {
        a(gVar);
        a(cache, gVar2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public final void a(g gVar) {
        this.f22184b.remove(gVar);
        this.f22185c -= gVar.f22158c;
    }
}
