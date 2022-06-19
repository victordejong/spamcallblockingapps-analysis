package p193e.p194a.p1002k4.p1004o;

import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsRequest$Builder;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.location.zzae;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import e.m.a.f.q.b0;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.p1004o.p1006j.p1007a.C16543a;
import p193e.p194a.p1002k4.p1004o.p1006j.p1008b.C16545a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.o;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k4.o.h */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/h.class */
public final class C16539h implements AbstractC16538g {

    /* renamed from: a */
    public final g f46474a = C25225a.m3978P1(new C16540a());

    /* renamed from: b */
    public final C16543a f46475b;

    /* renamed from: c */
    public final C16545a f46476c;

    /* renamed from: d */
    public final C16537f f46477d;

    /* renamed from: e */
    public final AbstractC8541a f46478e;

    /* renamed from: e.a.k4.o.h$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/o/h$a.class */
    public static final class C16540a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16540a() {
            super(0);
            C16539h.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C16539h.this.f46478e.getBoolean("forceRemoteGeocoding"));
        }
    }

    @e(c = "com.truecaller.placepicker.data.PlacesRepositoryImpl", f = "PlacesRepository.kt", l = {37, 38, 39}, m = "getPlaceFromLatlong")
    /* renamed from: e.a.k4.o.h$b */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/o/h$b.class */
    public static final class C16541b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46480d;

        /* renamed from: e */
        public int f46481e;

        /* renamed from: g */
        public Object f46483g;

        /* renamed from: h */
        public double f46484h;

        /* renamed from: i */
        public double f46485i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16541b(d dVar) {
            super(dVar);
            C16539h.this = r4;
        }

        /* renamed from: s */
        public final Object m17266s(Object obj) {
            this.f46480d = obj;
            this.f46481e |= Integer.MIN_VALUE;
            return C16539h.this.mo17269b(PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, this);
        }
    }

    @Inject
    public C16539h(C16543a c16543a, C16545a c16545a, C16537f c16537f, AbstractC8541a abstractC8541a) {
        l.e(c16543a, "nativeGeocoderDS");
        l.e(c16545a, "googleGeocoderDS");
        l.e(c16537f, "nativeGeolocationDS");
        l.e(abstractC8541a, "coreSettings");
        this.f46475b = c16543a;
        this.f46476c = c16545a;
        this.f46477d = c16537f;
        this.f46478e = abstractC8541a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
        r6 = r0.f46488c.m17263c(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[Catch: IOException -> 0x00a1, TRY_ENTER, TryCatch #0 {IOException -> 0x00a1, blocks: (B:5:0x0024, B:7:0x0038, B:14:0x0053, B:17:0x005f, B:19:0x0069, B:21:0x0081, B:23:0x0088, B:25:0x008f, B:27:0x0096), top: B:32:0x0024 }] */
    @Override // p193e.p194a.p1002k4.p1004o.AbstractC16538g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17270a(int r5, s1.w.d<? super com.truecaller.placepicker.data.GeocodedPlace> r6) {
        /*
            r4 = this;
            r0 = r4
            e.a.k4.o.j.a.a r0 = r0.f46475b
            r7 = r0
            r0 = r7
            s1.g r0 = r0.f46486a
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L24
            r0 = r9
            r6 = r0
            goto L9f
        L24:
            r0 = r7
            android.location.Geocoder r0 = r0.f46487b     // Catch: java.io.IOException -> La1
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.io.IOException -> La1
            r2 = 10
            java.util.List r0 = r0.getFromLocationName(r1, r2)     // Catch: java.io.IOException -> La1
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L4a
            r0 = r10
            boolean r0 = r0.isEmpty()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L45
            goto L4a
        L45:
            r0 = 0
            r5 = r0
            goto L4c
        L4a:
            r0 = 1
            r5 = r0
        L4c:
            r0 = r9
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L9f
            r0 = r10
            java.util.Iterator r0 = r0.iterator()     // Catch: java.io.IOException -> La1
            r10 = r0
        L5c:
            r0 = r9
            r6 = r0
            r0 = r10
            boolean r0 = r0.hasNext()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L9f
            r0 = r10
            java.lang.Object r0 = r0.next()     // Catch: java.io.IOException -> La1
            android.location.Address r0 = (android.location.Address) r0     // Catch: java.io.IOException -> La1
            r6 = r0
            r0 = r6
            java.lang.String r1 = "address"
            s1.z.c.l.d(r0, r1)     // Catch: java.io.IOException -> La1
            r0 = r6
            java.lang.String r0 = r0.getFeatureName()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L5c
            r0 = r6
            java.lang.String r0 = r0.getPostalCode()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L5c
            r0 = r6
            java.lang.String r0 = r0.getAdminArea()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L5c
            r0 = r6
            java.lang.String r0 = r0.getLocality()     // Catch: java.io.IOException -> La1
            if (r0 == 0) goto L5c
            r0 = r7
            e.a.k4.o.i.a r0 = r0.f46488c     // Catch: java.io.IOException -> La1
            r1 = r6
            com.truecaller.placepicker.data.GeocodedPlace r0 = r0.m17263c(r1)     // Catch: java.io.IOException -> La1
            r6 = r0
        L9f:
            r0 = r6
            return r0
        La1:
            r6 = move-exception
            r0 = r9
            r6 = r0
            goto L9f
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.p1004o.C16539h.mo17270a(int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0188  */
    /* JADX WARN: Type inference failed for: r0v16, types: [e.a.k4.o.j.b.a] */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    @Override // p193e.p194a.p1002k4.p1004o.AbstractC16538g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17269b(double r8, double r10, s1.w.d<? super com.truecaller.placepicker.data.GeocodedPlace> r12) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.p1004o.C16539h.mo17269b(double, double, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1002k4.p1004o.AbstractC16538g
    /* renamed from: c */
    public Object mo17268c(d<? super C16532a> dVar) {
        C16537f c16537f = this.f46477d;
        Objects.requireNonNull(c16537f);
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        c16537f.f46471a.b().m38535c(new C16536e(oVar, c16537f));
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            l.e(dVar, "frame");
        }
        return y;
    }

    @Override // p193e.p194a.p1002k4.p1004o.AbstractC16538g
    /* renamed from: d */
    public Object mo17267d(d<? super C16532a> dVar) {
        C16537f c16537f = this.f46477d;
        Objects.requireNonNull(c16537f);
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.q2(100);
        locationRequest.p2(1);
        LocationSettingsRequest$Builder locationSettingsRequest$Builder = new LocationSettingsRequest$Builder();
        locationSettingsRequest$Builder.f6233a.add(locationRequest);
        SettingsClient settingsClient = c16537f.f46472b;
        LocationSettingsRequest locationSettingsRequest = new LocationSettingsRequest(locationSettingsRequest$Builder.f6233a, locationSettingsRequest$Builder.f6234b, false, (zzae) null);
        Objects.requireNonNull(settingsClient);
        b0 m38908a = PendingResultUtil.m38908a(LocationServices.f6232d.checkLocationSettings(settingsClient.asGoogleApiClient(), locationSettingsRequest), new LocationSettingsResponse());
        l.d(m38908a, "locationServicesSettings…Settings(builder.build())");
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        C16534c c16534c = new C16534c(oVar, c16537f, m38908a, locationRequest);
        b0 b0Var = m38908a;
        Executor executor = TaskExecutors.f6494a;
        b0Var.i(executor, c16534c);
        b0Var.f(executor, new C16535d(oVar));
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            l.e(dVar, "frame");
        }
        return y;
    }
}
