package p000;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import com.google.android.exoplayer2.C0515C;
import hp;
import ph;
/* renamed from: dh */
/* loaded from: classes-dex2jar.jar:dh.class */
public final class C1292dh {

    /* renamed from: n */
    public static final hp.a f5867n = new hp.a(new Object());

    /* renamed from: a */
    public final ph f5868a;

    /* renamed from: b */
    public final Object f5869b;

    /* renamed from: c */
    public final hp.a f5870c;

    /* renamed from: d */
    public final long f5871d;

    /* renamed from: e */
    public final long f5872e;

    /* renamed from: f */
    public final int f5873f;

    /* renamed from: g */
    public final boolean f5874g;

    /* renamed from: h */
    public final TrackGroupArray f5875h;

    /* renamed from: i */
    public final C1259cs f5876i;

    /* renamed from: j */
    public final hp.a f5877j;

    /* renamed from: k */
    public volatile long f5878k;

    /* renamed from: l */
    public volatile long f5879l;

    /* renamed from: m */
    public volatile long f5880m;

    public C1292dh(ph phVar, Object obj, hp.a aVar, long j, long j2, int i, boolean z, TrackGroupArray trackGroupArray, C1259cs c1259cs, hp.a aVar2, long j3, long j4, long j5) {
        this.f5868a = phVar;
        this.f5869b = obj;
        this.f5870c = aVar;
        this.f5871d = j;
        this.f5872e = j2;
        this.f5873f = i;
        this.f5874g = z;
        this.f5875h = trackGroupArray;
        this.f5876i = c1259cs;
        this.f5877j = aVar2;
        this.f5878k = j3;
        this.f5879l = j4;
        this.f5880m = j5;
    }

    /* renamed from: g */
    public static C1292dh m2645g(long j, C1259cs c1259cs) {
        ph phVar = ph.a;
        hp.a aVar = f5867n;
        return new C1292dh(phVar, null, aVar, j, C0515C.TIME_UNSET, 1, false, TrackGroupArray.f1151d, c1259cs, aVar, j, 0L, j);
    }

    /* renamed from: a */
    public C1292dh m2651a(boolean z) {
        return new C1292dh(this.f5868a, this.f5869b, this.f5870c, this.f5871d, this.f5872e, this.f5873f, z, this.f5875h, this.f5876i, this.f5877j, this.f5878k, this.f5879l, this.f5880m);
    }

    /* renamed from: b */
    public C1292dh m2650b(hp.a aVar) {
        return new C1292dh(this.f5868a, this.f5869b, this.f5870c, this.f5871d, this.f5872e, this.f5873f, this.f5874g, this.f5875h, this.f5876i, aVar, this.f5878k, this.f5879l, this.f5880m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* renamed from: c */
    public C1292dh m2649c(hp.a aVar, long j, long j2, long j3) {
        ph phVar = this.f5868a;
        Object obj = this.f5869b;
        ?? r25 = j2;
        if (!aVar.b()) {
            r25 = -9223372036854775807;
        }
        return new C1292dh(phVar, obj, aVar, j, r25, this.f5873f, this.f5874g, this.f5875h, this.f5876i, this.f5877j, this.f5878k, j3, j);
    }

    /* renamed from: d */
    public C1292dh m2648d(int i) {
        return new C1292dh(this.f5868a, this.f5869b, this.f5870c, this.f5871d, this.f5872e, i, this.f5874g, this.f5875h, this.f5876i, this.f5877j, this.f5878k, this.f5879l, this.f5880m);
    }

    /* renamed from: e */
    public C1292dh m2647e(ph phVar, Object obj) {
        return new C1292dh(phVar, obj, this.f5870c, this.f5871d, this.f5872e, this.f5873f, this.f5874g, this.f5875h, this.f5876i, this.f5877j, this.f5878k, this.f5879l, this.f5880m);
    }

    /* renamed from: f */
    public C1292dh m2646f(TrackGroupArray trackGroupArray, C1259cs c1259cs) {
        return new C1292dh(this.f5868a, this.f5869b, this.f5870c, this.f5871d, this.f5872e, this.f5873f, this.f5874g, trackGroupArray, c1259cs, this.f5877j, this.f5878k, this.f5879l, this.f5880m);
    }

    /* renamed from: h */
    public hp.a m2644h(boolean z, ph.c cVar) {
        if (this.f5868a.q()) {
            return f5867n;
        }
        ph phVar = this.f5868a;
        return new hp.a(this.f5868a.l(phVar.m(phVar.a(z), cVar).f));
    }
}
