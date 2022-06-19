package android.support.p001v4.p002a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: android.support.v4.a.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a.class */
public interface AbstractC0028a extends IInterface {

    /* renamed from: android.support.v4.a.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a$a.class */
    public static abstract class AbstractBinderC0029a extends Binder implements AbstractC0028a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/a/a$a$a.class */
        public static class C0030a implements AbstractC0028a {

            /* renamed from: a */
            private IBinder f60a;

            C0030a(IBinder iBinder) {
                this.f60a = iBinder;
            }

            @Override // android.support.p001v4.p002a.AbstractC0028a
            /* renamed from: a */
            public void mo22442a(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.os.IResultReceiver");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f60a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f60a;
            }
        }

        public AbstractBinderC0029a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [android.support.v4.a.a] */
        /* renamed from: a */
        public static AbstractC0028a m22445a(IBinder iBinder) {
            C0030a c0030a;
            if (iBinder == null) {
                c0030a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
                c0030a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0028a)) ? new C0030a(iBinder) : (AbstractC0028a) queryLocalInterface;
            }
            return c0030a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                    mo22442a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("android.support.v4.os.IResultReceiver");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo22442a(int i, Bundle bundle);
}
