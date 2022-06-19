package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.IGmsCallbacks;
import com.google.android.gms.common.internal.IGmsServiceBroker;
import com.google.android.gms.common.internal.zzm;
/* renamed from: e.m.a.f.e.b.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/l.class */
public final class C24975l implements IGmsServiceBroker {

    /* renamed from: a */
    public final IBinder f69924a;

    public C24975l(IBinder iBinder) {
        this.f69924a = iBinder;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    /* renamed from: Q */
    public final void mo4250Q(IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(iGmsCallbacks.asBinder());
            obtain.writeInt(1);
            zzm.m38819a(getServiceRequest, obtain, 0);
            this.f69924a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f69924a;
    }
}
