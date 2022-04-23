package androidx.media2.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media2.session.b;
import androidx.versionedparcelable.ParcelImpl;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/d.class */
public interface d extends IInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/d$a.class */
    public static abstract class a extends Binder implements d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.session.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/d$a$a.class */
        public static final class C0101a implements d {

            /* renamed from: a  reason: collision with root package name */
            public static d f4582a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f4583b;

            C0101a(IBinder iBinder) {
                this.f4583b = iBinder;
            }

            @Override // androidx.media2.session.d
            public final void a(b bVar, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSessionService");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4583b.transact(1, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4583b;
            }
        }

        public a() {
            attachInterface(this, "androidx.media2.session.IMediaSessionService");
        }

        public static d a() {
            return C0101a.f4582a;
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaSessionService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new C0101a(iBinder) : (d) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("androidx.media2.session.IMediaSessionService");
                a(b.a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.media2.session.IMediaSessionService");
                return true;
            }
        }
    }

    void a(b bVar, ParcelImpl parcelImpl) throws RemoteException;
}
