package p065f.p066a.p067a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p065f.p066a.p067a.AbstractC4232a;
/* renamed from: f.a.a.b */
/* loaded from: classes-dex2jar.jar:f/a/a/b.class */
public interface AbstractC4235b extends IInterface {

    /* renamed from: f.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:f/a/a/b$a.class */
    public static abstract class AbstractBinderC4236a extends Binder implements AbstractC4235b {
        public static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsService";
        public static final int TRANSACTION_extraCommand = 5;
        public static final int TRANSACTION_mayLaunchUrl = 4;
        public static final int TRANSACTION_newSession = 3;
        public static final int TRANSACTION_postMessage = 8;
        public static final int TRANSACTION_requestPostMessageChannel = 7;
        public static final int TRANSACTION_updateVisuals = 6;
        public static final int TRANSACTION_validateRelationship = 9;
        public static final int TRANSACTION_warmup = 2;

        /* renamed from: f.a.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:f/a/a/b$a$a.class */
        public static class C4237a implements AbstractC4235b {

            /* renamed from: a */
            public IBinder f10285a;

            public C4237a(IBinder iBinder) {
                this.f10285a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f10285a;
            }

            @Override // p065f.p066a.p067a.AbstractC4235b
            public Bundle extraCommand(String str, Bundle bundle) throws RemoteException {
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
                    this.f10285a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean mayLaunchUrl(AbstractC4232a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
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
                    this.f10285a.transact(4, obtain, obtain2, 0);
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

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean newSession(AbstractC4232a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    boolean z = false;
                    this.f10285a.transact(3, obtain, obtain2, 0);
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

            @Override // p065f.p066a.p067a.AbstractC4235b
            public int postMessage(AbstractC4232a aVar, String str, Bundle bundle) throws RemoteException {
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
                    this.f10285a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean requestPostMessageChannel(AbstractC4232a aVar, Uri uri) throws RemoteException {
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
                    this.f10285a.transact(7, obtain, obtain2, 0);
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

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean updateVisuals(AbstractC4232a aVar, Bundle bundle) throws RemoteException {
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
                    this.f10285a.transact(6, obtain, obtain2, 0);
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

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean validateRelationship(AbstractC4232a aVar, int i, Uri uri, Bundle bundle) throws RemoteException {
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
                    this.f10285a.transact(9, obtain, obtain2, 0);
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

            @Override // p065f.p066a.p067a.AbstractC4235b
            public boolean warmup(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    this.f10285a.transact(2, obtain, obtain2, 0);
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
        }

        public AbstractBinderC4236a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        public static AbstractC4235b asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC4235b)) ? new C4237a(iBinder) : (AbstractC4235b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                Bundle bundle = null;
                Uri uri = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean warmup = warmup(parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(warmup ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean newSession = newSession(AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(newSession ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC4232a asInterface = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                        Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean mayLaunchUrl = mayLaunchUrl(asInterface, uri2, bundle4, parcel.createTypedArrayList(Bundle.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeInt(mayLaunchUrl ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle extraCommand = extraCommand(readString, bundle3);
                        parcel2.writeNoException();
                        if (extraCommand != null) {
                            parcel2.writeInt(1);
                            extraCommand.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC4232a asInterface2 = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean updateVisuals = updateVisuals(asInterface2, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(updateVisuals ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC4232a asInterface3 = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean requestPostMessageChannel = requestPostMessageChannel(asInterface3, uri);
                        parcel2.writeNoException();
                        parcel2.writeInt(requestPostMessageChannel ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC4232a asInterface4 = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int postMessage = postMessage(asInterface4, readString2, bundle);
                        parcel2.writeNoException();
                        parcel2.writeInt(postMessage);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        AbstractC4232a asInterface5 = AbstractC4232a.AbstractBinderC4233a.asInterface(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean validateRelationship = validateRelationship(asInterface5, readInt, uri3, bundle5);
                        parcel2.writeNoException();
                        parcel2.writeInt(validateRelationship ? 1 : 0);
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

    Bundle extraCommand(String str, Bundle bundle) throws RemoteException;

    boolean mayLaunchUrl(AbstractC4232a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    boolean newSession(AbstractC4232a aVar) throws RemoteException;

    int postMessage(AbstractC4232a aVar, String str, Bundle bundle) throws RemoteException;

    boolean requestPostMessageChannel(AbstractC4232a aVar, Uri uri) throws RemoteException;

    boolean updateVisuals(AbstractC4232a aVar, Bundle bundle) throws RemoteException;

    boolean validateRelationship(AbstractC4232a aVar, int i, Uri uri, Bundle bundle) throws RemoteException;

    boolean warmup(long j) throws RemoteException;
}
