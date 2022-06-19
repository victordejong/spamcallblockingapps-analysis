package p193e.p194a.p294b.p331b.p332a;

import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.address.GeocodedBusinessAddress;
import java.io.IOException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.ui.address.BusinessAddressGeolocationPresenter$onGeocodeTarget$1", f = "BusinessAddressGeolocationPresenter.kt", l = {40}, m = "invokeSuspend")
/* renamed from: e.a.b.b.a.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/h.class */
public final class C7855h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f24412e;

    /* renamed from: f */
    public int f24413f;

    /* renamed from: g */
    public final /* synthetic */ C7856i f24414g;

    /* renamed from: h */
    public final /* synthetic */ double f24415h;

    /* renamed from: i */
    public final /* synthetic */ double f24416i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7855h(C7856i c7856i, double d, double d2, d dVar) {
        super(2, dVar);
        this.f24414g = c7856i;
        this.f24415h = d;
        this.f24416i = d2;
    }

    /* renamed from: i */
    public final d<s> m29240i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C7855h c7855h = new C7855h(this.f24414g, this.f24415h, this.f24416i, dVar);
        c7855h.f24412e = obj;
        return c7855h;
    }

    /* renamed from: k */
    public final Object m29239k(Object obj, Object obj2) {
        return m29240i(obj, (d) obj2).m29238s(s.a);
    }

    /* renamed from: s */
    public final Object m29238s(Object obj) {
        a aVar = a.a;
        int i = this.f24413f;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f24412e;
                AbstractC7854g abstractC7854g = (AbstractC7854g) this.f24414g.f57683a;
                if (abstractC7854g != null) {
                    abstractC7854g.mo29246a0();
                }
                AbstractC8018a abstractC8018a = this.f24414g.f24419f;
                double d = this.f24415h;
                double d2 = this.f24416i;
                this.f24412e = i0Var;
                this.f24413f = 1;
                Object mo28968b = abstractC8018a.mo28968b(d, d2, this);
                obj = mo28968b;
                if (mo28968b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0 i0Var2 = (i0) this.f24412e;
                C25225a.m3932a3(obj);
            }
            GeocodedBusinessAddress geocodedBusinessAddress = (GeocodedBusinessAddress) obj;
            if (geocodedBusinessAddress != null) {
                C7856i.m29237Ij(this.f24414g, geocodedBusinessAddress);
            } else {
                C7856i c7856i = this.f24414g;
                c7856i.f24418e = null;
                AbstractC7854g abstractC7854g2 = (AbstractC7854g) c7856i.f57683a;
                if (abstractC7854g2 != null) {
                    abstractC7854g2.mo29247Eo(C3478R.string.BusinessProfile_GeocodeErrorNoResult);
                }
            }
        } catch (IOException e) {
            C7856i c7856i2 = this.f24414g;
            c7856i2.f24418e = null;
            AbstractC7854g abstractC7854g3 = (AbstractC7854g) c7856i2.f57683a;
            if (abstractC7854g3 != null) {
                abstractC7854g3.mo29247Eo(C3478R.string.BusinessProfile_GeocodeErrorNetwork);
            }
        } catch (IllegalArgumentException e2) {
            C7856i c7856i3 = this.f24414g;
            c7856i3.f24418e = null;
            AbstractC7854g abstractC7854g4 = (AbstractC7854g) c7856i3.f57683a;
            if (abstractC7854g4 != null) {
                abstractC7854g4.mo29247Eo(C3478R.string.BusinessProfile_GeocodeErrorBadPosition);
            }
        }
        return s.a;
    }
}
