package android.support.a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.a.a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/a/b.class */
public interface b extends IInterface {

    /* loaded from: classes-dex2jar.jar:android/support/a/b$a.class */
    public static abstract class a extends Binder implements b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.a.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/a/b$a$a.class */
        public static final class C0005a implements b {

            /* renamed from: a  reason: collision with root package name */
            public static b f382a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f383b;

            C0005a(IBinder iBinder) {
                this.f383b = iBinder;
            }

            @Override // android.support.a.b
            public final int a(android.support.a.a aVar, String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(8, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, str, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final Bundle a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(5, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(str, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    if (!this.f383b.transact(2, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(j);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = false;
                    if (!this.f383b.transact(3, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, int i, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeInt(i);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(9, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, i, uri, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(7, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, uri);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, Uri uri, int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(12, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, uri, i, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(11, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, uri, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeTypedList(list);
                    if (!this.f383b.transact(4, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, uri, bundle, list);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.a.b
            public final boolean a(android.support.a.a aVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(10, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().a(aVar, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f383b;
            }

            @Override // android.support.a.b
            public final boolean b(android.support.a.a aVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f383b.transact(6, obtain, obtain2, 0) && a.a() != null) {
                        return a.a().b(aVar, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        public static b a() {
            return C0005a.f382a;
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0005a(iBinder) : (b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Uri uri = null;
                Bundle bundle5 = null;
                Bundle bundle6 = null;
                Bundle bundle7 = null;
                Bundle bundle8 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean a2 = a(parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(a2 ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean a3 = a(a.AbstractBinderC0001a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(a3 ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a4 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a5 = a(a4, uri2, bundle7, parcel.createTypedArrayList(Bundle.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeInt(a5 ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle a6 = a(readString, bundle6);
                        parcel2.writeNoException();
                        if (a6 != null) {
                            parcel2.writeInt(1);
                            a6.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a7 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean b2 = b(a7, bundle5);
                        parcel2.writeNoException();
                        parcel2.writeInt(b2 ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a8 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean a9 = a(a8, uri);
                        parcel2.writeNoException();
                        parcel2.writeInt(a9 ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a10 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int a11 = a(a10, readString2, bundle4);
                        parcel2.writeNoException();
                        parcel2.writeInt(a11);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a12 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a13 = a(a12, readInt, uri3, bundle3);
                        parcel2.writeNoException();
                        parcel2.writeInt(a13 ? 1 : 0);
                        return true;
                    case 10:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a14 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a15 = a(a14, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(a15 ? 1 : 0);
                        return true;
                    case 11:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a16 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        Uri uri4 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a17 = a(a16, uri4, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(a17 ? 1 : 0);
                        return true;
                    case 12:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        android.support.a.a a18 = a.AbstractBinderC0001a.a(parcel.readStrongBinder());
                        Uri uri5 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        int readInt2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean a19 = a(a18, uri5, readInt2, bundle8);
                        parcel2.writeNoException();
                        parcel2.writeInt(a19 ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
        }
    }

    int a(android.support.a.a aVar, String str, Bundle bundle) throws RemoteException;

    Bundle a(String str, Bundle bundle) throws RemoteException;

    boolean a(long j) throws RemoteException;

    boolean a(android.support.a.a aVar) throws RemoteException;

    boolean a(android.support.a.a aVar, int i, Uri uri, Bundle bundle) throws RemoteException;

    boolean a(android.support.a.a aVar, Uri uri) throws RemoteException;

    boolean a(android.support.a.a aVar, Uri uri, int i, Bundle bundle) throws RemoteException;

    boolean a(android.support.a.a aVar, Uri uri, Bundle bundle) throws RemoteException;

    boolean a(android.support.a.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    boolean a(android.support.a.a aVar, Bundle bundle) throws RemoteException;

    boolean b(android.support.a.a aVar, Bundle bundle) throws RemoteException;
}
