package p193e.p194a.p1002k4.p1004o.p1006j.p1008b;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k4.o.j.b.a */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/j/b/a.class */
public final class C16545a {

    /* renamed from: a */
    public final g f46490a = C25225a.m3978P1(new C16546a());

    /* renamed from: b */
    public final AbstractC16548b f46491b;

    /* renamed from: c */
    public final C16542a f46492c;

    /* renamed from: d */
    public final AbstractC8541a f46493d;

    /* renamed from: e */
    public final AbstractC19223c0 f46494e;

    /* renamed from: f */
    public final C20592g f46495f;

    /* renamed from: e.a.k4.o.j.b.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/o/j/b/a$a.class */
    public static final class C16546a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16546a() {
            super(0);
            C16545a.this = r4;
        }

        public Object invoke() {
            C20592g c20592g = C16545a.this.f46495f;
            return Boolean.valueOf(c20592g.f58022s2.m10941a(c20592g, C20592g.f57695p6[174]).isEnabled());
        }
    }

    @e(c = "com.truecaller.placepicker.data.sources.remote.GoogleGeocoderDataSource", f = "GoogleGeocoderDataSource.kt", l = {37}, m = "getPlaceFromLatlong")
    /* renamed from: e.a.k4.o.j.b.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/o/j/b/a$b.class */
    public static final class C16547b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46497d;

        /* renamed from: e */
        public int f46498e;

        /* renamed from: g */
        public Object f46500g;

        /* renamed from: h */
        public double f46501h;

        /* renamed from: i */
        public double f46502i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16547b(d dVar) {
            super(dVar);
            C16545a.this = r4;
        }

        /* renamed from: s */
        public final Object m17259s(Object obj) {
            this.f46497d = obj;
            this.f46498e |= Integer.MIN_VALUE;
            return C16545a.this.m17260a(PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, this);
        }
    }

    @Inject
    public C16545a(AbstractC16548b abstractC16548b, C16542a c16542a, AbstractC8541a abstractC8541a, AbstractC19223c0 abstractC19223c0, @Named("features_registry") C20592g c20592g) {
        l.e(abstractC16548b, "placesApi");
        l.e(c16542a, "placesMapper");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c20592g, "featuresRegistry");
        this.f46491b = abstractC16548b;
        this.f46492c = c16542a;
        this.f46493d = abstractC8541a;
        this.f46494e = abstractC19223c0;
        this.f46495f = c20592g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x014f  */
    /* JADX WARN: Type inference failed for: r0v115, types: [double] */
    /* JADX WARN: Type inference failed for: r0v117, types: [double] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17260a(double r14, double r16, s1.w.d<? super com.truecaller.placepicker.data.GeocodedPlace> r18) {
        /*
            Method dump skipped, instructions count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.p1004o.p1006j.p1008b.C16545a.m17260a(double, double, s1.w.d):java.lang.Object");
    }
}
