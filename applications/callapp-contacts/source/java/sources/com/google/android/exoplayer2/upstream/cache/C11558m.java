package com.google.android.exoplayer2.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;
/* renamed from: com.google.android.exoplayer2.upstream.cache.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/m.class */
public final class C11558m implements AbstractC11544c {

    /* renamed from: a */
    private final long f38478a;

    /* renamed from: b */
    private final TreeSet<C11548g> f38479b = new TreeSet<>((Comparator<? super C11548g>) _$$Lambda$m$t6DBXzl_XIsEf0A4m7uHpb9kbi4.INSTANCE);

    /* renamed from: c */
    private long f38480c;

    public C11558m(long j) {
        this.f38478a = j;
    }

    /* renamed from: a */
    public static int m20117a(C11548g c11548g, C11548g c11548g2) {
        return c11548g.f38447f - c11548g2.f38447f == 0 ? c11548g.compareTo(c11548g2) : c11548g.f38447f < c11548g2.f38447f ? -1 : 1;
    }

    /* renamed from: b */
    private void m20116b(Cache cache, long j) {
        while (this.f38480c + j > this.f38478a && !this.f38479b.isEmpty()) {
            cache.mo20101b(this.f38479b.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.AbstractC11544c
    /* renamed from: a */
    public final void mo20121a(Cache cache, long j) {
        if (j != -1) {
            m20116b(cache, j);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC11538a
    /* renamed from: a */
    public final void mo20120a(Cache cache, C11548g c11548g) {
        this.f38479b.add(c11548g);
        this.f38480c += c11548g.f38444c;
        m20116b(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC11538a
    /* renamed from: a */
    public final void mo20119a(Cache cache, C11548g c11548g, C11548g c11548g2) {
        mo20118a(c11548g);
        mo20120a(cache, c11548g2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC11538a
    /* renamed from: a */
    public final void mo20118a(C11548g c11548g) {
        this.f38479b.remove(c11548g);
        this.f38480c -= c11548g.f38444c;
    }
}
