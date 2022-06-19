package p193e.p194a.p294b.p354l;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.p152ui.address.GeocodedBusinessAddress;
import com.truecaller.common.network.country.CountryListDto;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p430q.C8588j;
import q3.a.i0;
import s1.e0.c0;
import s1.e0.x;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.l.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/l/b.class */
public final class C8019b implements AbstractC8018a {

    /* renamed from: a */
    public final Context f24737a;

    /* renamed from: b */
    public final Geocoder f24738b;

    /* renamed from: c */
    public final f f24739c;

    @e(c = "com.truecaller.bizmon.data.BusinessAddressRepositoryImpl$geocodeTarget$2", f = "BusinessAddressRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.l.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/l/b$a.class */
    public static final class C8020a extends i implements p<i0, d<? super GeocodedBusinessAddress>, Object> {

        /* renamed from: f */
        public final /* synthetic */ double f24741f;

        /* renamed from: g */
        public final /* synthetic */ double f24742g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8020a(double d, double d2, d dVar) {
            super(2, dVar);
            C8019b.this = r5;
            this.f24741f = d;
            this.f24742g = d2;
        }

        /* renamed from: i */
        public final d<s> m28965i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8020a(this.f24741f, this.f24742g, dVar);
        }

        /* renamed from: k */
        public final Object m28964k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8020a(this.f24741f, this.f24742g, dVar).m28963s(s.a);
        }

        /* renamed from: s */
        public final Object m28963s(Object obj) {
            Object obj2;
            Object obj3;
            Object obj4;
            C25225a.m3932a3(obj);
            List<Address> fromLocation = C8019b.this.f24738b.getFromLocation(this.f24741f, this.f24742g, 10);
            GeocodedBusinessAddress geocodedBusinessAddress = null;
            if (fromLocation != null) {
                geocodedBusinessAddress = null;
                if (!fromLocation.isEmpty()) {
                    Objects.requireNonNull(C8019b.this);
                    c0 k = x.k(s1.u.i.h(fromLocation), C8022d.f24744b);
                    Iterator it = k.a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = k.b.d(it.next());
                        String str = (String) obj2;
                        if (!(str == null || str.length() == 0)) {
                            break;
                        }
                    }
                    String str2 = (String) obj2;
                    Objects.requireNonNull(C8019b.this);
                    c0 k2 = x.k(s1.u.i.h(fromLocation), C8023e.f24745b);
                    Iterator it2 = k2.a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj3 = null;
                            break;
                        }
                        obj3 = k2.b.d(it2.next());
                        String str3 = (String) obj3;
                        if (!(str3 == null || str3.length() == 0)) {
                            break;
                        }
                    }
                    String str4 = (String) obj3;
                    Objects.requireNonNull(C8019b.this);
                    c0 k3 = x.k(s1.u.i.h(fromLocation), C8021c.f24743b);
                    Iterator it3 = k3.a.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            obj4 = null;
                            break;
                        }
                        obj4 = k3.b.d(it3.next());
                        String str5 = (String) obj4;
                        if (!(str5 == null || str5.length() == 0)) {
                            break;
                        }
                    }
                    String str6 = (String) obj4;
                    Object B = s1.u.i.B(fromLocation);
                    l.d(B, "addresses.first()");
                    String countryCode = ((Address) B).getCountryCode();
                    String str7 = null;
                    if (countryCode != null) {
                        Locale locale = Locale.ENGLISH;
                        l.d(locale, "Locale.ENGLISH");
                        str7 = countryCode.toLowerCase(locale);
                        l.d(str7, "(this as java.lang.String).toLowerCase(locale)");
                    }
                    Object B2 = s1.u.i.B(fromLocation);
                    l.d(B2, "addresses.first()");
                    double latitude = ((Address) B2).getLatitude();
                    Object B3 = s1.u.i.B(fromLocation);
                    l.d(B3, "addresses.first()");
                    geocodedBusinessAddress = new GeocodedBusinessAddress(str2, str4, str6, str7, latitude, ((Address) B3).getLongitude());
                }
            }
            return geocodedBusinessAddress;
        }
    }

    @Inject
    public C8019b(Context context, Geocoder geocoder, @Named("Async") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(geocoder, "geocoder");
        l.e(fVar, "async");
        this.f24737a = context;
        this.f24738b = geocoder;
        this.f24739c = fVar;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8018a
    /* renamed from: a */
    public String mo28969a() {
        CountryListDto.C3679a m28281h = C8588j.m28281h(this.f24737a);
        return m28281h != null ? m28281h.f10912c : null;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8018a
    /* renamed from: b */
    public Object mo28968b(double d, double d2, d<? super GeocodedBusinessAddress> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f24739c, new C8020a(d, d2, null), dVar);
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8018a
    /* renamed from: c */
    public String mo28967c(String str) {
        CountryListDto.C3679a m28286c = C8588j.m28286c(str);
        return m28286c != null ? m28286c.f10911b : null;
    }

    @Override // p193e.p194a.p294b.p354l.AbstractC8018a
    /* renamed from: d */
    public String mo28966d() {
        CountryListDto.C3679a m28281h = C8588j.m28281h(this.f24737a);
        return m28281h != null ? m28281h.f10911b : null;
    }
}
