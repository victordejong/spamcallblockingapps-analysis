package p092e.p096e.p097a.p100f0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* renamed from: e.e.a.f0.a */
/* loaded from: classes2-dex2jar.jar:e/e/a/f0/a.class */
public interface AbstractC3040a extends IInterface {

    /* renamed from: e.e.a.f0.a$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/f0/a$a.class */
    public static abstract class AbstractBinderC3041a extends Binder implements AbstractC3040a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e.e.a.f0.a$a$a */
        /* loaded from: classes2-dex2jar.jar:e/e/a/f0/a$a$a.class */
        public static class C3042a implements AbstractC3040a {

            /* renamed from: b */
            private IBinder f12671b;

            C3042a(IBinder iBinder) {
                this.f12671b = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f12671b;
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3040a
            /* renamed from: j2 */
            public void mo309j2(MessageSnapshot messageSnapshot) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    if (messageSnapshot != null) {
                        obtain.writeInt(1);
                        messageSnapshot.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f12671b.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC3041a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
        }

        /* renamed from: h0 */
        public static AbstractC3040a m469h0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC3040a)) ? new C3042a(iBinder) : (AbstractC3040a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                mo309j2(parcel.readInt() != 0 ? MessageSnapshot.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                return true;
            }
        }
    }

    /* renamed from: j2 */
    void mo309j2(MessageSnapshot messageSnapshot);
}
