package p1719m3.p1720a.p1722b.p1723a;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: m3.a.b.a.a */
/* loaded from: classes-dex2jar.jar:m3/a/b/a/a.class */
public interface AbstractC25357a extends IInterface {

    /* renamed from: m3.a.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:m3/a/b/a/a$a.class */
    public static abstract class AbstractBinderC25358a extends Binder implements AbstractC25357a {

        /* renamed from: a */
        public static final /* synthetic */ int f70773a = 0;

        /* renamed from: m3.a.b.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:m3/a/b/a/a$a$a.class */
        public static class C25359a implements AbstractC25357a {

            /* renamed from: a */
            public IBinder f70774a;

            public C25359a(IBinder iBinder) {
                this.f70774a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f70774a;
            }

            @Override // p1719m3.p1720a.p1722b.p1723a.AbstractC25357a
            /* renamed from: p0 */
            public void mo3697p0(String str, int i, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f70774a.transact(1, obtain, null, 1)) {
                        int i2 = AbstractBinderC25358a.f70773a;
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }
    }

    /* renamed from: p0 */
    void mo3697p0(String str, int i, String str2, Notification notification) throws RemoteException;
}
