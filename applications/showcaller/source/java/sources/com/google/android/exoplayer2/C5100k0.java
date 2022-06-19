package com.google.android.exoplayer2;

import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C5414i;
/* renamed from: com.google.android.exoplayer2.k0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/k0.class */
final class C5100k0 {

    /* renamed from: a */
    private static final AbstractC5294v.C5295a f15969a = new AbstractC5294v.C5295a(new Object());

    /* renamed from: b */
    public final AbstractC5585y0 f15970b;

    /* renamed from: c */
    public final AbstractC5294v.C5295a f15971c;

    /* renamed from: d */
    public final long f15972d;

    /* renamed from: e */
    public final long f15973e;

    /* renamed from: f */
    public final int f15974f;

    /* renamed from: g */
    public final ExoPlaybackException f15975g;

    /* renamed from: h */
    public final boolean f15976h;

    /* renamed from: i */
    public final TrackGroupArray f15977i;

    /* renamed from: j */
    public final C5414i f15978j;

    /* renamed from: k */
    public final AbstractC5294v.C5295a f15979k;

    /* renamed from: l */
    public volatile long f15980l;

    /* renamed from: m */
    public volatile long f15981m;

    /* renamed from: n */
    public volatile long f15982n;

    public C5100k0(AbstractC5585y0 abstractC5585y0, AbstractC5294v.C5295a c5295a, long j, long j2, int i, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, C5414i c5414i, AbstractC5294v.C5295a c5295a2, long j3, long j4, long j5) {
        this.f15970b = abstractC5585y0;
        this.f15971c = c5295a;
        this.f15972d = j;
        this.f15973e = j2;
        this.f15974f = i;
        this.f15975g = exoPlaybackException;
        this.f15976h = z;
        this.f15977i = trackGroupArray;
        this.f15978j = c5414i;
        this.f15979k = c5295a2;
        this.f15980l = j3;
        this.f15981m = j4;
        this.f15982n = j5;
    }

    /* renamed from: h */
    public static C5100k0 m20517h(long j, C5414i c5414i) {
        AbstractC5585y0 abstractC5585y0 = AbstractC5585y0.f18173a;
        AbstractC5294v.C5295a c5295a = f15969a;
        return new C5100k0(abstractC5585y0, c5295a, j, -9223372036854775807L, 1, null, false, TrackGroupArray.f16307d, c5414i, c5295a, j, 0L, j);
    }

    /* renamed from: a */
    public C5100k0 m20524a(boolean z) {
        return new C5100k0(this.f15970b, this.f15971c, this.f15972d, this.f15973e, this.f15974f, this.f15975g, z, this.f15977i, this.f15978j, this.f15979k, this.f15980l, this.f15981m, this.f15982n);
    }

    /* renamed from: b */
    public C5100k0 m20523b(AbstractC5294v.C5295a c5295a) {
        return new C5100k0(this.f15970b, this.f15971c, this.f15972d, this.f15973e, this.f15974f, this.f15975g, this.f15976h, this.f15977i, this.f15978j, c5295a, this.f15980l, this.f15981m, this.f15982n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* renamed from: c */
    public C5100k0 m20522c(AbstractC5294v.C5295a c5295a, long j, long j2, long j3) {
        AbstractC5585y0 abstractC5585y0 = this.f15970b;
        ?? r25 = j2;
        if (!c5295a.m19842a()) {
            r25 = -9223372036854775807;
        }
        return new C5100k0(abstractC5585y0, c5295a, j, r25, this.f15974f, this.f15975g, this.f15976h, this.f15977i, this.f15978j, this.f15979k, this.f15980l, j3, j);
    }

    /* renamed from: d */
    public C5100k0 m20521d(ExoPlaybackException exoPlaybackException) {
        return new C5100k0(this.f15970b, this.f15971c, this.f15972d, this.f15973e, this.f15974f, exoPlaybackException, this.f15976h, this.f15977i, this.f15978j, this.f15979k, this.f15980l, this.f15981m, this.f15982n);
    }

    /* renamed from: e */
    public C5100k0 m20520e(int i) {
        return new C5100k0(this.f15970b, this.f15971c, this.f15972d, this.f15973e, i, this.f15975g, this.f15976h, this.f15977i, this.f15978j, this.f15979k, this.f15980l, this.f15981m, this.f15982n);
    }

    /* renamed from: f */
    public C5100k0 m20519f(AbstractC5585y0 abstractC5585y0) {
        return new C5100k0(abstractC5585y0, this.f15971c, this.f15972d, this.f15973e, this.f15974f, this.f15975g, this.f15976h, this.f15977i, this.f15978j, this.f15979k, this.f15980l, this.f15981m, this.f15982n);
    }

    /* renamed from: g */
    public C5100k0 m20518g(TrackGroupArray trackGroupArray, C5414i c5414i) {
        return new C5100k0(this.f15970b, this.f15971c, this.f15972d, this.f15973e, this.f15974f, this.f15975g, this.f15976h, trackGroupArray, c5414i, this.f15979k, this.f15980l, this.f15981m, this.f15982n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: i */
    public AbstractC5294v.C5295a m20516i(boolean z, AbstractC5585y0.C5588c c5588c, AbstractC5585y0.C5587b c5587b) {
        if (this.f15970b.m18358q()) {
            return f15969a;
        }
        int m18368a = this.f15970b.m18368a(z);
        int i = this.f15970b.m18359n(m18368a, c5588c).f18189j;
        int mo18356b = this.f15970b.mo18356b(this.f15971c.f16780a);
        ?? r15 = true;
        if (mo18356b != -1) {
            r15 = true;
            if (m18368a == this.f15970b.m18364f(mo18356b, c5587b).f18176c) {
                r15 = this.f15971c.f16783d;
            }
        }
        return new AbstractC5294v.C5295a(this.f15970b.mo18353m(i), r15 == true ? 1L : 0L);
    }
}
