package androidx.media2.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media2.common.ParcelImplListSlice;
import androidx.versionedparcelable.ParcelImpl;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/b.class */
public interface b extends IInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/b$a.class */
    public static abstract class a extends Binder implements b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.session.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/b$a$a.class */
        public static final class C0099a implements b {

            /* renamed from: a  reason: collision with root package name */
            public static b f4578a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f4579b;

            C0099a(IBinder iBinder) {
                this.f4579b = iBinder;
            }

            @Override // androidx.media2.session.b
            public final void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (!this.f4579b.transact(10, obtain, null, 1) && a.a() != null) {
                        a.a().a(i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    if (!this.f4579b.transact(8, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, i2, i3, i4, i5);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, long j, long j2, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeFloat(f);
                    if (!this.f4579b.transact(3, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, j, j2, f);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, long j, long j2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeInt(i2);
                    if (!this.f4579b.transact(2, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, j, j2, i2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, long j, long j2, long j3) throws RemoteException {
                Throwable th;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeLong(j3);
                    try {
                        if (this.f4579b.transact(11, obtain, null, 1) || a.a() == null) {
                            obtain.recycle();
                            return;
                        }
                        a.a().a(i, j, j2, j3);
                        obtain.recycle();
                    } catch (Throwable th2) {
                        th = th2;
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImplListSlice != null) {
                        obtain.writeInt(1);
                        parcelImplListSlice.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (!this.f4579b.transact(5, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImplListSlice, parcelImpl, i2, i3, i4);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(6, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (!this.f4579b.transact(1, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImpl, i2, i3, i4);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException {
                Throwable th;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeLong(j3);
                    try {
                        if (this.f4579b.transact(4, obtain, null, 1) || a.a() == null) {
                            obtain.recycle();
                            return;
                        }
                        a.a().a(i, parcelImpl, i2, j, j2, j3);
                        obtain.recycle();
                    } catch (Throwable th2) {
                        th = th2;
                        obtain.recycle();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(16, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImpl, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(21, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImpl, parcelImpl2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl3 != null) {
                        obtain.writeInt(1);
                        parcelImpl3.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(25, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, parcelImpl, parcelImpl2, parcelImpl3);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(19, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, str, i2, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, List<ParcelImpl> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (!this.f4579b.transact(14, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, list);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void a(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl2 != null) {
                        obtain.writeInt(1);
                        parcelImpl2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl3 != null) {
                        obtain.writeInt(1);
                        parcelImpl3.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (parcelImpl4 != null) {
                        obtain.writeInt(1);
                        parcelImpl4.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(22, obtain, null, 1) && a.a() != null) {
                        a.a().a(i, list, parcelImpl, parcelImpl2, parcelImpl3, parcelImpl4);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4579b;
            }

            @Override // androidx.media2.session.b
            public final void b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (!this.f4579b.transact(13, obtain, null, 1) && a.a() != null) {
                        a.a().b(i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    if (!this.f4579b.transact(9, obtain, null, 1) && a.a() != null) {
                        a.a().b(i, i2, i3, i4, i5);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void b(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(7, obtain, null, 1) && a.a() != null) {
                        a.a().b(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void b(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(20, obtain, null, 1) && a.a() != null) {
                        a.a().b(i, str, i2, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void c(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(12, obtain, null, 1) && a.a() != null) {
                        a.a().c(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void d(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(15, obtain, null, 1) && a.a() != null) {
                        a.a().d(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void e(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(17, obtain, null, 1) && a.a() != null) {
                        a.a().e(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void f(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(18, obtain, null, 1) && a.a() != null) {
                        a.a().f(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void g(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(23, obtain, null, 1) && a.a() != null) {
                        a.a().g(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.b
            public final void h(int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4579b.transact(24, obtain, null, 1) && a.a() != null) {
                        a.a().h(i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "androidx.media2.session.IMediaController");
        }

        public static b a() {
            return C0099a.f4578a;
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaController");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0099a(iBinder) : (b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                ParcelImpl parcelImpl = null;
                ParcelImpl parcelImpl2 = null;
                ParcelImpl parcelImpl3 = null;
                ParcelImpl parcelImpl4 = null;
                ParcelImpl parcelImpl5 = null;
                ParcelImpl parcelImpl6 = null;
                ParcelImpl parcelImpl7 = null;
                Bundle bundle = null;
                ParcelImpl parcelImpl8 = null;
                ParcelImpl parcelImpl9 = null;
                ParcelImpl parcelImpl10 = null;
                ParcelImpl parcelImpl11 = null;
                ParcelImpl parcelImpl12 = null;
                ParcelImpl parcelImpl13 = null;
                ParcelImpl parcelImpl14 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl13 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt, parcelImpl13, parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 2:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readInt());
                        return true;
                    case 3:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readFloat());
                        return true;
                    case 4:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl12 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt2, parcelImpl12, parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                        return true;
                    case 5:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.readInt() != 0 ? ParcelImplListSlice.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 6:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt3 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl11 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt3, parcelImpl11);
                        return true;
                    case 7:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt4 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl10 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        b(readInt4, parcelImpl10);
                        return true;
                    case 8:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 9:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        b(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt());
                        return true;
                    case 11:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                        return true;
                    case 12:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt5 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl9 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        c(readInt5, parcelImpl9);
                        return true;
                    case 13:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        b(parcel.readInt());
                        return true;
                    case 14:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR));
                        return true;
                    case 15:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt6 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl8 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        d(readInt6, parcelImpl8);
                        return true;
                    case 16:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt7 = parcel.readInt();
                        ParcelImpl createFromParcel = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt7, createFromParcel, bundle);
                        return true;
                    case 17:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt8 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl7 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        e(readInt8, parcelImpl7);
                        return true;
                    case 18:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt9 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl6 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        f(readInt9, parcelImpl6);
                        return true;
                    case 19:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt10 = parcel.readInt();
                        String readString = parcel.readString();
                        int readInt11 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl5 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt10, readString, readInt11, parcelImpl5);
                        return true;
                    case 20:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt12 = parcel.readInt();
                        String readString2 = parcel.readString();
                        int readInt13 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl4 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        b(readInt12, readString2, readInt13, parcelImpl4);
                        return true;
                    case 21:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt14 = parcel.readInt();
                        ParcelImpl createFromParcel2 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            parcelImpl3 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt14, createFromParcel2, parcelImpl3);
                        return true;
                    case 22:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        a(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 23:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt15 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl2 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        g(readInt15, parcelImpl2);
                        return true;
                    case 24:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt16 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        h(readInt16, parcelImpl);
                        return true;
                    case 25:
                        parcel.enforceInterface("androidx.media2.session.IMediaController");
                        int readInt17 = parcel.readInt();
                        ParcelImpl createFromParcel3 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        ParcelImpl createFromParcel4 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            parcelImpl14 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(readInt17, createFromParcel3, createFromParcel4, parcelImpl14);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("androidx.media2.session.IMediaController");
                return true;
            }
        }
    }

    void a(int i) throws RemoteException;

    void a(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    void a(int i, long j, long j2, float f) throws RemoteException;

    void a(int i, long j, long j2, int i2) throws RemoteException;

    void a(int i, long j, long j2, long j3) throws RemoteException;

    void a(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException;

    void a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException;

    void a(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    void a(int i, List<ParcelImpl> list) throws RemoteException;

    void a(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException;

    void b(int i) throws RemoteException;

    void b(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    void b(int i, ParcelImpl parcelImpl) throws RemoteException;

    void b(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    void c(int i, ParcelImpl parcelImpl) throws RemoteException;

    void d(int i, ParcelImpl parcelImpl) throws RemoteException;

    void e(int i, ParcelImpl parcelImpl) throws RemoteException;

    void f(int i, ParcelImpl parcelImpl) throws RemoteException;

    void g(int i, ParcelImpl parcelImpl) throws RemoteException;

    void h(int i, ParcelImpl parcelImpl) throws RemoteException;
}
