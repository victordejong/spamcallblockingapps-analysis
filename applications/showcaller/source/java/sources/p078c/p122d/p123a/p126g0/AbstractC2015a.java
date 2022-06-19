package p078c.p122d.p123a.p126g0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* renamed from: c.d.a.g0.a */
/* loaded from: classes2-dex2jar.jar:c/d/a/g0/a.class */
public interface AbstractC2015a extends IInterface {

    /* renamed from: c.d.a.g0.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/g0/a$a.class */
    public static abstract class AbstractBinderC2016a extends Binder implements AbstractC2015a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c.d.a.g0.a$a$a */
        /* loaded from: classes2-dex2jar.jar:c/d/a/g0/a$a$a.class */
        public static class C2017a implements AbstractC2015a {

            /* renamed from: d */
            private IBinder f7139d;

            C2017a(IBinder iBinder) {
                this.f7139d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7139d;
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2015a
            /* renamed from: g4 */
            public void mo28164g4(MessageSnapshot messageSnapshot) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    if (messageSnapshot != null) {
                        obtain.writeInt(1);
                        messageSnapshot.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f7139d.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC2016a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
        }

        /* renamed from: c0 */
        public static AbstractC2015a m28290c0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2015a)) ? new C2017a(iBinder) : (AbstractC2015a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                mo28164g4(parcel.readInt() != 0 ? MessageSnapshot.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                return true;
            }
        }
    }

    /* renamed from: g4 */
    void mo28164g4(MessageSnapshot messageSnapshot);
}
