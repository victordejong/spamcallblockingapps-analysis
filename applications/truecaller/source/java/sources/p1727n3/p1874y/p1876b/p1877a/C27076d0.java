package p1727n3.p1874y.p1876b.p1877a;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27389h;
/* renamed from: n3.y.b.a.d0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/d0.class */
public final class C27076d0 {

    /* renamed from: n */
    public static final AbstractC27371t.C27372a f75673n = new AbstractC27371t.C27372a(new Object());

    /* renamed from: a */
    public final AbstractC27096l0 f75674a;

    /* renamed from: b */
    public final AbstractC27371t.C27372a f75675b;

    /* renamed from: c */
    public final long f75676c;

    /* renamed from: d */
    public final long f75677d;

    /* renamed from: e */
    public final int f75678e;

    /* renamed from: f */
    public final C27080f f75679f;

    /* renamed from: g */
    public final boolean f75680g;

    /* renamed from: h */
    public final TrackGroupArray f75681h;

    /* renamed from: i */
    public final C27389h f75682i;

    /* renamed from: j */
    public final AbstractC27371t.C27372a f75683j;

    /* renamed from: k */
    public volatile long f75684k;

    /* renamed from: l */
    public volatile long f75685l;

    /* renamed from: m */
    public volatile long f75686m;

    public C27076d0(AbstractC27096l0 abstractC27096l0, AbstractC27371t.C27372a c27372a, long j, long j2, int i, C27080f c27080f, boolean z, TrackGroupArray trackGroupArray, C27389h c27389h, AbstractC27371t.C27372a c27372a2, long j3, long j4, long j5) {
        this.f75674a = abstractC27096l0;
        this.f75675b = c27372a;
        this.f75676c = j;
        this.f75677d = j2;
        this.f75678e = i;
        this.f75679f = c27080f;
        this.f75680g = z;
        this.f75681h = trackGroupArray;
        this.f75682i = c27389h;
        this.f75683j = c27372a2;
        this.f75684k = j3;
        this.f75685l = j4;
        this.f75686m = j5;
    }

    /* renamed from: d */
    public static C27076d0 m941d(long j, C27389h c27389h) {
        AbstractC27096l0 abstractC27096l0 = AbstractC27096l0.f75737a;
        AbstractC27371t.C27372a c27372a = f75673n;
        return new C27076d0(abstractC27096l0, c27372a, j, -9223372036854775807L, 1, null, false, TrackGroupArray.f1041d, c27389h, c27372a, j, 0L, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* renamed from: a */
    public C27076d0 m944a(AbstractC27371t.C27372a c27372a, long j, long j2, long j3) {
        AbstractC27096l0 abstractC27096l0 = this.f75674a;
        ?? r25 = j2;
        if (!c27372a.m437b()) {
            r25 = -9223372036854775807;
        }
        return new C27076d0(abstractC27096l0, c27372a, j, r25, this.f75678e, this.f75679f, this.f75680g, this.f75681h, this.f75682i, this.f75683j, this.f75684k, j3, j);
    }

    /* renamed from: b */
    public C27076d0 m943b(C27080f c27080f) {
        return new C27076d0(this.f75674a, this.f75675b, this.f75676c, this.f75677d, this.f75678e, c27080f, this.f75680g, this.f75681h, this.f75682i, this.f75683j, this.f75684k, this.f75685l, this.f75686m);
    }

    /* renamed from: c */
    public C27076d0 m942c(TrackGroupArray trackGroupArray, C27389h c27389h) {
        return new C27076d0(this.f75674a, this.f75675b, this.f75676c, this.f75677d, this.f75678e, this.f75679f, this.f75680g, trackGroupArray, c27389h, this.f75683j, this.f75684k, this.f75685l, this.f75686m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: e */
    public AbstractC27371t.C27372a m940e(boolean z, AbstractC27096l0.C27099c c27099c, AbstractC27096l0.C27098b c27098b) {
        if (this.f75674a.m908p()) {
            return f75673n;
        }
        int mo542a = this.f75674a.mo542a(z);
        int i = this.f75674a.m909m(mo542a, c27099c).f75750g;
        int mo541b = this.f75674a.mo541b(this.f75675b.f77037a);
        ?? r15 = true;
        if (mo541b != -1) {
            r15 = true;
            if (mo542a == this.f75674a.m912f(mo541b, c27098b).f75740c) {
                r15 = this.f75675b.f77040d;
            }
        }
        return new AbstractC27371t.C27372a(this.f75674a.mo536l(i), r15 == true ? 1L : 0L);
    }
}
