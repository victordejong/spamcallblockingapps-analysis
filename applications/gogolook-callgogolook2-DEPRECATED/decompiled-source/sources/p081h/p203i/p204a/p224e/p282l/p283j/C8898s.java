package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/s.class */
public final class C8898s extends C8533a implements AbstractC8871a {
    public C8898s(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8871a
    /* renamed from: a */
    public final AbstractC7106b mo16823a(LatLng latLng, float f) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, latLng);
        G0.writeFloat(f);
        Parcel a = m17862a(9, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8871a
    /* renamed from: a */
    public final AbstractC7106b mo16822a(LatLngBounds latLngBounds, int i) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, latLngBounds);
        G0.writeInt(i);
        Parcel a = m17862a(10, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8871a
    /* renamed from: c */
    public final AbstractC7106b mo16821c(LatLng latLng) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, latLng);
        Parcel a = m17862a(8, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
