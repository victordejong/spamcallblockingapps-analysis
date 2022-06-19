package com.google.android.exoplayer2;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C11446i;
import com.google.common.collect.AbstractC15549v;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/z.class */
public final class C11672z {

    /* renamed from: s */
    private static final AbstractC11315r.C11316a f38948s = new AbstractC11315r.C11316a(new Object());

    /* renamed from: a */
    public final AbstractC10864al f38949a;

    /* renamed from: b */
    public final AbstractC11315r.C11316a f38950b;

    /* renamed from: c */
    public final long f38951c;

    /* renamed from: d */
    public final int f38952d;

    /* renamed from: e */
    public final ExoPlaybackException f38953e;

    /* renamed from: f */
    public final boolean f38954f;

    /* renamed from: g */
    public final TrackGroupArray f38955g;

    /* renamed from: h */
    public final C11446i f38956h;

    /* renamed from: i */
    public final List<Metadata> f38957i;

    /* renamed from: j */
    public final AbstractC11315r.C11316a f38958j;

    /* renamed from: k */
    public final boolean f38959k;

    /* renamed from: l */
    public final int f38960l;

    /* renamed from: m */
    public final C10840aa f38961m;

    /* renamed from: n */
    public final boolean f38962n;

    /* renamed from: o */
    public final boolean f38963o;

    /* renamed from: p */
    public volatile long f38964p;

    /* renamed from: q */
    public volatile long f38965q;

    /* renamed from: r */
    public volatile long f38966r;

    public C11672z(AbstractC10864al abstractC10864al, AbstractC11315r.C11316a c11316a, long j, int i, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, C11446i c11446i, List<Metadata> list, AbstractC11315r.C11316a c11316a2, boolean z2, int i2, C10840aa c10840aa, long j2, long j3, long j4, boolean z3, boolean z4) {
        this.f38949a = abstractC10864al;
        this.f38950b = c11316a;
        this.f38951c = j;
        this.f38952d = i;
        this.f38953e = exoPlaybackException;
        this.f38954f = z;
        this.f38955g = trackGroupArray;
        this.f38956h = c11446i;
        this.f38957i = list;
        this.f38958j = c11316a2;
        this.f38959k = z2;
        this.f38960l = i2;
        this.f38961m = c10840aa;
        this.f38964p = j2;
        this.f38965q = j3;
        this.f38966r = j4;
        this.f38962n = z3;
        this.f38963o = z4;
    }

    /* renamed from: a */
    public static AbstractC11315r.C11316a m19590a() {
        return f38948s;
    }

    /* renamed from: a */
    public static C11672z m19583a(C11446i c11446i) {
        AbstractC10864al abstractC10864al = AbstractC10864al.f34997b;
        AbstractC11315r.C11316a c11316a = f38948s;
        return new C11672z(abstractC10864al, c11316a, -9223372036854775807L, 1, null, false, TrackGroupArray.EMPTY, c11446i, AbstractC15549v.m8720g(), c11316a, false, 0, C10840aa.f34891a, 0L, 0L, 0L, false, false);
    }

    /* renamed from: a */
    public final C11672z m19589a(int i) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, i, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19588a(ExoPlaybackException exoPlaybackException) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, exoPlaybackException, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19587a(C10840aa c10840aa) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, c10840aa, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19586a(AbstractC10864al abstractC10864al) {
        return new C11672z(abstractC10864al, this.f38950b, this.f38951c, this.f38952d, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19585a(AbstractC11315r.C11316a c11316a) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, c11316a, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19584a(AbstractC11315r.C11316a c11316a, long j, long j2, long j3, TrackGroupArray trackGroupArray, C11446i c11446i, List<Metadata> list) {
        return new C11672z(this.f38949a, c11316a, j2, this.f38952d, this.f38953e, this.f38954f, trackGroupArray, c11446i, list, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, j3, j, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19582a(boolean z) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, this.f38953e, z, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: a */
    public final C11672z m19581a(boolean z, int i) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, z, i, this.f38961m, this.f38964p, this.f38965q, this.f38966r, this.f38962n, this.f38963o);
    }

    /* renamed from: b */
    public final C11672z m19580b(boolean z) {
        return new C11672z(this.f38949a, this.f38950b, this.f38951c, this.f38952d, this.f38953e, this.f38954f, this.f38955g, this.f38956h, this.f38957i, this.f38958j, this.f38959k, this.f38960l, this.f38961m, this.f38964p, this.f38965q, this.f38966r, z, this.f38963o);
    }
}
