package android.support.p006a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import java.util.List;
/* renamed from: android.support.a.b */
/* loaded from: classes-dex2jar.jar:android/support/a/b.class */
public interface AbstractC0014b extends IInterface {

    /* renamed from: android.support.a.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/b$a.class */
    public static abstract class AbstractBinderC0015a extends Binder implements AbstractC0014b {

        /* renamed from: android.support.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/a/b$a$a.class */
        public static final class C0016a implements AbstractC0014b {

            /* renamed from: a */
            public static AbstractC0014b f17a;

            /* renamed from: b */
            private IBinder f18b;

            C0016a(IBinder iBinder) {
                this.f18b = iBinder;
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final int mo45484a(AbstractC0006a abstractC0006a, String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f18b.transact(8, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45484a(abstractC0006a, str, bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final Bundle mo45482a(String str, Bundle bundle) throws RemoteException {
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
                    if (!this.f18b.transact(5, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45482a(str, bundle);
                    }
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45494a(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    if (!this.f18b.transact(2, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45494a(j);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45492a(AbstractC0006a abstractC0006a) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
                    boolean z = false;
                    if (!this.f18b.transact(3, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45492a(abstractC0006a);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45491a(AbstractC0006a abstractC0006a, int i, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
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
                    if (!this.f18b.transact(9, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45491a(abstractC0006a, i, uri, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45489a(AbstractC0006a abstractC0006a, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f18b.transact(7, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45489a(abstractC0006a, uri);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45488a(AbstractC0006a abstractC0006a, Uri uri, int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
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
                    if (!this.f18b.transact(12, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45488a(abstractC0006a, uri, i, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45487a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
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
                    if (!this.f18b.transact(11, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45487a(abstractC0006a, uri, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45486a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
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
                    if (!this.f18b.transact(4, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45486a(abstractC0006a, uri, bundle, list);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: a */
            public final boolean mo45485a(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f18b.transact(10, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45485a(abstractC0006a, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f18b;
            }

            @Override // android.support.p006a.AbstractC0014b
            /* renamed from: b */
            public final boolean mo45481b(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0006a != null ? abstractC0006a.asBinder() : null);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f18b.transact(6, obtain, obtain2, 0) && AbstractBinderC0015a.m46598a() != null) {
                        return AbstractBinderC0015a.m46598a().mo45481b(abstractC0006a, bundle);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0015a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        /* renamed from: a */
        public static AbstractC0014b m46598a() {
            return C0016a.f17a;
        }

        /* renamed from: a */
        public static AbstractC0014b m46597a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0014b)) ? new C0016a(iBinder) : (AbstractC0014b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
            Bundle bundle = null;
            Bundle bundle2 = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean a = mo45494a(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(a ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean a2 = mo45492a(AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(a2 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle3 = null;
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean a3 = mo45486a(m46601a, uri, bundle3, parcel.createTypedArrayList(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(a3 ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    String readString = parcel.readString();
                    Bundle bundle4 = null;
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle a4 = mo45482a(readString, bundle4);
                    parcel2.writeNoException();
                    if (a4 == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    a4.writeToParcel(parcel2, 1);
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a2 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Bundle bundle5 = null;
                    if (parcel.readInt() != 0) {
                        bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean b = mo45481b(m46601a2, bundle5);
                    parcel2.writeNoException();
                    parcel2.writeInt(b ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a3 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Uri uri2 = null;
                    if (parcel.readInt() != 0) {
                        uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    boolean a5 = mo45489a(m46601a3, uri2);
                    parcel2.writeNoException();
                    parcel2.writeInt(a5 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a4 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    int a6 = mo45484a(m46601a4, readString2, bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(a6);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a5 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    int readInt = parcel.readInt();
                    Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle6 = null;
                    if (parcel.readInt() != 0) {
                        bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean a7 = mo45491a(m46601a5, readInt, uri3, bundle6);
                    parcel2.writeNoException();
                    parcel2.writeInt(a7 ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a6 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Bundle bundle7 = null;
                    if (parcel.readInt() != 0) {
                        bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean a8 = mo45485a(m46601a6, bundle7);
                    parcel2.writeNoException();
                    parcel2.writeInt(a8 ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a7 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Uri uri4 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle8 = null;
                    if (parcel.readInt() != 0) {
                        bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean a9 = mo45487a(m46601a7, uri4, bundle8);
                    parcel2.writeNoException();
                    parcel2.writeInt(a9 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0006a m46601a8 = AbstractC0006a.AbstractBinderC0007a.m46601a(parcel.readStrongBinder());
                    Uri uri5 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean a10 = mo45488a(m46601a8, uri5, readInt2, bundle2);
                    parcel2.writeNoException();
                    parcel2.writeInt(a10 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: a */
    int mo45484a(AbstractC0006a abstractC0006a, String str, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    Bundle mo45482a(String str, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    boolean mo45494a(long j) throws RemoteException;

    /* renamed from: a */
    boolean mo45492a(AbstractC0006a abstractC0006a) throws RemoteException;

    /* renamed from: a */
    boolean mo45491a(AbstractC0006a abstractC0006a, int i, Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    boolean mo45489a(AbstractC0006a abstractC0006a, Uri uri) throws RemoteException;

    /* renamed from: a */
    boolean mo45488a(AbstractC0006a abstractC0006a, Uri uri, int i, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    boolean mo45487a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    boolean mo45486a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    /* renamed from: a */
    boolean mo45485a(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    boolean mo45481b(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException;
}
