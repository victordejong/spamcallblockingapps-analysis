package p065f.p066a.p067a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: f.a.a.a */
/* loaded from: classes-dex2jar.jar:f/a/a/a.class */
public interface AbstractC4232a extends IInterface {

    /* renamed from: f.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:f/a/a/a$a.class */
    public static abstract class AbstractBinderC4233a extends Binder implements AbstractC4232a {
        public static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsCallback";
        public static final int TRANSACTION_extraCallback = 3;
        public static final int TRANSACTION_onMessageChannelReady = 4;
        public static final int TRANSACTION_onNavigationEvent = 2;
        public static final int TRANSACTION_onPostMessage = 5;
        public static final int TRANSACTION_onRelationshipValidationResult = 6;

        /* renamed from: f.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:f/a/a/a$a$a.class */
        public static class C4234a implements AbstractC4232a {

            /* renamed from: a */
            public IBinder f10284a;

            public C4234a(IBinder iBinder) {
                this.f10284a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10284a;
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void extraCallback(String str, Bundle bundle) throws RemoteException {
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
                    this.f10284a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onMessageChannelReady(Bundle bundle) throws RemoteException {
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
                    this.f10284a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onNavigationEvent(int i, Bundle bundle) throws RemoteException {
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
                    this.f10284a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onPostMessage(String str, Bundle bundle) throws RemoteException {
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
                    this.f10284a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4232a
            public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
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
                    this.f10284a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC4233a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }

        public static AbstractC4232a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC4232a)) ? new C4234a(iBinder) : (AbstractC4232a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            Bundle bundle2 = null;
            Bundle bundle3 = null;
            Bundle bundle4 = null;
            Bundle bundle5 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt = parcel.readInt();
                if (parcel.readInt() != 0) {
                    bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onNavigationEvent(readInt, bundle4);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                extraCallback(readString, bundle3);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onMessageChannelReady(bundle2);
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onPostMessage(readString2, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 6) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt2 = parcel.readInt();
                Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                boolean z = parcel.readInt() != 0;
                if (parcel.readInt() != 0) {
                    bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                onRelationshipValidationResult(readInt2, uri, z, bundle5);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            }
        }
    }

    void extraCallback(String str, Bundle bundle) throws RemoteException;

    void onMessageChannelReady(Bundle bundle) throws RemoteException;

    void onNavigationEvent(int i, Bundle bundle) throws RemoteException;

    void onPostMessage(String str, Bundle bundle) throws RemoteException;

    void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException;
}
