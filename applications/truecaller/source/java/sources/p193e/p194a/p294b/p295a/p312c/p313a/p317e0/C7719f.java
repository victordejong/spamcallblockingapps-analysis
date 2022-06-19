package p193e.p194a.p294b.p295a.p312c.p313a.p317e0;

import com.truecaller.bizmon.C3478R;
import com.truecaller.placepicker.data.GeocodedPlace;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.C16506c;
import p193e.p194a.p1002k4.p1004o.AbstractC16538g;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7790b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7795f;
import q3.a.i0;
import q3.a.j0;
import s1.f0.q;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.a.c.a.e0.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/f.class */
public final class C7719f extends AbstractC7709a<AbstractC7736i> implements AbstractC7735h {

    /* renamed from: h */
    public GeocodedPlace f24145h;

    /* renamed from: i */
    public BusinessProfile f24146i;

    /* renamed from: j */
    public final f f24147j;

    /* renamed from: k */
    public final f f24148k;

    /* renamed from: l */
    public final AbstractC7790b f24149l;

    /* renamed from: m */
    public final AbstractC16538g f24150m;

    /* renamed from: n */
    public final AbstractC7775b f24151n;

    /* renamed from: o */
    public final AbstractC19223c0 f24152o;

    /* renamed from: p */
    public final AbstractC7795f f24153p;

    /* renamed from: q */
    public final C20592g f24154q;

    @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.LocationFormPresenter$validatePincode$1", f = "LocationFormPresenter.kt", l = {72}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.c.a.e0.f$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/f$a.class */
    public static final class C7720a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f24155e;

        /* renamed from: f */
        public int f24156f;

        /* renamed from: h */
        public final /* synthetic */ String f24158h;

        @e(c = "com.truecaller.bizmon.newBusiness.onboarding.ui.presenters.LocationFormPresenter$validatePincode$1$1", f = "LocationFormPresenter.kt", l = {75}, m = "invokeSuspend")
        /* renamed from: e.a.b.a.c.a.e0.f$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/e0/f$a$a.class */
        public static final class C7721a extends i implements p<i0, d<? super GeocodedPlace>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f24159e;

            /* renamed from: f */
            public int f24160f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7721a(d dVar) {
                super(2, dVar);
                C7720a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m29404i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C7721a c7721a = new C7721a(dVar);
                c7721a.f24159e = obj;
                return c7721a;
            }

            /* renamed from: k */
            public final Object m29403k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C7721a c7721a = new C7721a(dVar);
                c7721a.f24159e = obj;
                return c7721a.m29402s(s.a);
            }

            /* renamed from: s */
            public final Object m29402s(Object obj) {
                GeocodedPlace geocodedPlace;
                a aVar = a.a;
                int i = this.f24160f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    i0 i0Var = (i0) this.f24159e;
                    C7720a c7720a = C7720a.this;
                    geocodedPlace = C7719f.this.f24153p.mo29285a(c7720a.f24158h);
                    if (geocodedPlace == null) {
                        String mo13768b = C7719f.this.f24152o.mo13768b(C3478R.string.google_maps_api_key, new Object[0]);
                        l.d(mo13768b, "resourceProvider.getStri…ring.google_maps_api_key)");
                        l.e(mo13768b, "<set-?>");
                        C16506c.f46413a = mo13768b;
                        C7720a c7720a2 = C7720a.this;
                        AbstractC16538g abstractC16538g = C7719f.this.f24150m;
                        int parseInt = Integer.parseInt(c7720a2.f24158h);
                        this.f24160f = 1;
                        Object mo17270a = abstractC16538g.mo17270a(parseInt, this);
                        obj = mo17270a;
                        if (mo17270a == aVar) {
                            return aVar;
                        }
                    }
                    return geocodedPlace;
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                geocodedPlace = (GeocodedPlace) obj;
                return geocodedPlace;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7720a(String str, d dVar) {
            super(2, dVar);
            C7719f.this = r5;
            this.f24158h = str;
        }

        /* renamed from: i */
        public final d<s> m29407i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7720a(this.f24158h, dVar);
        }

        /* renamed from: k */
        public final Object m29406k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7720a(this.f24158h, dVar).m29405s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0092, code lost:
            if (r6 != null) goto L21;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29405s(java.lang.Object r6) {
            /*
                r5 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r5
                int r0 = r0.f24156f
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L2e
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L24
                r0 = r5
                java.lang.Object r0 = r0.f24155e
                e.a.b.a.c.a.e0.f r0 = (p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7719f) r0
                r7 = r0
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r6
                r9 = r0
                goto L66
            L24:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L2e:
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                e.a.b.a.c.a.e0.f r0 = p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7719f.this
                r6 = r0
                r0 = r6
                s1.w.f r0 = r0.f24148k
                r10 = r0
                e.a.b.a.c.a.e0.f$a$a r0 = new e.a.b.a.c.a.e0.f$a$a
                r1 = r0
                r2 = r5
                r3 = 0
                r1.<init>(r3)
                r9 = r0
                r0 = r5
                r1 = r6
                r0.f24155e = r1
                r0 = r5
                r1 = 1
                r0.f24156f = r1
                r0 = r10
                r1 = r9
                r2 = r5
                java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
                r9 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto L64
                r0 = r7
                return r0
            L64:
                r0 = r6
                r7 = r0
            L66:
                r0 = r7
                r1 = r9
                com.truecaller.placepicker.data.GeocodedPlace r1 = (com.truecaller.placepicker.data.GeocodedPlace) r1
                r0.f24145h = r1
                r0 = r5
                e.a.b.a.c.a.e0.f r0 = p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7719f.this
                r9 = r0
                r0 = r9
                PV r0 = r0.f57683a
                e.a.b.a.c.a.i r0 = (p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7736i) r0
                r7 = r0
                r0 = r7
                if (r0 == 0) goto Lb7
                r0 = r9
                com.truecaller.placepicker.data.GeocodedPlace r0 = r0.f24145h
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L98
                r0 = r6
                java.lang.String r0 = r0.f14180a
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L98
                goto Lb0
            L98:
                r0 = r9
                e.a.p5.c0 r0 = r0.f24152o
                int r1 = com.truecaller.bizmon.C3478R.string.BusinessProfileOnboarding_UnknownPincode
                r2 = 0
                java.lang.Object[] r2 = new java.lang.Object[r2]
                java.lang.String r0 = r0.mo13768b(r1, r2)
                r6 = r0
                r0 = r6
                java.lang.String r1 = "resourceProvider.getStri…nboarding_UnknownPincode)"
                s1.z.c.l.d(r0, r1)
            Lb0:
                r0 = r7
                r1 = r6
                r0.mo29367Ht(r1)
            Lb7:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p312c.p313a.p317e0.C7719f.C7720a.m29405s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7719f(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC7790b abstractC7790b, AbstractC16538g abstractC16538g, AbstractC7775b abstractC7775b, AbstractC19223c0 abstractC19223c0, AbstractC7795f abstractC7795f, @Named("features_registry") C20592g c20592g) {
        super(fVar2, fVar, abstractC7790b, abstractC19223c0);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncIoContext");
        l.e(abstractC7790b, "businessProfileV2Repository");
        l.e(abstractC16538g, "placesRepository");
        l.e(abstractC7775b, "businessAnalyticsManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7795f, "geolocationRepository");
        l.e(c20592g, "featuresRegistry");
        this.f24147j = fVar;
        this.f24148k = fVar2;
        this.f24149l = abstractC7790b;
        this.f24150m = abstractC16538g;
        this.f24151n = abstractC7775b;
        this.f24152o = abstractC19223c0;
        this.f24153p = abstractC7795f;
        this.f24154q = c20592g;
    }

    /* renamed from: Ij */
    public final void m29408Ij(String str) {
        boolean z;
        Integer h = str != null ? q.h(str) : null;
        if (h != null && new s1.d0.i(100000, 999999).d(h.intValue())) {
            z = true;
        } else {
            if (h == null) {
                AbstractC7736i abstractC7736i = (AbstractC7736i) this.f57683a;
                if (abstractC7736i != null) {
                    String mo13768b = this.f24152o.mo13768b(C3478R.string.BusinessProfileOnboarding_PincodeNotEntered, new Object[0]);
                    l.d(mo13768b, "resourceProvider.getStri…arding_PincodeNotEntered)");
                    abstractC7736i.mo29365dt(mo13768b);
                }
            } else {
                AbstractC7736i abstractC7736i2 = (AbstractC7736i) this.f57683a;
                if (abstractC7736i2 != null) {
                    String mo13768b2 = this.f24152o.mo13768b(C3478R.string.BusinessProfileOnboarding_PincodeInvalidLength, new Object[0]);
                    l.d(mo13768b2, "resourceProvider.getStri…ing_PincodeInvalidLength)");
                    abstractC7736i2.mo29365dt(mo13768b2);
                }
            }
            z = false;
        }
        if (!z) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, this.f24147j, (j0) null, new C7720a(str, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h
    /* renamed from: K5 */
    public void mo29372K5(String str) {
        Integer num = null;
        this.f24145h = null;
        AbstractC7736i abstractC7736i = (AbstractC7736i) this.f57683a;
        if (abstractC7736i != null) {
            abstractC7736i.mo29363ql();
        }
        if (str != null) {
            num = Integer.valueOf(str.length());
        }
        if (num != null && !new s1.d0.i(0, 5).d(num.intValue())) {
            m29408Ij(str);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h
    /* renamed from: Lf */
    public void mo29371Lf() {
        this.f24151n.mo29295a(new AbstractC7761a.C7769h("PermissionReqShown"));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.b.a.c.a.i, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC7736i) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f24151n.mo29295a(new AbstractC7761a.C7769h("PincodeShown"));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h
    /* renamed from: Y5 */
    public void mo29370Y5(String str) {
        l.e(str, "pincode");
        GeocodedPlace geocodedPlace = this.f24145h;
        if (geocodedPlace == null) {
            m29408Ij(str);
            return;
        }
        String str2 = geocodedPlace.f14186g;
        String str3 = geocodedPlace.f14185f;
        BusinessProfile businessProfile = this.f24146i;
        if (businessProfile == null) {
            l.l("businessProfile");
            throw null;
        }
        businessProfile.setLocationDetails(C25225a.m3962T1(new LocationDetail(null, null, null, null, str2, str, str3, null, geocodedPlace.f14183d, geocodedPlace.f14184e, null, null, null, null, 15503, null)));
        l.e(businessProfile, "businessProfile");
        this.f24107f.mo29292b(businessProfile);
        AbstractC7736i abstractC7736i = (AbstractC7736i) this.f57683a;
        if (abstractC7736i != null) {
            abstractC7736i.mo29366Lj();
        }
        this.f24151n.mo29295a(AbstractC7761a.C7768g.f24228a);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h
    /* renamed from: Z4 */
    public void mo29369Z4() {
        this.f24151n.mo29295a(new AbstractC7761a.C7767f(true));
        AbstractC7736i abstractC7736i = (AbstractC7736i) this.f57683a;
        if (abstractC7736i != null) {
            abstractC7736i.mo29364ny(this.f24145h, this.f24154q.m10971d0().isEnabled());
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7735h
    /* renamed from: b3 */
    public void mo29368b3() {
        this.f24151n.mo29295a(new AbstractC7761a.C7767f(false));
        AbstractC7736i abstractC7736i = (AbstractC7736i) this.f57683a;
        if (abstractC7736i != null) {
            abstractC7736i.mo29362yq(this.f24145h);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7744q
    /* renamed from: b4 */
    public void mo29341b4(BusinessProfile businessProfile) {
        l.e(businessProfile, "businessProfile");
        this.f24146i = businessProfile;
    }
}
