package p000a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p000a.AbstractC0000a;
/* renamed from: a.b */
/* loaded from: classes-dex2jar.jar:a/b.class */
public interface AbstractC0002b extends IInterface {

    /* renamed from: a.b$a */
    /* loaded from: classes-dex2jar.jar:a/b$a.class */
    public static abstract class AbstractBinderC0003a extends Binder implements AbstractC0002b {

        /* renamed from: a */
        public static final /* synthetic */ int f0a = 0;

        /* renamed from: a.b$a$a */
        /* loaded from: classes-dex2jar.jar:a/b$a$a.class */
        public static class C0004a implements AbstractC0002b {

            /* renamed from: a */
            public IBinder f1a;

            public C0004a(IBinder iBinder) {
                this.f1a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1a;
            }

            /* JADX WARN: Finally extract failed */
            @Override // p000a.AbstractC0002b
            /* renamed from: j */
            public boolean mo8935j(AbstractC0000a abstractC0000a) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder((AbstractC0000a.AbstractBinderC0001a) abstractC0000a);
                    boolean z = false;
                    this.f1a.transact(3, obtain, obtain2, 0);
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

            /* JADX WARN: Finally extract failed */
            @Override // p000a.AbstractC0002b
            /* renamed from: p */
            public boolean mo8934p(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    this.f1a.transact(2, obtain, obtain2, 0);
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

    /* renamed from: j */
    boolean mo8935j(AbstractC0000a abstractC0000a) throws RemoteException;

    /* renamed from: p */
    boolean mo8934p(long j) throws RemoteException;
}
