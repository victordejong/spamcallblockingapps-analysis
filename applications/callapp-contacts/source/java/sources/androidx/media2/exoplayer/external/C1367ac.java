package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.C1946h;
/* renamed from: androidx.media2.exoplayer.external.ac */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ac.class */
final class C1367ac {

    /* renamed from: n */
    private static final AbstractC1842t.C1843a f5121n = new AbstractC1842t.C1843a(new Object());

    /* renamed from: a */
    public final AbstractC1383al f5122a;

    /* renamed from: b */
    public final AbstractC1842t.C1843a f5123b;

    /* renamed from: c */
    public final long f5124c;

    /* renamed from: d */
    public final long f5125d;

    /* renamed from: e */
    public final int f5126e;

    /* renamed from: f */
    public final ExoPlaybackException f5127f;

    /* renamed from: g */
    public final boolean f5128g;

    /* renamed from: h */
    public final TrackGroupArray f5129h;

    /* renamed from: i */
    public final C1946h f5130i;

    /* renamed from: j */
    public final AbstractC1842t.C1843a f5131j;

    /* renamed from: k */
    public volatile long f5132k;

    /* renamed from: l */
    public volatile long f5133l;

    /* renamed from: m */
    public volatile long f5134m;

    public C1367ac(AbstractC1383al abstractC1383al, AbstractC1842t.C1843a c1843a, long j, long j2, int i, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, C1946h c1946h, AbstractC1842t.C1843a c1843a2, long j3, long j4, long j5) {
        this.f5122a = abstractC1383al;
        this.f5123b = c1843a;
        this.f5124c = j;
        this.f5125d = j2;
        this.f5126e = i;
        this.f5127f = exoPlaybackException;
        this.f5128g = z;
        this.f5129h = trackGroupArray;
        this.f5130i = c1946h;
        this.f5131j = c1843a2;
        this.f5132k = j3;
        this.f5133l = j4;
        this.f5134m = j5;
    }

    /* renamed from: a */
    public static C1367ac m43137a(long j, C1946h c1946h) {
        AbstractC1383al abstractC1383al = AbstractC1383al.f5203a;
        AbstractC1842t.C1843a c1843a = f5121n;
        return new C1367ac(abstractC1383al, c1843a, j, -9223372036854775807L, 1, null, false, TrackGroupArray.EMPTY, c1946h, c1843a, j, 0L, j);
    }

    /* renamed from: a */
    public final C1367ac m43138a(int i) {
        return new C1367ac(this.f5122a, this.f5123b, this.f5124c, this.f5125d, i, this.f5127f, this.f5128g, this.f5129h, this.f5130i, this.f5131j, this.f5132k, this.f5133l, this.f5134m);
    }

    /* renamed from: a */
    public final C1367ac m43136a(ExoPlaybackException exoPlaybackException) {
        return new C1367ac(this.f5122a, this.f5123b, this.f5124c, this.f5125d, this.f5126e, exoPlaybackException, this.f5128g, this.f5129h, this.f5130i, this.f5131j, this.f5132k, this.f5133l, this.f5134m);
    }

    /* renamed from: a */
    public final C1367ac m43135a(TrackGroupArray trackGroupArray, C1946h c1946h) {
        return new C1367ac(this.f5122a, this.f5123b, this.f5124c, this.f5125d, this.f5126e, this.f5127f, this.f5128g, trackGroupArray, c1946h, this.f5131j, this.f5132k, this.f5133l, this.f5134m);
    }

    /* renamed from: a */
    public final C1367ac m43134a(AbstractC1842t.C1843a c1843a) {
        return new C1367ac(this.f5122a, this.f5123b, this.f5124c, this.f5125d, this.f5126e, this.f5127f, this.f5128g, this.f5129h, this.f5130i, c1843a, this.f5132k, this.f5133l, this.f5134m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* renamed from: a */
    public final C1367ac m43133a(AbstractC1842t.C1843a c1843a, long j, long j2, long j3) {
        AbstractC1383al abstractC1383al = this.f5122a;
        ?? r25 = j2;
        if (!c1843a.m42064a()) {
            r25 = -9223372036854775807;
        }
        return new C1367ac(abstractC1383al, c1843a, j, r25, this.f5126e, this.f5127f, this.f5128g, this.f5129h, this.f5130i, this.f5131j, this.f5132k, j3, j);
    }

    /* renamed from: a */
    public final C1367ac m43132a(boolean z) {
        return new C1367ac(this.f5122a, this.f5123b, this.f5124c, this.f5125d, this.f5126e, this.f5127f, z, this.f5129h, this.f5130i, this.f5131j, this.f5132k, this.f5133l, this.f5134m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* renamed from: a */
    public final AbstractC1842t.C1843a m43131a(boolean z, AbstractC1383al.C1386b c1386b, AbstractC1383al.C1385a c1385a) {
        if (this.f5122a.m43094a()) {
            return f5121n;
        }
        int mo42108b = this.f5122a.mo42108b(z);
        int i = this.f5122a.mo42095a(mo42108b, c1386b, 0L).f5216g;
        int mo42088a = this.f5122a.mo42088a(this.f5123b.f7356a);
        ?? r15 = true;
        if (mo42088a != -1) {
            r15 = true;
            if (mo42108b == this.f5122a.mo42091a(mo42088a, c1385a, false).f5206c) {
                r15 = this.f5123b.f7359d;
            }
        }
        return new AbstractC1842t.C1843a(this.f5122a.mo42092a(i), r15 == true ? 1L : 0L);
    }
}
