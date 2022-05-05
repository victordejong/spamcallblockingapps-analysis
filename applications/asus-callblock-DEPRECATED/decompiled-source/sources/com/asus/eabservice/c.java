package com.asus.eabservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/eabservice/c.class */
public interface c extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/asus/eabservice/c$a.class */
    public static abstract class a extends Binder implements c {

        /* renamed from: com.asus.eabservice.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/asus/eabservice/c$a$a.class */
        private static final class C0083a implements c {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f2897a;

            C0083a(IBinder iBinder) {
                this.f2897a = iBinder;
            }

            @Override // com.asus.eabservice.c
            public final void a(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABServiceCallback");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f2897a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.c
            public final void a(List<UserCapInfo> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABServiceCallback");
                    obtain.writeTypedList(list);
                    this.f2897a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.c
            public final void a(Map map) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABServiceCallback");
                    obtain.writeMap(map);
                    this.f2897a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2897a;
            }

            @Override // com.asus.eabservice.c
            public final void b(List<UserCapInfo> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABServiceCallback");
                    obtain.writeTypedList(list);
                    this.f2897a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static c a(IBinder iBinder) {
            c aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.asus.eabservice.IEABServiceCallback");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new C0083a(iBinder) : (c) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z = true;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.asus.eabservice.IEABServiceCallback");
                    a(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 2:
                    parcel.enforceInterface("com.asus.eabservice.IEABServiceCallback");
                    a(parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    break;
                case 3:
                    parcel.enforceInterface("com.asus.eabservice.IEABServiceCallback");
                    a(parcel.createTypedArrayList(UserCapInfo.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 4:
                    parcel.enforceInterface("com.asus.eabservice.IEABServiceCallback");
                    b(parcel.createTypedArrayList(UserCapInfo.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 1598968902:
                    parcel2.writeString("com.asus.eabservice.IEABServiceCallback");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a(String str, int i);

    void a(List<UserCapInfo> list);

    void a(Map map);

    void b(List<UserCapInfo> list);
}
