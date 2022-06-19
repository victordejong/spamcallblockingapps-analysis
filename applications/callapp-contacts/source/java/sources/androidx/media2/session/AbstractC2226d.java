package androidx.media2.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media2.session.AbstractC2220b;
import androidx.versionedparcelable.ParcelImpl;
/* renamed from: androidx.media2.session.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/d.class */
public interface AbstractC2226d extends IInterface {

    /* renamed from: androidx.media2.session.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/d$a.class */
    public static abstract class AbstractBinderC2227a extends Binder implements AbstractC2226d {

        /* renamed from: androidx.media2.session.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/d$a$a.class */
        public static final class C2228a implements AbstractC2226d {

            /* renamed from: a */
            public static AbstractC2226d f8810a;

            /* renamed from: b */
            private IBinder f8811b;

            C2228a(IBinder iBinder) {
                this.f8811b = iBinder;
            }

            @Override // androidx.media2.session.AbstractC2226d
            /* renamed from: a */
            public final void mo41082a(AbstractC2220b abstractC2220b, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSessionService");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8811b.transact(1, obtain, null, 1) || AbstractBinderC2227a.m41084a() == null) {
                        return;
                    }
                    AbstractBinderC2227a.m41084a().mo41082a(abstractC2220b, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f8811b;
            }
        }

        public AbstractBinderC2227a() {
            attachInterface(this, "androidx.media2.session.IMediaSessionService");
        }

        /* renamed from: a */
        public static AbstractC2226d m41084a() {
            return C2228a.f8810a;
        }

        /* renamed from: a */
        public static AbstractC2226d m41083a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaSessionService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2226d)) ? new C2228a(iBinder) : (AbstractC2226d) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("androidx.media2.session.IMediaSessionService");
                mo41082a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("androidx.media2.session.IMediaSessionService");
                return true;
            }
        }
    }

    /* renamed from: a */
    void mo41082a(AbstractC2220b abstractC2220b, ParcelImpl parcelImpl) throws RemoteException;
}
