package p012b.p076s.p116d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: b.s.d.c */
/* loaded from: classes-dex2jar.jar:b/s/d/c.class */
public interface AbstractC1783c extends IInterface {

    /* renamed from: b.s.d.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/d/c$a.class */
    public static abstract class AbstractBinderC1784a extends Binder implements AbstractC1783c {

        /* renamed from: b.s.d.c$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/d/c$a$a.class */
        public static class C1785a implements AbstractC1783c {

            /* renamed from: a */
            public IBinder f7211a;

            public C1785a(IBinder iBinder) {
                this.f7211a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7211a;
            }

            @Override // p012b.p076s.p116d.AbstractC1783c
            /* renamed from: e */
            public void mo32097e(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    this.f7211a.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* renamed from: a */
        public static AbstractC1783c m32098a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaController");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1783c)) ? new C1785a(iBinder) : (AbstractC1783c) queryLocalInterface;
        }
    }

    /* renamed from: e */
    void mo32097e(int i) throws RemoteException;
}
