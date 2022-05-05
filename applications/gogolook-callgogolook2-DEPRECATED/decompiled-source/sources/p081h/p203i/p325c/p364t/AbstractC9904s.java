package p081h.p203i.p325c.p364t;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
/* renamed from: h.i.c.t.s */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/s.class */
public interface AbstractC9904s extends IInterface {

    /* renamed from: h.i.c.t.s$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/s$a.class */
    public static class C9905a implements AbstractC9904s {

        /* renamed from: a */
        public final IBinder f22429a;

        public C9905a(@NonNull IBinder iBinder) {
            this.f22429a = iBinder;
        }

        @Override // p081h.p203i.p325c.p364t.AbstractC9904s
        /* renamed from: a */
        public void mo13980a(@NonNull Message message) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.f22429a.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        @NonNull
        public IBinder asBinder() {
            return this.f22429a;
        }
    }

    /* renamed from: a */
    void mo13980a(@NonNull Message message) throws RemoteException;
}
