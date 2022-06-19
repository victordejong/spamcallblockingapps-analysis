package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: androidx.room.c */
/* loaded from: classes-dex2jar.jar:androidx/room/c.class */
public interface AbstractC1023c extends IInterface {

    /* renamed from: androidx.room.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/c$a.class */
    public static abstract class AbstractBinderC1024a extends Binder implements AbstractC1023c {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.room.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/room/c$a$a.class */
        public static class C1025a implements AbstractC1023c {

            /* renamed from: a */
            private IBinder f3482a;

            C1025a(IBinder iBinder) {
                this.f3482a = iBinder;
            }

            @Override // androidx.room.AbstractC1023c
            /* renamed from: a */
            public void mo18307a(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.f3482a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3482a;
            }
        }

        public AbstractBinderC1024a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [androidx.room.c] */
        /* renamed from: a */
        public static AbstractC1023c m18332a(IBinder iBinder) {
            C1025a c1025a;
            if (iBinder == null) {
                c1025a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                c1025a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1023c)) ? new C1025a(iBinder) : (AbstractC1023c) queryLocalInterface;
            }
            return c1025a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = true;
            switch (i) {
                case 1:
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                    mo18307a(parcel.createStringArray());
                    break;
                case 1598968902:
                    parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo18307a(String[] strArr);
}
