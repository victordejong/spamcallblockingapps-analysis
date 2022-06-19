package p189o4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: o4.h0 */
/* loaded from: classes-dex2jar.jar:o4/h0.class */
public final class C3871h0 extends C3883t {
    public C3871h0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    public final void zzd(Bundle bundle) throws RemoteException {
        Parcel m1735q = m1735q();
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1734r(3, m1735q);
    }
}
