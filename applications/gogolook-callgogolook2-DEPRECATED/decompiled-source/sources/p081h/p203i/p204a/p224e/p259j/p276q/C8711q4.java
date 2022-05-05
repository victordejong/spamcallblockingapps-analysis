package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.q.q4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/q4.class */
public final class C8711q4 extends C8588e1 implements AbstractC8700p2 {
    public C8711q4(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8700p2
    /* renamed from: i */
    public final Bundle mo17237i(Bundle bundle) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17662a(G0, bundle);
        Parcel a = m17697a(1, G0);
        Bundle bundle2 = (Bundle) C8606g1.m17663a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }
}
