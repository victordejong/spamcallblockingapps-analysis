package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.VisibleRegion;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/v.class */
public final class C8901v extends C8533a implements AbstractC8877d {
    public C8901v(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IProjectionDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8877d
    /* renamed from: S */
    public final VisibleRegion mo16819S() throws RemoteException {
        Parcel a = m17862a(3, m17863G0());
        VisibleRegion visibleRegion = (VisibleRegion) C8538f.m17857a(a, VisibleRegion.CREATOR);
        a.recycle();
        return visibleRegion;
    }
}
