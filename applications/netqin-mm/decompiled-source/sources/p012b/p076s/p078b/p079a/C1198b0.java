package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p110y0.C1675m;
/* renamed from: b.s.b.a.b0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b0.class */
public final class C1198b0 {

    /* renamed from: n */
    public static final AbstractC1634r.C1635a f4781n = new AbstractC1634r.C1635a(new Object());

    /* renamed from: a */
    public final AbstractC1252n0 f4782a;

    /* renamed from: b */
    public final Object f4783b;

    /* renamed from: c */
    public final AbstractC1634r.C1635a f4784c;

    /* renamed from: d */
    public final long f4785d;

    /* renamed from: e */
    public final long f4786e;

    /* renamed from: f */
    public final int f4787f;

    /* renamed from: g */
    public final boolean f4788g;

    /* renamed from: h */
    public final TrackGroupArray f4789h;

    /* renamed from: i */
    public final C1675m f4790i;

    /* renamed from: j */
    public final AbstractC1634r.C1635a f4791j;

    /* renamed from: k */
    public volatile long f4792k;

    /* renamed from: l */
    public volatile long f4793l;

    /* renamed from: m */
    public volatile long f4794m;

    public C1198b0(AbstractC1252n0 n0Var, Object obj, AbstractC1634r.C1635a aVar, long j, long j2, int i, boolean z, TrackGroupArray trackGroupArray, C1675m mVar, AbstractC1634r.C1635a aVar2, long j3, long j4, long j5) {
        this.f4782a = n0Var;
        this.f4783b = obj;
        this.f4784c = aVar;
        this.f4785d = j;
        this.f4786e = j2;
        this.f4787f = i;
        this.f4788g = z;
        this.f4789h = trackGroupArray;
        this.f4790i = mVar;
        this.f4791j = aVar2;
        this.f4792k = j3;
        this.f4793l = j4;
        this.f4794m = j5;
    }

    /* renamed from: a */
    public static C1198b0 m34277a(long j, C1675m mVar) {
        return new C1198b0(AbstractC1252n0.f5012a, null, f4781n, j, -9223372036854775807L, 1, false, TrackGroupArray.f1858d, mVar, f4781n, j, 0L, j);
    }

    /* renamed from: a */
    public C1198b0 m34278a(int i) {
        return new C1198b0(this.f4782a, this.f4783b, this.f4784c, this.f4785d, this.f4786e, i, this.f4788g, this.f4789h, this.f4790i, this.f4791j, this.f4792k, this.f4793l, this.f4794m);
    }

    /* renamed from: a */
    public C1198b0 m34276a(TrackGroupArray trackGroupArray, C1675m mVar) {
        return new C1198b0(this.f4782a, this.f4783b, this.f4784c, this.f4785d, this.f4786e, this.f4787f, this.f4788g, trackGroupArray, mVar, this.f4791j, this.f4792k, this.f4793l, this.f4794m);
    }

    /* renamed from: a */
    public C1198b0 m34275a(AbstractC1252n0 n0Var, Object obj) {
        return new C1198b0(n0Var, obj, this.f4784c, this.f4785d, this.f4786e, this.f4787f, this.f4788g, this.f4789h, this.f4790i, this.f4791j, this.f4792k, this.f4793l, this.f4794m);
    }

    /* renamed from: a */
    public C1198b0 m34274a(AbstractC1634r.C1635a aVar) {
        return new C1198b0(this.f4782a, this.f4783b, this.f4784c, this.f4785d, this.f4786e, this.f4787f, this.f4788g, this.f4789h, this.f4790i, aVar, this.f4792k, this.f4793l, this.f4794m);
    }

    /* renamed from: a */
    public C1198b0 m34273a(AbstractC1634r.C1635a aVar, long j, long j2, long j3) {
        AbstractC1252n0 n0Var = this.f4782a;
        Object obj = this.f4783b;
        if (!aVar.m32501a()) {
            j2 = -9223372036854775807L;
        }
        return new C1198b0(n0Var, obj, aVar, j, j2, this.f4787f, this.f4788g, this.f4789h, this.f4790i, this.f4791j, this.f4792k, j3, j);
    }

    /* renamed from: a */
    public C1198b0 m34272a(boolean z) {
        return new C1198b0(this.f4782a, this.f4783b, this.f4784c, this.f4785d, this.f4786e, this.f4787f, z, this.f4789h, this.f4790i, this.f4791j, this.f4792k, this.f4793l, this.f4794m);
    }

    /* renamed from: a */
    public AbstractC1634r.C1635a m34271a(boolean z, AbstractC1252n0.C1255c cVar) {
        if (this.f4782a.m34040c()) {
            return f4781n;
        }
        AbstractC1252n0 n0Var = this.f4782a;
        return new AbstractC1634r.C1635a(this.f4782a.mo32718a(n0Var.m34045a(n0Var.mo32714a(z), cVar).f5024f));
    }
}
