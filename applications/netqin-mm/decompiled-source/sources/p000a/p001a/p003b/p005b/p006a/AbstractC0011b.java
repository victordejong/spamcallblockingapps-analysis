package p000a.p001a.p003b.p005b.p006a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.KeyEvent;
/* renamed from: a.a.b.b.a.b */
/* loaded from: classes-dex2jar.jar:a/a/b/b/a/b.class */
public interface AbstractC0011b extends IInterface {

    /* renamed from: a.a.b.b.a.b$a */
    /* loaded from: classes-dex2jar.jar:a/a/b/b/a/b$a.class */
    public static abstract class AbstractBinderC0012a extends Binder implements AbstractC0011b {

        /* renamed from: a.a.b.b.a.b$a$a */
        /* loaded from: classes-dex2jar.jar:a/a/b/b/a/b$a$a.class */
        public static class C0013a implements AbstractC0011b {

            /* renamed from: a */
            public IBinder f1a;

            public C0013a(IBinder iBinder) {
                this.f1a = iBinder;
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0011b
            /* renamed from: a */
            public void mo39337a(AbstractC0009a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    this.f1a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0011b
            /* renamed from: a */
            public boolean mo39336a(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = true;
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f1a.transact(2, obtain, obtain2, 0);
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
            public IBinder asBinder() {
                return this.f1a;
            }
        }

        /* renamed from: a */
        public static AbstractC0011b m39338a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0011b)) ? new C0013a(iBinder) : (AbstractC0011b) queryLocalInterface;
        }
    }

    /* renamed from: a */
    void mo39337a(AbstractC0009a aVar) throws RemoteException;

    /* renamed from: a */
    boolean mo39336a(KeyEvent keyEvent) throws RemoteException;
}
