package com.asus.eabservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.eabservice.c;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/eabservice/b.class */
public interface b extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/asus/eabservice/b$a.class */
    public static abstract class a extends Binder implements b {

        /* renamed from: com.asus.eabservice.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/asus/eabservice/b$a$a.class */
        private static final class C0082a implements b {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f2896a;

            C0082a(IBinder iBinder) {
                this.f2896a = iBinder;
            }

            @Override // com.asus.eabservice.b
            public final void a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    this.f2896a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final void a(c cVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f2896a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final void a(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    obtain.writeStringList(list);
                    this.f2896a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final void a(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.f2896a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2896a;
            }

            @Override // com.asus.eabservice.b
            public final int b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    this.f2896a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final List<UserCapInfo> b(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    obtain.writeStringList(list);
                    this.f2896a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(UserCapInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final void b(c cVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    obtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    this.f2896a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final int c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    this.f2896a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final Map c(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    obtain.writeStringList(list);
                    this.f2896a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final List<UserCapInfo> d() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    this.f2896a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(UserCapInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.eabservice.b
            public final boolean e() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.eabservice.IEABService");
                    this.f2896a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static b a(IBinder iBinder) {
            b aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.asus.eabservice.IEABService");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0082a(iBinder) : (b) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            int i3 = 0;
            boolean z2 = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    a();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    int b2 = b();
                    parcel2.writeNoException();
                    parcel2.writeInt(b2);
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    a(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 4:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    List<UserCapInfo> b3 = b(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(b3);
                    z = true;
                    break;
                case 5:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    Map c = c(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeMap(c);
                    z = true;
                    break;
                case 6:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    int c2 = c();
                    parcel2.writeNoException();
                    parcel2.writeInt(c2);
                    z = true;
                    break;
                case 7:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    List<UserCapInfo> d = d();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(d);
                    z = true;
                    break;
                case 8:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    a(z2);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 9:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    boolean e = e();
                    parcel2.writeNoException();
                    if (e) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    z = true;
                    break;
                case 10:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    a(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 11:
                    parcel.enforceInterface("com.asus.eabservice.IEABService");
                    b(c.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.asus.eabservice.IEABService");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a();

    void a(c cVar);

    void a(List<String> list);

    void a(boolean z);

    int b();

    List<UserCapInfo> b(List<String> list);

    void b(c cVar);

    int c();

    Map c(List<String> list);

    List<UserCapInfo> d();

    boolean e();
}
