package p000a.p001a.p002a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: a.a.a.b */
/* loaded from: classes-dex2jar.jar:a/a/a/b.class */
public interface AbstractC0003b extends IInterface {

    /* renamed from: a.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/b$a.class */
    public static abstract class AbstractBinderC0004a extends Binder implements AbstractC0003b {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a.a.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:a/a/a/b$a$a.class */
        public static class C0005a implements AbstractC0003b {

            /* renamed from: d */
            private IBinder f1d;

            C0005a(IBinder iBinder) {
                this.f1d = iBinder;
            }

            /* JADX WARN: Finally extract failed */
            @Override // p000a.p001a.p002a.AbstractC0003b
            /* renamed from: R2 */
            public boolean mo34671R2(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    this.f1d.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1d;
            }

            /* JADX WARN: Finally extract failed */
            @Override // p000a.p001a.p002a.AbstractC0003b
            /* renamed from: c4 */
            public boolean mo34669c4(AbstractC0000a abstractC0000a) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC0000a != null ? abstractC0000a.asBinder() : null);
                    boolean z = false;
                    this.f1d.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        public AbstractBinderC0004a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        /* renamed from: c0 */
        public static AbstractC0003b m35936c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0003b)) ? new C0005a(iBinder) : (AbstractC0003b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
            Bundle bundle = null;
            Bundle bundle2 = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean mo34671R2 = mo34671R2(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34671R2 ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean mo34669c4 = mo34669c4(AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34669c4 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0000a m35937c0 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                    Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle3 = null;
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean mo34668h1 = mo34668h1(m35937c0, uri, bundle3, parcel.createTypedArrayList(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34668h1 ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    String readString = parcel.readString();
                    Bundle bundle4 = null;
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    Bundle mo34667n2 = mo34667n2(readString, bundle4);
                    parcel2.writeNoException();
                    if (mo34667n2 == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    mo34667n2.writeToParcel(parcel2, 1);
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0000a m35937c02 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                    Bundle bundle5 = null;
                    if (parcel.readInt() != 0) {
                        bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean mo34672P4 = mo34672P4(m35937c02, bundle5);
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34672P4 ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0000a m35937c03 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                    Uri uri2 = null;
                    if (parcel.readInt() != 0) {
                        uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    boolean mo34665o5 = mo34665o5(m35937c03, uri2);
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34665o5 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0000a m35937c04 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    int mo34670R3 = mo34670R3(m35937c04, readString2, bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34670R3);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    AbstractC0000a m35937c05 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                    int readInt = parcel.readInt();
                    Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean mo34666o1 = mo34666o1(m35937c05, readInt, uri3, bundle2);
                    parcel2.writeNoException();
                    parcel2.writeInt(mo34666o1 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: P4 */
    boolean mo34672P4(AbstractC0000a abstractC0000a, Bundle bundle);

    /* renamed from: R2 */
    boolean mo34671R2(long j);

    /* renamed from: R3 */
    int mo34670R3(AbstractC0000a abstractC0000a, String str, Bundle bundle);

    /* renamed from: c4 */
    boolean mo34669c4(AbstractC0000a abstractC0000a);

    /* renamed from: h1 */
    boolean mo34668h1(AbstractC0000a abstractC0000a, Uri uri, Bundle bundle, List<Bundle> list);

    /* renamed from: n2 */
    Bundle mo34667n2(String str, Bundle bundle);

    /* renamed from: o1 */
    boolean mo34666o1(AbstractC0000a abstractC0000a, int i, Uri uri, Bundle bundle);

    /* renamed from: o5 */
    boolean mo34665o5(AbstractC0000a abstractC0000a, Uri uri);
}
