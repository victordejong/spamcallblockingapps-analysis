package android.support.p006a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: android.support.a.a */
/* loaded from: classes-dex2jar.jar:android/support/a/a.class */
public interface AbstractC0006a extends IInterface {

    /* renamed from: android.support.a.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/a/a$a.class */
    public static abstract class AbstractBinderC0007a extends Binder implements AbstractC0006a {

        /* renamed from: android.support.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/a/a$a$a.class */
        public static final class C0008a implements AbstractC0006a {

            /* renamed from: a */
            public static AbstractC0006a f13a;

            /* renamed from: b */
            private IBinder f14b;

            C0008a(IBinder iBinder) {
                this.f14b = iBinder;
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45473a(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
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
                    if (this.f14b.transact(6, obtain, obtain2, 0) || AbstractBinderC0007a.m46602a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0007a.m46602a().mo45473a(i, uri, z, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45472a(int i, Bundle bundle) throws RemoteException {
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
                    if (this.f14b.transact(2, obtain, obtain2, 0) || AbstractBinderC0007a.m46602a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0007a.m46602a().mo45472a(i, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45471a(Bundle bundle) throws RemoteException {
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
                    if (this.f14b.transact(4, obtain, obtain2, 0) || AbstractBinderC0007a.m46602a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0007a.m46602a().mo45471a(bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: a */
            public final void mo45470a(String str, Bundle bundle) throws RemoteException {
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
                    if (this.f14b.transact(3, obtain, obtain2, 0) || AbstractBinderC0007a.m46602a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0007a.m46602a().mo45470a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f14b;
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: b */
            public final void mo45469b(String str, Bundle bundle) throws RemoteException {
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
                    if (this.f14b.transact(5, obtain, obtain2, 0) || AbstractBinderC0007a.m46602a() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0007a.m46602a().mo45469b(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p006a.AbstractC0006a
            /* renamed from: c */
            public final Bundle mo45468c(String str, Bundle bundle) throws RemoteException {
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
                    if (!this.f14b.transact(7, obtain, obtain2, 0) && AbstractBinderC0007a.m46602a() != null) {
                        return AbstractBinderC0007a.m46602a().mo45468c(str, bundle);
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
        }

        public AbstractBinderC0007a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }

        /* renamed from: a */
        public static AbstractC0006a m46602a() {
            return C0008a.f13a;
        }

        /* renamed from: a */
        public static AbstractC0006a m46601a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0006a)) ? new C0008a(iBinder) : (AbstractC0006a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            }
            boolean z = false;
            Bundle bundle = null;
            Bundle bundle2 = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    int readInt = parcel.readInt();
                    Bundle bundle3 = null;
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo45472a(readInt, bundle3);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    String readString = parcel.readString();
                    Bundle bundle4 = null;
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo45470a(readString, bundle4);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    Bundle bundle5 = null;
                    if (parcel.readInt() != 0) {
                        bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo45471a(bundle5);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    String readString2 = parcel.readString();
                    Bundle bundle6 = null;
                    if (parcel.readInt() != 0) {
                        bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo45469b(readString2, bundle6);
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
                    mo45473a(readInt2, uri, z, bundle);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                    String readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle c = mo45468c(readString3, bundle2);
                    parcel2.writeNoException();
                    if (c == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    c.writeToParcel(parcel2, 1);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: a */
    void mo45473a(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo45472a(int i, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo45471a(Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo45470a(String str, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    void mo45469b(String str, Bundle bundle) throws RemoteException;

    /* renamed from: c */
    Bundle mo45468c(String str, Bundle bundle) throws RemoteException;
}
