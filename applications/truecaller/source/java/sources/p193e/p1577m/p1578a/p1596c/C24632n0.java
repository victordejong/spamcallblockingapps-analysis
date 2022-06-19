package p193e.p1577m.p1578a.p1596c;

import com.google.android.exoplayer2.source.TrackGroupArray;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24650i;
/* renamed from: e.m.a.c.n0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/n0.class */
public final class C24632n0 {

    /* renamed from: n */
    public static final AbstractC24531p.C24532a f68993n = new AbstractC24531p.C24532a(new Object());

    /* renamed from: a */
    public final AbstractC24861y0 f68994a;

    /* renamed from: b */
    public final AbstractC24531p.C24532a f68995b;

    /* renamed from: c */
    public final long f68996c;

    /* renamed from: d */
    public final long f68997d;

    /* renamed from: e */
    public final int f68998e;

    /* renamed from: f */
    public final C24189b0 f68999f;

    /* renamed from: g */
    public final boolean f69000g;

    /* renamed from: h */
    public final TrackGroupArray f69001h;

    /* renamed from: i */
    public final C24650i f69002i;

    /* renamed from: j */
    public final AbstractC24531p.C24532a f69003j;

    /* renamed from: k */
    public volatile long f69004k;

    /* renamed from: l */
    public volatile long f69005l;

    /* renamed from: m */
    public volatile long f69006m;

    public C24632n0(AbstractC24861y0 abstractC24861y0, AbstractC24531p.C24532a c24532a, long j, long j2, int i, C24189b0 c24189b0, boolean z, TrackGroupArray trackGroupArray, C24650i c24650i, AbstractC24531p.C24532a c24532a2, long j3, long j4, long j5) {
        this.f68994a = abstractC24861y0;
        this.f68995b = c24532a;
        this.f68996c = j;
        this.f68997d = j2;
        this.f68998e = i;
        this.f68999f = c24189b0;
        this.f69000g = z;
        this.f69001h = trackGroupArray;
        this.f69002i = c24650i;
        this.f69003j = c24532a2;
        this.f69004k = j3;
        this.f69005l = j4;
        this.f69006m = j5;
    }

    /* renamed from: d */
    public static C24632n0 m4806d(long j, C24650i c24650i) {
        AbstractC24861y0 abstractC24861y0 = AbstractC24861y0.f69725a;
        AbstractC24531p.C24532a c24532a = f68993n;
        return new C24632n0(abstractC24861y0, c24532a, j, -9223372036854775807L, 1, null, false, TrackGroupArray.f5002d, c24650i, c24532a, j, 0L, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* renamed from: a */
    public C24632n0 m4809a(AbstractC24531p.C24532a c24532a, long j, long j2, long j3) {
        AbstractC24861y0 abstractC24861y0 = this.f68994a;
        ?? r25 = j2;
        if (!c24532a.m4974a()) {
            r25 = -9223372036854775807;
        }
        return new C24632n0(abstractC24861y0, c24532a, j, r25, this.f68998e, this.f68999f, this.f69000g, this.f69001h, this.f69002i, this.f69003j, this.f69004k, j3, j);
    }

    /* renamed from: b */
    public C24632n0 m4808b(C24189b0 c24189b0) {
        return new C24632n0(this.f68994a, this.f68995b, this.f68996c, this.f68997d, this.f68998e, c24189b0, this.f69000g, this.f69001h, this.f69002i, this.f69003j, this.f69004k, this.f69005l, this.f69006m);
    }

    /* renamed from: c */
    public C24632n0 m4807c(TrackGroupArray trackGroupArray, C24650i c24650i) {
        return new C24632n0(this.f68994a, this.f68995b, this.f68996c, this.f68997d, this.f68998e, this.f68999f, this.f69000g, trackGroupArray, c24650i, this.f69003j, this.f69004k, this.f69005l, this.f69006m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: e */
    public AbstractC24531p.C24532a m4805e(boolean z, AbstractC24861y0.C24864c c24864c, AbstractC24861y0.C24863b c24863b) {
        if (this.f68994a.m4362p()) {
            return f68993n;
        }
        int m4371a = this.f68994a.m4371a();
        int i = this.f68994a.m4363m(m4371a, c24864c).f69738g;
        int mo4361b = this.f68994a.mo4361b(this.f68995b.f68507a);
        ?? r15 = true;
        if (mo4361b != -1) {
            r15 = true;
            if (m4371a == this.f68994a.m4367f(mo4361b, c24863b).f69727b) {
                r15 = this.f68995b.f68510d;
            }
        }
        return new AbstractC24531p.C24532a(this.f68994a.mo4358l(i), r15 == true ? 1L : 0L);
    }
}
