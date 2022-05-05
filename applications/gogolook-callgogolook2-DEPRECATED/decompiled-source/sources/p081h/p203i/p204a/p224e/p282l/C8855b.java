package p081h.p203i.p204a.p224e.p282l;

import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8871a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* renamed from: h.i.a.e.l.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/b.class */
public final class C8855b {

    /* renamed from: a */
    public static AbstractC8871a f20173a;

    /* renamed from: a */
    public static C8854a m16879a(LatLng latLng) {
        try {
            return new C8854a(m16880a().mo16821c(latLng));
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public static C8854a m16878a(LatLng latLng, float f) {
        try {
            return new C8854a(m16880a().mo16823a(latLng, f));
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public static C8854a m16877a(LatLngBounds latLngBounds, int i) {
        try {
            return new C8854a(m16880a().mo16822a(latLngBounds, i));
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public static AbstractC8871a m16880a() {
        AbstractC8871a aVar = f20173a;
        C7021t.m21289a(aVar, "CameraUpdateFactory is not initialized");
        return aVar;
    }

    /* renamed from: a */
    public static void m16876a(AbstractC8871a aVar) {
        C7021t.m21290a(aVar);
        f20173a = aVar;
    }
}
