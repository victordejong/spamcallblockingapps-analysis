package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.GetServiceRequest;
/* renamed from: h.i.a.e.d.n.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/p.class */
public final class C7012p implements AbstractC7014q {

    /* renamed from: a */
    public final IBinder f17155a;

    public C7012p(IBinder iBinder) {
        this.f17155a = iBinder;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7014q
    /* renamed from: a */
    public final void mo21305a(AbstractC7009o oVar, GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(oVar != null ? oVar.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                getServiceRequest.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f17155a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f17155a;
    }
}
