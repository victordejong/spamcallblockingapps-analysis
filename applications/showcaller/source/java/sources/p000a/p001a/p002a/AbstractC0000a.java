package p000a.p001a.p002a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a.a.a.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a.class */
public interface AbstractC0000a extends IInterface {

    /* renamed from: a.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a$a.class */
    public static abstract class AbstractBinderC0001a extends Binder implements AbstractC0000a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a.a.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:a/a/a/a$a$a.class */
        public static class C0002a implements AbstractC0000a {

            /* renamed from: d */
            private IBinder f0d;

            C0002a(IBinder iBinder) {
                this.f0d = iBinder;
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: L5 */
            public void mo34659L5(String str, Bundle bundle) {
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
                    this.f0d.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: V5 */
            public void mo34658V5(Bundle bundle) {
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
                    this.f0d.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: X4 */
            public void mo34657X4(int i, Bundle bundle) {
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
                    this.f0d.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f0d;
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: f6 */
            public void mo34656f6(int i, Uri uri, boolean z, Bundle bundle) {
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
                    this.f0d.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.p001a.p002a.AbstractC0000a
            /* renamed from: o4 */
            public void mo34655o4(String str, Bundle bundle) {
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
                    this.f0d.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0001a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsCallback");
        }

        /* renamed from: c0 */
        public static AbstractC0000a m35937c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0000a)) ? new C0002a(iBinder) : (AbstractC0000a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            Bundle bundle2 = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt = parcel.readInt();
                Bundle bundle3 = null;
                if (parcel.readInt() != 0) {
                    bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34657X4(readInt, bundle3);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString = parcel.readString();
                Bundle bundle4 = null;
                if (parcel.readInt() != 0) {
                    bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34655o4(readString, bundle4);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                Bundle bundle5 = null;
                if (parcel.readInt() != 0) {
                    bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34658V5(bundle5);
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34659L5(readString2, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i != 6) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.customtabs.ICustomTabsCallback");
                return true;
            } else {
                parcel.enforceInterface("android.support.customtabs.ICustomTabsCallback");
                int readInt2 = parcel.readInt();
                Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                boolean z = parcel.readInt() != 0;
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34656f6(readInt2, uri, z, bundle2);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    /* renamed from: L5 */
    void mo34659L5(String str, Bundle bundle);

    /* renamed from: V5 */
    void mo34658V5(Bundle bundle);

    /* renamed from: X4 */
    void mo34657X4(int i, Bundle bundle);

    /* renamed from: f6 */
    void mo34656f6(int i, Uri uri, boolean z, Bundle bundle);

    /* renamed from: o4 */
    void mo34655o4(String str, Bundle bundle);
}
