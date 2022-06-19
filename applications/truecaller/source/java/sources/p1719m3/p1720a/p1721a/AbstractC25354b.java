package p1719m3.p1720a.p1721a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p1719m3.p1720a.p1721a.AbstractC25352a;
/* renamed from: m3.a.a.b */
/* loaded from: classes-dex2jar.jar:m3/a/a/b.class */
public interface AbstractC25354b extends IInterface {

    /* renamed from: m3.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:m3/a/a/b$a.class */
    public static abstract class AbstractBinderC25355a extends Binder implements AbstractC25354b {

        /* renamed from: a */
        public static final /* synthetic */ int f70771a = 0;

        /* renamed from: m3.a.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:m3/a/a/b$a$a.class */
        public static class C25356a implements AbstractC25354b {

            /* renamed from: a */
            public IBinder f70772a;

            public C25356a(IBinder iBinder) {
                this.f70772a = iBinder;
            }

            /* JADX WARN: Finally extract failed */
            @Override // p1719m3.p1720a.p1721a.AbstractC25354b
            /* renamed from: J */
            public boolean mo3700J(AbstractC25352a abstractC25352a, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder(abstractC25352a != null ? (AbstractC25352a.AbstractBinderC25353a) abstractC25352a : null);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    obtain.writeTypedList(list);
                    if (!this.f70772a.transact(4, obtain, obtain2, 0)) {
                        int i = AbstractBinderC25355a.f70771a;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
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

            /* JADX WARN: Finally extract failed */
            @Override // p1719m3.p1720a.p1721a.AbstractC25354b
            /* renamed from: Y */
            public boolean mo3699Y(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    if (!this.f70772a.transact(2, obtain, obtain2, 0)) {
                        int i = AbstractBinderC25355a.f70771a;
                    }
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
                return this.f70772a;
            }

            /* JADX WARN: Finally extract failed */
            @Override // p1719m3.p1720a.p1721a.AbstractC25354b
            /* renamed from: i0 */
            public boolean mo3698i0(AbstractC25352a abstractC25352a) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder((AbstractC25352a.AbstractBinderC25353a) abstractC25352a);
                    boolean z = false;
                    if (!this.f70772a.transact(3, obtain, obtain2, 0)) {
                        int i = AbstractBinderC25355a.f70771a;
                    }
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
    }

    /* renamed from: J */
    boolean mo3700J(AbstractC25352a abstractC25352a, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    /* renamed from: Y */
    boolean mo3699Y(long j) throws RemoteException;

    /* renamed from: i0 */
    boolean mo3698i0(AbstractC25352a abstractC25352a) throws RemoteException;
}
