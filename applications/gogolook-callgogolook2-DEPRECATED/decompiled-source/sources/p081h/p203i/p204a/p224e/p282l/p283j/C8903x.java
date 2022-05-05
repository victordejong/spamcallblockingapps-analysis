package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/x.class */
public final class C8903x extends C8533a implements AbstractC8881f {
    public C8903x(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    /* renamed from: a */
    public final void mo16818a(AbstractC8899t tVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, tVar);
        m17861b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    /* renamed from: d */
    public final AbstractC7106b mo16817d() throws RemoteException {
        Parcel a = m17862a(8, m17863G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, bundle);
        m17861b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onDestroy() throws RemoteException {
        m17861b(5, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onPause() throws RemoteException {
        m17861b(4, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onResume() throws RemoteException {
        m17861b(3, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onStart() throws RemoteException {
        m17861b(10, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f
    public final void onStop() throws RemoteException {
        m17861b(11, m17863G0());
    }
}
