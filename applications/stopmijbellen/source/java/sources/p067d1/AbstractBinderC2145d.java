package p067d1;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.MultiInstanceInvalidationService;
import p067d1.AbstractC2142c;
/* renamed from: d1.d */
/* loaded from: classes-dex2jar.jar:d1/d.class */
public abstract class AbstractBinderC2145d extends Binder implements IInterface {
    public AbstractBinderC2145d() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            int m7517r = ((MultiInstanceInvalidationService.BinderC0655b) this).m7517r(AbstractC2142c.AbstractBinderC2143a.m3830q(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(m7517r);
            return true;
        } else if (i == 2) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            ((MultiInstanceInvalidationService.BinderC0655b) this).m7516s(AbstractC2142c.AbstractBinderC2143a.m3830q(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            return true;
        } else if (i != 3) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        } else {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            ((MultiInstanceInvalidationService.BinderC0655b) this).m7518q(parcel.readInt(), parcel.createStringArray());
            return true;
        }
    }
}
