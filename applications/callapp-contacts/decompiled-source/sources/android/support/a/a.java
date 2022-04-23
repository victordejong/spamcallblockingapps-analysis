package android.support.a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:android/support/a/a.class */
public interface a extends IInterface {

    /* renamed from: android.support.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/a/a$a.class */
    public static abstract class AbstractBinderC0001a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/a/a$a$a.class */
        public static final class C0002a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f378a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f379b;

            C0002a(IBinder iBinder) {
                this.f379b = iBinder;
            }

            @Override // android.support.a.a
            public final void a(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeInt(i);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z ? 1 : 0);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f379b.transact(6, obtain, obtain2, 0) || AbstractBinderC0001a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0001a.a().a(i, uri, z, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.a
            public final void a(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f379b.transact(2, obtain, obtain2, 0) || AbstractBinderC0001a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0001a.a().a(i, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.a
            public final void a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f379b.transact(4, obtain, obtain2, 0) || AbstractBinderC0001a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0001a.a().a(bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.a
            public final void a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f379b.transact(3, obtain, obtain2, 0) || AbstractBinderC0001a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0001a.a().a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f379b;
            }

            @Override // android.support.a.a
            public final void b(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f379b.transact(5, obtain, obtain2, 0) || AbstractBinderC0001a.a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0001a.a().b(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.a
            public final Bundle c(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f379b.transact(7, obtain, obtain2, 0) && AbstractBinderC0001a.a() != null) {
                        return AbstractBinderC0001a.a().c(str, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0001a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }

        public static a a() {
            return C0002a.f378a;
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0002a(iBinder) : (a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                boolean z = false;
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                Bundle bundle6 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        int readInt = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt, bundle5);
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readString, bundle4);
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(bundle3);
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        b(readString2, bundle2);
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        int readInt2 = parcel.readInt();
                        Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt2, uri, z, bundle);
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                        String readString3 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle c2 = c(readString3, bundle6);
                        parcel2.writeNoException();
                        if (c2 != null) {
                            parcel2.writeInt(1);
                            c2.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            }
        }
    }

    void a(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException;

    void a(int i, Bundle bundle) throws RemoteException;

    void a(Bundle bundle) throws RemoteException;

    void a(String str, Bundle bundle) throws RemoteException;

    void b(String str, Bundle bundle) throws RemoteException;

    Bundle c(String str, Bundle bundle) throws RemoteException;
}
