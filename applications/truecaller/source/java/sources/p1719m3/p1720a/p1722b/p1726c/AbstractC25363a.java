package p1719m3.p1720a.p1722b.p1726c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p001v4.p002os.ResultReceiver;
import java.util.Objects;
/* renamed from: m3.a.b.c.a */
/* loaded from: classes-dex2jar.jar:m3/a/b/c/a.class */
public interface AbstractC25363a extends IInterface {

    /* renamed from: m3.a.b.c.a$a */
    /* loaded from: classes-dex2jar.jar:m3/a/b/c/a$a.class */
    public static abstract class AbstractBinderC25364a extends Binder implements AbstractC25363a {

        /* renamed from: a */
        public static final /* synthetic */ int f70776a = 0;

        /* renamed from: m3.a.b.c.a$a$a */
        /* loaded from: classes-dex2jar.jar:m3/a/b/c/a$a$a.class */
        public static class C25365a implements AbstractC25363a {

            /* renamed from: a */
            public IBinder f70777a;

            public C25365a(IBinder iBinder) {
                this.f70777a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f70777a;
            }
        }

        public AbstractBinderC25364a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
            parcel.enforceInterface("android.support.v4.os.IResultReceiver");
            int readInt = parcel.readInt();
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            ResultReceiver.b bVar = (ResultReceiver.b) this;
            Objects.requireNonNull(bVar.b);
            bVar.b.mo43176a(readInt, bundle);
            return true;
        }
    }
}
