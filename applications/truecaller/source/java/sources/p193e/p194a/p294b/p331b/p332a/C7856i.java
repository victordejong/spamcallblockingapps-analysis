package p193e.p194a.p294b.p331b.p332a;

import com.google.android.gms.maps.model.LatLng;
import com.truecaller.bizmon.p152ui.address.GeocodedBusinessAddress;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.b.a.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/i.class */
public final class C7856i extends AbstractC20574a<AbstractC7854g> {

    /* renamed from: d */
    public LatLng f24417d;

    /* renamed from: e */
    public GeocodedBusinessAddress f24418e;

    /* renamed from: f */
    public final AbstractC8018a f24419f;

    /* renamed from: g */
    public final f f24420g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7856i(AbstractC8018a abstractC8018a, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC8018a, "repository");
        l.e(fVar, "ui");
        this.f24419f = abstractC8018a;
        this.f24420g = fVar;
    }

    /* renamed from: Ij */
    public static final void m29237Ij(C7856i c7856i, GeocodedBusinessAddress geocodedBusinessAddress) {
        c7856i.f24418e = geocodedBusinessAddress;
        AbstractC7854g abstractC7854g = (AbstractC7854g) c7856i.f57683a;
        if (abstractC7854g != null) {
            abstractC7854g.mo29244v4(geocodedBusinessAddress.getStreet(), geocodedBusinessAddress.getZipCode(), geocodedBusinessAddress.getCity(), c7856i.f24419f.mo28967c(geocodedBusinessAddress.getCountryCode()));
        }
    }
}
