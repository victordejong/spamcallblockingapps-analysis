package p193e.p194a.p294b.p295a.p322f;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.geolocation.p137v1.GeoLocationRequest;
import com.truecaller.api.services.geolocation.p137v1.GeoLocationResponse;
import com.truecaller.placepicker.data.GeocodedPlace;
import javax.inject.Inject;
import p193e.p194a.p1238t2.p1239a.p1246d.p1247a.C20454b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p3.a.i1;
import s1.z.c.l;
/* renamed from: e.a.b.a.f.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/f/g.class */
public final class C7796g implements AbstractC7795f {

    /* renamed from: a */
    public final AbstractC7797h f24256a;

    @Inject
    public C7796g(AbstractC7797h abstractC7797h) {
        l.e(abstractC7797h, "geolocationStubManager");
        this.f24256a = abstractC7797h;
    }

    @Override // p193e.p194a.p294b.p295a.p322f.AbstractC7795f
    /* renamed from: a */
    public GeocodedPlace mo29285a(String str) {
        GeocodedPlace geocodedPlace;
        C20454b.C20455a mo20911c;
        l.e(str, "pincode");
        GeoLocationRequest.C2980b newBuilder = GeoLocationRequest.newBuilder();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setPincode(str);
        GeoLocationRequest build = newBuilder.build();
        try {
            mo20911c = this.f24256a.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20454b.C20455a c20455a = mo20911c;
            GeoLocationResponse m11125c = c20455a != null ? c20455a.m11125c(build) : null;
            if (m11125c == null) {
                geocodedPlace = null;
            } else {
                geocodedPlace = new GeocodedPlace(m11125c.getCity() + ", " + m11125c.getState(), null, null, null, null, m11125c.getState(), m11125c.getCity(), m11125c.getPincode(), 30);
            }
        } catch (i1 e) {
            geocodedPlace = null;
        }
        return geocodedPlace;
    }
}
