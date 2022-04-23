package androidx.media2.session;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import androidx.media2.session.b;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/c.class */
public interface c extends IInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/c$a.class */
    public static abstract class a extends Binder implements c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.session.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/c$a$a.class */
        public static final class C0100a implements c {

            /* renamed from: a  reason: collision with root package name */
            public static c f4580a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f4581b;

            C0100a(IBinder iBinder) {
                this.f4581b = iBinder;
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(2, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeFloat(f);
                    if (!this.f4581b.transact(21, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, f);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.f4581b.transact(26, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, i2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (!this.f4581b.transact(3, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, i2, i3);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (!this.f4581b.transact(25, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, i2, str);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (!this.f4581b.transact(12, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, j);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(45, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, uri, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, Surface surface) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(41, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, surface);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(1, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
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
                    if (!this.f4581b.transact(13, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, parcelImpl, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (!this.f4581b.transact(23, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, str);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(36, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, str, i2, i3, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(20, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, str, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void a(b bVar, int i, List<String> list, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeStringList(list);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(22, obtain, null, 1) && a.a() != null) {
                        a.a().a(bVar, i, list, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4581b;
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(5, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.f4581b.transact(28, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, i2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (!this.f4581b.transact(4, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, i2, i3);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (!this.f4581b.transact(27, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, i2, str);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(24, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (!this.f4581b.transact(35, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, str);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(38, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, str, i2, i3, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void b(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(37, obtain, null, 1) && a.a() != null) {
                        a.a().b(bVar, i, str, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(6, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.f4581b.transact(31, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i, i2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (!this.f4581b.transact(44, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i, i2, i3);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(42, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (!this.f4581b.transact(40, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i, str);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void c(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(39, obtain, null, 1) && a.a() != null) {
                        a.a().c(bVar, i, str, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void d(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(7, obtain, null, 1) && a.a() != null) {
                        a.a().d(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void d(b bVar, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (!this.f4581b.transact(32, obtain, null, 1) && a.a() != null) {
                        a.a().d(bVar, i, i2);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void d(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(43, obtain, null, 1) && a.a() != null) {
                        a.a().d(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void e(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(8, obtain, null, 1) && a.a() != null) {
                        a.a().e(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void e(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(33, obtain, null, 1) && a.a() != null) {
                        a.a().e(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void f(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(9, obtain, null, 1) && a.a() != null) {
                        a.a().f(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void f(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f4581b.transact(34, obtain, null, 1) && a.a() != null) {
                        a.a().f(bVar, i, parcelImpl);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void g(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(10, obtain, null, 1) && a.a() != null) {
                        a.a().g(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void h(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(11, obtain, null, 1) && a.a() != null) {
                        a.a().h(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void i(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(29, obtain, null, 1) && a.a() != null) {
                        a.a().i(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.c
            public final void j(b bVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (!this.f4581b.transact(30, obtain, null, 1) && a.a() != null) {
                        a.a().j(bVar, i);
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "androidx.media2.session.IMediaSession");
        }

        public static c a() {
            return C0100a.f4580a;
        }

        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof c)) ? new C0100a(iBinder) : (c) queryLocalInterface;
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
                Surface surface = null;
                ParcelImpl parcelImpl3 = null;
                ParcelImpl parcelImpl4 = null;
                ParcelImpl parcelImpl5 = null;
                ParcelImpl parcelImpl6 = null;
                ParcelImpl parcelImpl7 = null;
                ParcelImpl parcelImpl8 = null;
                ParcelImpl parcelImpl9 = null;
                ParcelImpl parcelImpl10 = null;
                ParcelImpl parcelImpl11 = null;
                Bundle bundle = null;
                ParcelImpl parcelImpl12 = null;
                Bundle bundle2 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        b a2 = b.a.a(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            parcelImpl12 = ParcelImpl.CREATOR.createFromParcel(parcel);
                        }
                        a(a2, readInt, parcelImpl12);
                        return true;
                    case 2:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        a(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 3:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 4:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        b(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    case 5:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        b(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 6:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        c(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 7:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        d(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 8:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        e(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 9:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        f(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        g(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 11:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        h(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                        return true;
                    case 12:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readLong());
                        return true;
                    case 13:
                        parcel.enforceInterface("androidx.media2.session.IMediaSession");
                        b a3 = b.a.a(parcel.readStrongBinder());
                        int readInt2 = parcel.readInt();
                        ParcelImpl createFromParcel = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(a3, readInt2, createFromParcel, bundle);
                        return true;
                    default:
                        switch (i) {
                            case 20:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a4 = b.a.a(parcel.readStrongBinder());
                                int readInt3 = parcel.readInt();
                                String readString = parcel.readString();
                                if (parcel.readInt() != 0) {
                                    parcelImpl11 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                a(a4, readInt3, readString, parcelImpl11);
                                return true;
                            case 21:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                                return true;
                            case 22:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a5 = b.a.a(parcel.readStrongBinder());
                                int readInt4 = parcel.readInt();
                                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                                if (parcel.readInt() != 0) {
                                    parcelImpl10 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                a(a5, readInt4, createStringArrayList, parcelImpl10);
                                return true;
                            case 23:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                return true;
                            case 24:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a6 = b.a.a(parcel.readStrongBinder());
                                int readInt5 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl9 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                b(a6, readInt5, parcelImpl9);
                                return true;
                            case 25:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString());
                                return true;
                            case 26:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                a(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                                return true;
                            case 27:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString());
                                return true;
                            case 28:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                                return true;
                            case 29:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                i(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                                return true;
                            case 30:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                j(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                                return true;
                            case 31:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                c(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                                return true;
                            case 32:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                d(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                                return true;
                            case 33:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a7 = b.a.a(parcel.readStrongBinder());
                                int readInt6 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl8 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                e(a7, readInt6, parcelImpl8);
                                return true;
                            case 34:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a8 = b.a.a(parcel.readStrongBinder());
                                int readInt7 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl7 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                f(a8, readInt7, parcelImpl7);
                                return true;
                            case 35:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                return true;
                            case 36:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a9 = b.a.a(parcel.readStrongBinder());
                                int readInt8 = parcel.readInt();
                                String readString2 = parcel.readString();
                                int readInt9 = parcel.readInt();
                                int readInt10 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl6 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                a(a9, readInt8, readString2, readInt9, readInt10, parcelImpl6);
                                return true;
                            case 37:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a10 = b.a.a(parcel.readStrongBinder());
                                int readInt11 = parcel.readInt();
                                String readString3 = parcel.readString();
                                if (parcel.readInt() != 0) {
                                    parcelImpl5 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                b(a10, readInt11, readString3, parcelImpl5);
                                return true;
                            case 38:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a11 = b.a.a(parcel.readStrongBinder());
                                int readInt12 = parcel.readInt();
                                String readString4 = parcel.readString();
                                int readInt13 = parcel.readInt();
                                int readInt14 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl4 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                b(a11, readInt12, readString4, readInt13, readInt14, parcelImpl4);
                                return true;
                            case 39:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a12 = b.a.a(parcel.readStrongBinder());
                                int readInt15 = parcel.readInt();
                                String readString5 = parcel.readString();
                                if (parcel.readInt() != 0) {
                                    parcelImpl3 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                c(a12, readInt15, readString5, parcelImpl3);
                                return true;
                            case 40:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                c(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                return true;
                            case 41:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a13 = b.a.a(parcel.readStrongBinder());
                                int readInt16 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    surface = (Surface) Surface.CREATOR.createFromParcel(parcel);
                                }
                                a(a13, readInt16, surface);
                                return true;
                            case 42:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a14 = b.a.a(parcel.readStrongBinder());
                                int readInt17 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl2 = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                c(a14, readInt17, parcelImpl2);
                                return true;
                            case 43:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a15 = b.a.a(parcel.readStrongBinder());
                                int readInt18 = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    parcelImpl = ParcelImpl.CREATOR.createFromParcel(parcel);
                                }
                                d(a15, readInt18, parcelImpl);
                                return true;
                            case 44:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                c(b.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                                return true;
                            case 45:
                                parcel.enforceInterface("androidx.media2.session.IMediaSession");
                                b a16 = b.a.a(parcel.readStrongBinder());
                                int readInt19 = parcel.readInt();
                                Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                                if (parcel.readInt() != 0) {
                                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                }
                                a(a16, readInt19, uri, bundle2);
                                return true;
                            default:
                                return super.onTransact(i, parcel, parcel2, i2);
                        }
                }
            } else {
                parcel2.writeString("androidx.media2.session.IMediaSession");
                return true;
            }
        }
    }

    void a(b bVar, int i) throws RemoteException;

    void a(b bVar, int i, float f) throws RemoteException;

    void a(b bVar, int i, int i2) throws RemoteException;

    void a(b bVar, int i, int i2, int i3) throws RemoteException;

    void a(b bVar, int i, int i2, String str) throws RemoteException;

    void a(b bVar, int i, long j) throws RemoteException;

    void a(b bVar, int i, Uri uri, Bundle bundle) throws RemoteException;

    void a(b bVar, int i, Surface surface) throws RemoteException;

    void a(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void a(b bVar, int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException;

    void a(b bVar, int i, String str) throws RemoteException;

    void a(b bVar, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException;

    void a(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    void a(b bVar, int i, List<String> list, ParcelImpl parcelImpl) throws RemoteException;

    void b(b bVar, int i) throws RemoteException;

    void b(b bVar, int i, int i2) throws RemoteException;

    void b(b bVar, int i, int i2, int i3) throws RemoteException;

    void b(b bVar, int i, int i2, String str) throws RemoteException;

    void b(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void b(b bVar, int i, String str) throws RemoteException;

    void b(b bVar, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException;

    void b(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    void c(b bVar, int i) throws RemoteException;

    void c(b bVar, int i, int i2) throws RemoteException;

    void c(b bVar, int i, int i2, int i3) throws RemoteException;

    void c(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void c(b bVar, int i, String str) throws RemoteException;

    void c(b bVar, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    void d(b bVar, int i) throws RemoteException;

    void d(b bVar, int i, int i2) throws RemoteException;

    void d(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void e(b bVar, int i) throws RemoteException;

    void e(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void f(b bVar, int i) throws RemoteException;

    void f(b bVar, int i, ParcelImpl parcelImpl) throws RemoteException;

    void g(b bVar, int i) throws RemoteException;

    void h(b bVar, int i) throws RemoteException;

    void i(b bVar, int i) throws RemoteException;

    void j(b bVar, int i) throws RemoteException;
}
