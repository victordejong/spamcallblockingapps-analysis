package p1727n3.p1751c0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.MultiInstanceInvalidationService;
import p1727n3.p1751c0.AbstractC25664l;
/* renamed from: n3.c0.m */
/* loaded from: classes-dex2jar.jar:n3/c0/m.class */
public interface AbstractC25667m extends IInterface {

    /* renamed from: n3.c0.m$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/m$a.class */
    public static abstract class AbstractBinderC25668a extends Binder implements AbstractC25667m {
        public AbstractBinderC25668a() {
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
                int B1 = ((MultiInstanceInvalidationService.b) this).B1(AbstractC25664l.AbstractBinderC25665a.m3080m1(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(B1);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                ((MultiInstanceInvalidationService.b) this).z1(AbstractC25664l.AbstractBinderC25665a.m3080m1(parcel.readStrongBinder()), parcel.readInt());
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
                ((MultiInstanceInvalidationService.b) this).m1(parcel.readInt(), parcel.createStringArray());
                return true;
            }
        }
    }

    /* renamed from: z1 */
    void m3078z1(AbstractC25664l abstractC25664l, int i) throws RemoteException;
}
