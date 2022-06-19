package p193e.p194a.p1002k4;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.libraries.places.api.model.AddressComponents;
import com.google.android.libraries.places.api.model.Place;
import com.truecaller.placepicker.data.GeocodedPlace;
import java.text.DecimalFormat;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.p1003n.AbstractC16523a;
import p193e.p194a.p1002k4.p1003n.AbstractC16528f;
import p193e.p194a.p1002k4.p1004o.AbstractC16538g;
import p193e.p194a.p1002k4.p1004o.C16532a;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import q3.a.i0;
import s1.f0.h;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k4.i */
/* loaded from: classes11-dex2jar.jar:e/a/k4/i.class */
public final class C16512i extends AbstractC20574a<AbstractC16511h> implements AbstractC16510g {

    /* renamed from: d */
    public final DecimalFormat f46416d = new DecimalFormat("#.######");

    /* renamed from: e */
    public GeocodedPlace f46417e;

    /* renamed from: f */
    public GeocodedPlace f46418f;

    /* renamed from: g */
    public int f46419g;

    /* renamed from: h */
    public final f f46420h;

    /* renamed from: i */
    public final f f46421i;

    /* renamed from: j */
    public final AbstractC16538g f46422j;

    /* renamed from: k */
    public final C16542a f46423k;

    /* renamed from: l */
    public final AbstractC14967y f46424l;

    /* renamed from: m */
    public final AbstractC14965w f46425m;

    /* renamed from: n */
    public final AbstractC16523a f46426n;

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter", f = "PlacePickerPresenter.kt", l = {101}, m = "fetchCurrentLocation")
    /* renamed from: e.a.k4.i$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/i$a.class */
    public static final class C16513a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46427d;

        /* renamed from: e */
        public int f46428e;

        /* renamed from: g */
        public Object f46430g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16513a(d dVar) {
            super(dVar);
            C16512i.this = r4;
        }

        /* renamed from: s */
        public final Object m17297s(Object obj) {
            this.f46427d = obj;
            this.f46428e |= Integer.MIN_VALUE;
            return C16512i.this.m17301Ij(this);
        }
    }

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter$fetchCurrentLocation$location$1", f = "PlacePickerPresenter.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: e.a.k4.i$b */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/i$b.class */
    public static final class C16514b extends i implements p<i0, d<? super C16532a>, Object> {

        /* renamed from: e */
        public int f46431e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16514b(d dVar) {
            super(2, dVar);
            C16512i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17296i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16514b(dVar);
        }

        /* renamed from: k */
        public final Object m17295k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16514b(dVar).m17294s(s.a);
        }

        /* renamed from: s */
        public final Object m17294s(Object obj) {
            a aVar = a.a;
            int i = this.f46431e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16538g abstractC16538g = C16512i.this.f46422j;
                this.f46431e = 1;
                Object mo17267d = abstractC16538g.mo17267d(this);
                obj = mo17267d;
                if (mo17267d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter", f = "PlacePickerPresenter.kt", l = {90, 95}, m = "fetchLastKnownOrCurrentLocation")
    /* renamed from: e.a.k4.i$c */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/i$c.class */
    public static final class C16515c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46433d;

        /* renamed from: e */
        public int f46434e;

        /* renamed from: g */
        public Object f46436g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16515c(d dVar) {
            super(dVar);
            C16512i.this = r4;
        }

        /* renamed from: s */
        public final Object m17293s(Object obj) {
            this.f46433d = obj;
            this.f46434e |= Integer.MIN_VALUE;
            return C16512i.this.m17300Jj(this);
        }
    }

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter$fetchLastKnownOrCurrentLocation$location$1", f = "PlacePickerPresenter.kt", l = {91}, m = "invokeSuspend")
    /* renamed from: e.a.k4.i$d */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/i$d.class */
    public static final class C16516d extends i implements p<i0, d<? super C16532a>, Object> {

        /* renamed from: e */
        public int f46437e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16516d(d dVar) {
            super(2, dVar);
            C16512i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17292i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16516d(dVar);
        }

        /* renamed from: k */
        public final Object m17291k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16516d(dVar).m17290s(s.a);
        }

        /* renamed from: s */
        public final Object m17290s(Object obj) {
            a aVar = a.a;
            int i = this.f46437e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16538g abstractC16538g = C16512i.this.f46422j;
                this.f46437e = 1;
                Object mo17268c = abstractC16538g.mo17268c(this);
                obj = mo17268c;
                if (mo17268c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter", f = "PlacePickerPresenter.kt", l = {171, 174, 179}, m = "maybeFetchLocation")
    /* renamed from: e.a.k4.i$e */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/i$e.class */
    public static final class C16517e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46439d;

        /* renamed from: e */
        public int f46440e;

        /* renamed from: g */
        public Object f46442g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16517e(d dVar) {
            super(dVar);
            C16512i.this = r4;
        }

        /* renamed from: s */
        public final Object m17289s(Object obj) {
            this.f46439d = obj;
            this.f46440e |= Integer.MIN_VALUE;
            return C16512i.this.m17299Kj(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16512i(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC16538g abstractC16538g, C16542a c16542a, AbstractC14967y abstractC14967y, AbstractC14965w abstractC14965w, AbstractC16523a abstractC16523a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC16538g, "placesRepository");
        l.e(c16542a, "placeMapper");
        l.e(abstractC14967y, "tcPermissionsView");
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(abstractC16523a, "analyticsLogger");
        this.f46420h = fVar;
        this.f46421i = fVar2;
        this.f46422j = abstractC16538g;
        this.f46423k = c16542a;
        this.f46424l = abstractC14967y;
        this.f46425m = abstractC14965w;
        this.f46426n = abstractC16523a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0112, code lost:
        if (r7 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0146, code lost:
        if (r7 == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0179, code lost:
        if (r7 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01aa, code lost:
        if (r7 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01ad, code lost:
        r7.mo17303t2(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b5, code lost:
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0195  */
    /* JADX WARN: Type inference failed for: r0v104, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v106, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v6, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v87, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v88, types: [e.a.k4.i$a] */
    /* JADX WARN: Type inference failed for: r0v97, types: [e.a.k4.i$a] */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17301Ij(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.C16512i.m17301Ij(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e4, code lost:
        if (r11 != null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fe  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17300Jj(s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.C16512i.m17300Jj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f7  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17299Kj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.C16512i.m17299Kj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: Lj */
    public void m17298Lj(Place place) {
        String str;
        l.e(place, "googlePlace");
        C16542a c16542a = this.f46423k;
        Objects.requireNonNull(c16542a);
        l.e(place, "googlePlace");
        place.getAddress();
        String address = place.getAddress();
        if ((address == null || address.length() == 0) == false) {
            StringBuilder sb = new StringBuilder();
            sb.append(place.getAddress());
            AddressComponents addressComponents = place.getAddressComponents();
            if (c16542a.m17264b(addressComponents != null ? addressComponents.asList() : null, "sublocality_level_2") == null) {
                AddressComponents addressComponents2 = place.getAddressComponents();
                if (c16542a.m17264b(addressComponents2 != null ? addressComponents2.asList() : null, "sublocality_level_3") == null) {
                    AddressComponents addressComponents3 = place.getAddressComponents();
                    if (c16542a.m17264b(addressComponents3 != null ? addressComponents3.asList() : null, "route") == null) {
                        AddressComponents addressComponents4 = place.getAddressComponents();
                        String m17264b = c16542a.m17264b(addressComponents4 != null ? addressComponents4.asList() : null, "administrative_area_level_1");
                        if (m17264b != null) {
                            l.d(sb, "address");
                            c16542a.m17261e(sb, sb.indexOf(m17264b), sb.length(), "");
                        }
                        l.d(sb, "address");
                        str = new h("[ ]*,$").e(v.g0(sb), "");
                    }
                }
            }
            AddressComponents addressComponents5 = place.getAddressComponents();
            String m17264b2 = c16542a.m17264b(addressComponents5 != null ? addressComponents5.asList() : null, "locality");
            if (m17264b2 != null) {
                l.d(sb, "address");
                c16542a.m17261e(sb, sb.indexOf(m17264b2), sb.length(), "");
            }
            l.d(sb, "address");
            str = new h("[ ]*,$").e(v.g0(sb), "");
        } else {
            str = place.getAddress();
        }
        String address2 = place.getAddress();
        String id = place.getId();
        LatLng latLng = place.getLatLng();
        Double valueOf = latLng != null ? Double.valueOf(latLng.a) : null;
        LatLng latLng2 = place.getLatLng();
        this.f46418f = new GeocodedPlace(str, address2, id, valueOf, latLng2 != null ? Double.valueOf(latLng2.b) : null, null, null, null, 224);
        AbstractC16511h abstractC16511h = (AbstractC16511h) this.f57683a;
        if (abstractC16511h != null) {
            abstractC16511h.mo17310G(place.getAddress());
        }
        AbstractC16511h abstractC16511h2 = (AbstractC16511h) this.f57683a;
        if (abstractC16511h2 != null) {
            LatLng latLng3 = place.getLatLng();
            ?? r21 = false;
            ?? r23 = latLng3 != null ? latLng3.a : false;
            LatLng latLng4 = place.getLatLng();
            if (latLng4 != null) {
                r21 = latLng4.b;
            }
            abstractC16511h2.mo17307S3(r23 == true ? 1.0d : 0.0d, r21 == true ? 1.0d : 0.0d);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.k4.h] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16511h abstractC16511h) {
        AbstractC16511h abstractC16511h2 = abstractC16511h;
        l.e(abstractC16511h2, "presenterView");
        this.f57683a = abstractC16511h2;
        this.f46426n.mo17273a(AbstractC16528f.C16531c.f46461a);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f46426n.mo17273a(new AbstractC16528f.C16530b(this.f46419g));
    }
}
