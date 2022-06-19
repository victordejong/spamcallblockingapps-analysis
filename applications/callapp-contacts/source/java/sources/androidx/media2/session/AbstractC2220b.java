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
/* renamed from: androidx.media2.session.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/b.class */
public interface AbstractC2220b extends IInterface {

    /* renamed from: androidx.media2.session.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/b$a.class */
    public static abstract class AbstractBinderC2221a extends Binder implements AbstractC2220b {

        /* renamed from: androidx.media2.session.b$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/b$a$a.class */
        public static final class C2222a implements AbstractC2220b {

            /* renamed from: a */
            public static AbstractC2220b f8806a;

            /* renamed from: b */
            private IBinder f8807b;

            C2222a(IBinder iBinder) {
                this.f8807b = iBinder;
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41029a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (this.f8807b.transact(10, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41029a(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41028a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    if (this.f8807b.transact(8, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41028a(i, i2, i3, i4, i5);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41027a(int i, long j, long j2, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeFloat(f);
                    if (this.f8807b.transact(3, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41027a(i, j, j2, f);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41026a(int i, long j, long j2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeInt(i2);
                    if (this.f8807b.transact(2, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41026a(i, j, j2, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41025a(int i, long j, long j2, long j3) throws RemoteException {
                Throwable th;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeLong(j3);
                    try {
                        if (this.f8807b.transact(11, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                            obtain.recycle();
                            return;
                        }
                        AbstractBinderC2221a.m41088a().mo41025a(i, j, j2, j3);
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

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41024a(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
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
                    if (this.f8807b.transact(5, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41024a(i, parcelImplListSlice, parcelImpl, i2, i3, i4);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41023a(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(6, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41023a(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41022a(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException {
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
                    if (this.f8807b.transact(1, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41022a(i, parcelImpl, i2, i3, i4);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41021a(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException {
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
                        if (this.f8807b.transact(4, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                            obtain.recycle();
                            return;
                        }
                        AbstractBinderC2221a.m41088a().mo41021a(i, parcelImpl, i2, j, j2, j3);
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

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41020a(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException {
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
                    if (this.f8807b.transact(16, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41020a(i, parcelImpl, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41019a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException {
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
                    if (this.f8807b.transact(21, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41019a(i, parcelImpl, parcelImpl2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41018a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException {
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
                    if (this.f8807b.transact(25, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41018a(i, parcelImpl, parcelImpl2, parcelImpl3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41017a(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(19, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41017a(i, str, i2, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41016a(int i, List<ParcelImpl> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (this.f8807b.transact(14, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41016a(i, list);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: a */
            public final void mo41015a(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException {
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
                    if (this.f8807b.transact(22, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41015a(i, list, parcelImpl, parcelImpl2, parcelImpl3, parcelImpl4);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f8807b;
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: b */
            public final void mo41012b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    if (this.f8807b.transact(13, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41012b(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: b */
            public final void mo41011b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaController");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    if (this.f8807b.transact(9, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41011b(i, i2, i3, i4, i5);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: b */
            public final void mo41010b(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(7, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41010b(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: b */
            public final void mo41009b(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(20, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41009b(i, str, i2, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: c */
            public final void mo41008c(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(12, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41008c(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: d */
            public final void mo41007d(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(15, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41007d(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: e */
            public final void mo41006e(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(17, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41006e(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: f */
            public final void mo41005f(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(18, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41005f(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: g */
            public final void mo41004g(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(23, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41004g(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2220b
            /* renamed from: h */
            public final void mo41003h(int i, ParcelImpl parcelImpl) throws RemoteException {
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
                    if (this.f8807b.transact(24, obtain, null, 1) || AbstractBinderC2221a.m41088a() == null) {
                        return;
                    }
                    AbstractBinderC2221a.m41088a().mo41003h(i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC2221a() {
            attachInterface(this, "androidx.media2.session.IMediaController");
        }

        /* renamed from: a */
        public static AbstractC2220b m41088a() {
            return C2222a.f8806a;
        }

        /* renamed from: a */
        public static AbstractC2220b m41087a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaController");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2220b)) ? new C2222a(iBinder) : (AbstractC2220b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("androidx.media2.session.IMediaController");
                return true;
            }
            ParcelImpl parcelImpl = null;
            ParcelImpl parcelImpl2 = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt = parcel.readInt();
                    ParcelImpl parcelImpl3 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl3 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41022a(readInt, parcelImpl3, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41026a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41027a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readFloat());
                    return true;
                case 4:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt2 = parcel.readInt();
                    ParcelImpl parcelImpl4 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl4 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41021a(readInt2, parcelImpl4, parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                    return true;
                case 5:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41024a(parcel.readInt(), parcel.readInt() != 0 ? ParcelImplListSlice.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt3 = parcel.readInt();
                    ParcelImpl parcelImpl5 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl5 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41023a(readInt3, parcelImpl5);
                    return true;
                case 7:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt4 = parcel.readInt();
                    ParcelImpl parcelImpl6 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl6 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41010b(readInt4, parcelImpl6);
                    return true;
                case 8:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41028a(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41011b(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41029a(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41025a(parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.readLong());
                    return true;
                case 12:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt5 = parcel.readInt();
                    ParcelImpl parcelImpl7 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl7 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41008c(readInt5, parcelImpl7);
                    return true;
                case 13:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41012b(parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41016a(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR));
                    return true;
                case 15:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt6 = parcel.readInt();
                    ParcelImpl parcelImpl8 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl8 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41007d(readInt6, parcelImpl8);
                    return true;
                case 16:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt7 = parcel.readInt();
                    ParcelImpl createFromParcel = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle = null;
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo41020a(readInt7, createFromParcel, bundle);
                    return true;
                case 17:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt8 = parcel.readInt();
                    ParcelImpl parcelImpl9 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl9 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41006e(readInt8, parcelImpl9);
                    return true;
                case 18:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt9 = parcel.readInt();
                    ParcelImpl parcelImpl10 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl10 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41005f(readInt9, parcelImpl10);
                    return true;
                case 19:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt10 = parcel.readInt();
                    String readString = parcel.readString();
                    int readInt11 = parcel.readInt();
                    ParcelImpl parcelImpl11 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl11 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41017a(readInt10, readString, readInt11, parcelImpl11);
                    return true;
                case 20:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt12 = parcel.readInt();
                    String readString2 = parcel.readString();
                    int readInt13 = parcel.readInt();
                    ParcelImpl parcelImpl12 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl12 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41009b(readInt12, readString2, readInt13, parcelImpl12);
                    return true;
                case 21:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt14 = parcel.readInt();
                    ParcelImpl createFromParcel2 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        parcelImpl = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41019a(readInt14, createFromParcel2, parcelImpl);
                    return true;
                case 22:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    mo41015a(parcel.readInt(), parcel.createTypedArrayList(ParcelImpl.CREATOR), parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 23:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt15 = parcel.readInt();
                    ParcelImpl parcelImpl13 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl13 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41004g(readInt15, parcelImpl13);
                    return true;
                case 24:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt16 = parcel.readInt();
                    ParcelImpl parcelImpl14 = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl14 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41003h(readInt16, parcelImpl14);
                    return true;
                case 25:
                    parcel.enforceInterface("androidx.media2.session.IMediaController");
                    int readInt17 = parcel.readInt();
                    ParcelImpl createFromParcel3 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                    ParcelImpl createFromParcel4 = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        parcelImpl2 = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo41018a(readInt17, createFromParcel3, createFromParcel4, parcelImpl2);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: a */
    void mo41029a(int i) throws RemoteException;

    /* renamed from: a */
    void mo41028a(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    /* renamed from: a */
    void mo41027a(int i, long j, long j2, float f) throws RemoteException;

    /* renamed from: a */
    void mo41026a(int i, long j, long j2, int i2) throws RemoteException;

    /* renamed from: a */
    void mo41025a(int i, long j, long j2, long j3) throws RemoteException;

    /* renamed from: a */
    void mo41024a(int i, ParcelImplListSlice parcelImplListSlice, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    /* renamed from: a */
    void mo41023a(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: a */
    void mo41022a(int i, ParcelImpl parcelImpl, int i2, int i3, int i4) throws RemoteException;

    /* renamed from: a */
    void mo41021a(int i, ParcelImpl parcelImpl, int i2, long j, long j2, long j3) throws RemoteException;

    /* renamed from: a */
    void mo41020a(int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo41019a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2) throws RemoteException;

    /* renamed from: a */
    void mo41018a(int i, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3) throws RemoteException;

    /* renamed from: a */
    void mo41017a(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: a */
    void mo41016a(int i, List<ParcelImpl> list) throws RemoteException;

    /* renamed from: a */
    void mo41015a(int i, List<ParcelImpl> list, ParcelImpl parcelImpl, ParcelImpl parcelImpl2, ParcelImpl parcelImpl3, ParcelImpl parcelImpl4) throws RemoteException;

    /* renamed from: b */
    void mo41012b(int i) throws RemoteException;

    /* renamed from: b */
    void mo41011b(int i, int i2, int i3, int i4, int i5) throws RemoteException;

    /* renamed from: b */
    void mo41010b(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: b */
    void mo41009b(int i, String str, int i2, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: c */
    void mo41008c(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: d */
    void mo41007d(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: e */
    void mo41006e(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: f */
    void mo41005f(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: g */
    void mo41004g(int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: h */
    void mo41003h(int i, ParcelImpl parcelImpl) throws RemoteException;
}
