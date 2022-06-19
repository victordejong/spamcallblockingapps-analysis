package androidx.media2.session;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import androidx.media2.session.AbstractC2220b;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media2.session.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/c.class */
public interface AbstractC2223c extends IInterface {

    /* renamed from: androidx.media2.session.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/c$a.class */
    public static abstract class AbstractBinderC2224a extends Binder implements AbstractC2223c {

        /* renamed from: androidx.media2.session.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/c$a$a.class */
        public static final class C2225a implements AbstractC2223c {

            /* renamed from: a */
            public static AbstractC2223c f8808a;

            /* renamed from: b */
            private IBinder f8809b;

            C2225a(IBinder iBinder) {
                this.f8809b = iBinder;
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40876a(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(2, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40876a(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40875a(AbstractC2220b abstractC2220b, int i, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeFloat(f);
                    if (this.f8809b.transact(21, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40875a(abstractC2220b, i, f);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40874a(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f8809b.transact(26, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40874a(abstractC2220b, i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40873a(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (this.f8809b.transact(3, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40873a(abstractC2220b, i, i2, i3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40870a(AbstractC2220b abstractC2220b, int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f8809b.transact(25, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40870a(abstractC2220b, i, i2, str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40869a(AbstractC2220b abstractC2220b, int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f8809b.transact(12, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40869a(abstractC2220b, i, j);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40868a(AbstractC2220b abstractC2220b, int i, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
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
                    if (this.f8809b.transact(45, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40868a(abstractC2220b, i, uri, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40867a(AbstractC2220b abstractC2220b, int i, Surface surface) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(41, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40867a(abstractC2220b, i, surface);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40865a(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(1, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40865a(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40864a(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
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
                    if (this.f8809b.transact(13, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40864a(abstractC2220b, i, parcelImpl, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40863a(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (this.f8809b.transact(23, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40863a(abstractC2220b, i, str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40862a(AbstractC2220b abstractC2220b, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
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
                    if (this.f8809b.transact(36, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40862a(abstractC2220b, i, str, i2, i3, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40861a(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(20, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40861a(abstractC2220b, i, str, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: a */
            public final void mo40860a(AbstractC2220b abstractC2220b, int i, List<String> list, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeStringList(list);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(22, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40860a(abstractC2220b, i, list, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f8809b;
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40856b(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(5, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40856b(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40855b(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f8809b.transact(28, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40855b(abstractC2220b, i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40854b(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (this.f8809b.transact(4, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40854b(abstractC2220b, i, i2, i3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40853b(AbstractC2220b abstractC2220b, int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f8809b.transact(27, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40853b(abstractC2220b, i, i2, str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40852b(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(24, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40852b(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40851b(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (this.f8809b.transact(35, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40851b(abstractC2220b, i, str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40850b(AbstractC2220b abstractC2220b, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
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
                    if (this.f8809b.transact(38, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40850b(abstractC2220b, i, str, i2, i3, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: b */
            public final void mo40849b(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(37, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40849b(abstractC2220b, i, str, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40848c(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(6, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40848c(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40847c(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f8809b.transact(31, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40847c(abstractC2220b, i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40846c(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (this.f8809b.transact(44, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40846c(abstractC2220b, i, i2, i3);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40845c(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(42, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40845c(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40844c(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (this.f8809b.transact(40, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40844c(abstractC2220b, i, str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: c */
            public final void mo40843c(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(39, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40843c(abstractC2220b, i, str, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: d */
            public final void mo40842d(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(7, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40842d(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: d */
            public final void mo40841d(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f8809b.transact(32, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40841d(abstractC2220b, i, i2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: d */
            public final void mo40840d(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(43, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40840d(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: e */
            public final void mo40839e(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(8, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40839e(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: e */
            public final void mo40838e(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(33, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40838e(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: f */
            public final void mo40837f(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(9, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40837f(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: f */
            public final void mo40836f(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (parcelImpl != null) {
                        obtain.writeInt(1);
                        parcelImpl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f8809b.transact(34, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40836f(abstractC2220b, i, parcelImpl);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: g */
            public final void mo40835g(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(10, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40835g(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: h */
            public final void mo40834h(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(11, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40834h(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: i */
            public final void mo40833i(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(29, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40833i(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.media2.session.AbstractC2223c
            /* renamed from: j */
            public final void mo40832j(AbstractC2220b abstractC2220b, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.media2.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC2220b != null ? abstractC2220b.asBinder() : null);
                    obtain.writeInt(i);
                    if (this.f8809b.transact(30, obtain, null, 1) || AbstractBinderC2224a.m41086a() == null) {
                        return;
                    }
                    AbstractBinderC2224a.m41086a().mo40832j(abstractC2220b, i);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC2224a() {
            attachInterface(this, "androidx.media2.session.IMediaSession");
        }

        /* renamed from: a */
        public static AbstractC2223c m41086a() {
            return C2225a.f8808a;
        }

        /* renamed from: a */
        public static AbstractC2223c m41085a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.media2.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2223c)) ? new C2225a(iBinder) : (AbstractC2223c) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("androidx.media2.session.IMediaSession");
                return true;
            }
            Bundle bundle = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    AbstractC2220b m41087a = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                    int readInt = parcel.readInt();
                    ParcelImpl parcelImpl = null;
                    if (parcel.readInt() != 0) {
                        parcelImpl = ParcelImpl.CREATOR.createFromParcel(parcel);
                    }
                    mo40865a(m41087a, readInt, parcelImpl);
                    return true;
                case 2:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40876a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40873a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40854b(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40856b(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40848c(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40842d(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40839e(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40837f(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40835g(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40834h(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    mo40869a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readLong());
                    return true;
                case 13:
                    parcel.enforceInterface("androidx.media2.session.IMediaSession");
                    AbstractC2220b m41087a2 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                    int readInt2 = parcel.readInt();
                    ParcelImpl createFromParcel = parcel.readInt() != 0 ? ParcelImpl.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle2 = null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo40864a(m41087a2, readInt2, createFromParcel, bundle2);
                    return true;
                default:
                    switch (i) {
                        case 20:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a3 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt3 = parcel.readInt();
                            String readString = parcel.readString();
                            ParcelImpl parcelImpl2 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl2 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40861a(m41087a3, readInt3, readString, parcelImpl2);
                            return true;
                        case 21:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40875a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                            return true;
                        case 22:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a4 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt4 = parcel.readInt();
                            ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                            ParcelImpl parcelImpl3 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl3 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40860a(m41087a4, readInt4, createStringArrayList, parcelImpl3);
                            return true;
                        case 23:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40863a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                            return true;
                        case 24:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a5 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt5 = parcel.readInt();
                            ParcelImpl parcelImpl4 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl4 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40852b(m41087a5, readInt5, parcelImpl4);
                            return true;
                        case 25:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40870a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString());
                            return true;
                        case 26:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40874a(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                            return true;
                        case 27:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40853b(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readString());
                            return true;
                        case 28:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40855b(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                            return true;
                        case 29:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40833i(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                            return true;
                        case 30:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40832j(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt());
                            return true;
                        case 31:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40847c(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                            return true;
                        case 32:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40841d(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                            return true;
                        case 33:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a6 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt6 = parcel.readInt();
                            ParcelImpl parcelImpl5 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl5 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40838e(m41087a6, readInt6, parcelImpl5);
                            return true;
                        case 34:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a7 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt7 = parcel.readInt();
                            ParcelImpl parcelImpl6 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl6 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40836f(m41087a7, readInt7, parcelImpl6);
                            return true;
                        case 35:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40851b(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                            return true;
                        case 36:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a8 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt8 = parcel.readInt();
                            String readString2 = parcel.readString();
                            int readInt9 = parcel.readInt();
                            int readInt10 = parcel.readInt();
                            ParcelImpl parcelImpl7 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl7 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40862a(m41087a8, readInt8, readString2, readInt9, readInt10, parcelImpl7);
                            return true;
                        case 37:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a9 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt11 = parcel.readInt();
                            String readString3 = parcel.readString();
                            ParcelImpl parcelImpl8 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl8 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40849b(m41087a9, readInt11, readString3, parcelImpl8);
                            return true;
                        case 38:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a10 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt12 = parcel.readInt();
                            String readString4 = parcel.readString();
                            int readInt13 = parcel.readInt();
                            int readInt14 = parcel.readInt();
                            ParcelImpl parcelImpl9 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl9 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40850b(m41087a10, readInt12, readString4, readInt13, readInt14, parcelImpl9);
                            return true;
                        case 39:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a11 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt15 = parcel.readInt();
                            String readString5 = parcel.readString();
                            ParcelImpl parcelImpl10 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl10 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40843c(m41087a11, readInt15, readString5, parcelImpl10);
                            return true;
                        case 40:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40844c(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                            return true;
                        case 41:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a12 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt16 = parcel.readInt();
                            Surface surface = null;
                            if (parcel.readInt() != 0) {
                                surface = (Surface) Surface.CREATOR.createFromParcel(parcel);
                            }
                            mo40867a(m41087a12, readInt16, surface);
                            return true;
                        case 42:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a13 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt17 = parcel.readInt();
                            ParcelImpl parcelImpl11 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl11 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40845c(m41087a13, readInt17, parcelImpl11);
                            return true;
                        case 43:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a14 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt18 = parcel.readInt();
                            ParcelImpl parcelImpl12 = null;
                            if (parcel.readInt() != 0) {
                                parcelImpl12 = ParcelImpl.CREATOR.createFromParcel(parcel);
                            }
                            mo40840d(m41087a14, readInt18, parcelImpl12);
                            return true;
                        case 44:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            mo40846c(AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                            return true;
                        case 45:
                            parcel.enforceInterface("androidx.media2.session.IMediaSession");
                            AbstractC2220b m41087a15 = AbstractC2220b.AbstractBinderC2221a.m41087a(parcel.readStrongBinder());
                            int readInt19 = parcel.readInt();
                            Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                            if (parcel.readInt() != 0) {
                                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            }
                            mo40868a(m41087a15, readInt19, uri, bundle);
                            return true;
                        default:
                            return super.onTransact(i, parcel, parcel2, i2);
                    }
            }
        }
    }

    /* renamed from: a */
    void mo40876a(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: a */
    void mo40875a(AbstractC2220b abstractC2220b, int i, float f) throws RemoteException;

    /* renamed from: a */
    void mo40874a(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException;

    /* renamed from: a */
    void mo40873a(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException;

    /* renamed from: a */
    void mo40870a(AbstractC2220b abstractC2220b, int i, int i2, String str) throws RemoteException;

    /* renamed from: a */
    void mo40869a(AbstractC2220b abstractC2220b, int i, long j) throws RemoteException;

    /* renamed from: a */
    void mo40868a(AbstractC2220b abstractC2220b, int i, Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo40867a(AbstractC2220b abstractC2220b, int i, Surface surface) throws RemoteException;

    /* renamed from: a */
    void mo40865a(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: a */
    void mo40864a(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo40863a(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException;

    /* renamed from: a */
    void mo40862a(AbstractC2220b abstractC2220b, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: a */
    void mo40861a(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: a */
    void mo40860a(AbstractC2220b abstractC2220b, int i, List<String> list, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: b */
    void mo40856b(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: b */
    void mo40855b(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException;

    /* renamed from: b */
    void mo40854b(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException;

    /* renamed from: b */
    void mo40853b(AbstractC2220b abstractC2220b, int i, int i2, String str) throws RemoteException;

    /* renamed from: b */
    void mo40852b(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: b */
    void mo40851b(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException;

    /* renamed from: b */
    void mo40850b(AbstractC2220b abstractC2220b, int i, String str, int i2, int i3, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: b */
    void mo40849b(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: c */
    void mo40848c(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: c */
    void mo40847c(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException;

    /* renamed from: c */
    void mo40846c(AbstractC2220b abstractC2220b, int i, int i2, int i3) throws RemoteException;

    /* renamed from: c */
    void mo40845c(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: c */
    void mo40844c(AbstractC2220b abstractC2220b, int i, String str) throws RemoteException;

    /* renamed from: c */
    void mo40843c(AbstractC2220b abstractC2220b, int i, String str, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: d */
    void mo40842d(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: d */
    void mo40841d(AbstractC2220b abstractC2220b, int i, int i2) throws RemoteException;

    /* renamed from: d */
    void mo40840d(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: e */
    void mo40839e(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: e */
    void mo40838e(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: f */
    void mo40837f(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: f */
    void mo40836f(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RemoteException;

    /* renamed from: g */
    void mo40835g(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: h */
    void mo40834h(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: i */
    void mo40833i(AbstractC2220b abstractC2220b, int i) throws RemoteException;

    /* renamed from: j */
    void mo40832j(AbstractC2220b abstractC2220b, int i) throws RemoteException;
}
