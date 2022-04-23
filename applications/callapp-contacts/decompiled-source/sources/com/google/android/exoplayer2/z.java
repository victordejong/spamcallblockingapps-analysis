package com.google.android.exoplayer2;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.trackselection.i;
import com.google.common.collect.v;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/z.class */
public final class z {
    private static final r.a s = new r.a(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final al f22442a;

    /* renamed from: b  reason: collision with root package name */
    public final r.a f22443b;

    /* renamed from: c  reason: collision with root package name */
    public final long f22444c;

    /* renamed from: d  reason: collision with root package name */
    public final int f22445d;
    public final ExoPlaybackException e;
    public final boolean f;
    public final TrackGroupArray g;
    public final i h;
    public final List<Metadata> i;
    public final r.a j;
    public final boolean k;
    public final int l;
    public final aa m;
    public final boolean n;
    public final boolean o;
    public volatile long p;
    public volatile long q;
    public volatile long r;

    public z(al alVar, r.a aVar, long j, int i, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, i iVar, List<Metadata> list, r.a aVar2, boolean z2, int i2, aa aaVar, long j2, long j3, long j4, boolean z3, boolean z4) {
        this.f22442a = alVar;
        this.f22443b = aVar;
        this.f22444c = j;
        this.f22445d = i;
        this.e = exoPlaybackException;
        this.f = z;
        this.g = trackGroupArray;
        this.h = iVar;
        this.i = list;
        this.j = aVar2;
        this.k = z2;
        this.l = i2;
        this.m = aaVar;
        this.p = j2;
        this.q = j3;
        this.r = j4;
        this.n = z3;
        this.o = z4;
    }

    public static r.a a() {
        return s;
    }

    public static z a(i iVar) {
        al alVar = al.f20674b;
        r.a aVar = s;
        return new z(alVar, aVar, -9223372036854775807L, 1, null, false, TrackGroupArray.EMPTY, iVar, v.g(), aVar, false, 0, aa.f20646a, 0L, 0L, 0L, false, false);
    }

    public final z a(int i) {
        return new z(this.f22442a, this.f22443b, this.f22444c, i, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(ExoPlaybackException exoPlaybackException) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, exoPlaybackException, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(aa aaVar) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, aaVar, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(al alVar) {
        return new z(alVar, this.f22443b, this.f22444c, this.f22445d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(r.a aVar) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, this.e, this.f, this.g, this.h, this.i, aVar, this.k, this.l, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(r.a aVar, long j, long j2, long j3, TrackGroupArray trackGroupArray, i iVar, List<Metadata> list) {
        return new z(this.f22442a, aVar, j2, this.f22445d, this.e, this.f, trackGroupArray, iVar, list, this.j, this.k, this.l, this.m, this.p, j3, j, this.n, this.o);
    }

    public final z a(boolean z) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, this.e, z, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z a(boolean z, int i) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, this.e, this.f, this.g, this.h, this.i, this.j, z, i, this.m, this.p, this.q, this.r, this.n, this.o);
    }

    public final z b(boolean z) {
        return new z(this.f22442a, this.f22443b, this.f22444c, this.f22445d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.p, this.q, this.r, z, this.o);
    }
}
