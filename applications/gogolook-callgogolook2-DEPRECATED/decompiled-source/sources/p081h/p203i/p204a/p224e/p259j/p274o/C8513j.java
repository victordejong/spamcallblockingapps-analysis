package p081h.p203i.p204a.p224e.p259j.p274o;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzbf;
import com.google.android.gms.internal.location.zzo;
import com.google.android.gms.location.LocationSettingsRequest;
/* renamed from: h.i.a.e.j.o.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/j.class */
public final class C8513j extends C8495a implements AbstractC8511i {
    public C8513j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8511i
    /* renamed from: a */
    public final void mo17886a(zzbf zzbfVar) throws RemoteException {
        Parcel G0 = m17897G0();
        C8502d0.m17890a(G0, zzbfVar);
        m17895b(59, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8511i
    /* renamed from: a */
    public final void mo17885a(zzo zzoVar) throws RemoteException {
        Parcel G0 = m17897G0();
        C8502d0.m17890a(G0, zzoVar);
        m17895b(75, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8511i
    /* renamed from: a */
    public final void mo17884a(LocationSettingsRequest locationSettingsRequest, AbstractC8515k kVar, String str) throws RemoteException {
        Parcel G0 = m17897G0();
        C8502d0.m17890a(G0, locationSettingsRequest);
        C8502d0.m17892a(G0, kVar);
        G0.writeString(str);
        m17895b(63, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8511i
    /* renamed from: h */
    public final Location mo17883h(String str) throws RemoteException {
        Parcel G0 = m17897G0();
        G0.writeString(str);
        Parcel a = m17896a(21, G0);
        Location location = (Location) C8502d0.m17891a(a, Location.CREATOR);
        a.recycle();
        return location;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8511i
    /* renamed from: k */
    public final void mo17882k(boolean z) throws RemoteException {
        Parcel G0 = m17897G0();
        C8502d0.m17889a(G0, z);
        m17895b(12, G0);
    }
}
