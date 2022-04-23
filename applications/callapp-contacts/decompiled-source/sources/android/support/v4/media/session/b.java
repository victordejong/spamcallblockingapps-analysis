package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b.class */
public interface b extends IInterface {

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a.class */
    public static abstract class a extends Binder implements b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a$a.class */
        public static final class C0011a implements b {

            /* renamed from: a  reason: collision with root package name */
            public static b f480a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f481b;

            C0011a(IBinder iBinder) {
                this.f481b = iBinder;
            }

            @Override // android.support.v4.media.session.b
            public final void a(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeFloat(f);
                    if (this.f481b.transact(49, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f481b.transact(44, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f481b.transact(11, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(i, i2, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    if (this.f481b.transact(17, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
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
                    if (this.f481b.transact(36, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(uri, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(41, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(mediaDescriptionCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(MediaDescriptionCompat mediaDescriptionCompat, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.f481b.transact(42, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(mediaDescriptionCompat, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(25, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(ratingCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(51, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(ratingCompat, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(android.support.v4.media.session.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (this.f481b.transact(3, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(aVar);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(34, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (resultReceiverWrapper != null) {
                        obtain.writeInt(1);
                        resultReceiverWrapper.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(1, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(str, bundle, resultReceiverWrapper);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f481b.transact(46, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().a(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final boolean a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f481b.transact(5, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().a();
                    }
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

            @Override // android.support.v4.media.session.b
            public final boolean a(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = true;
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f481b.transact(2, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().a(keyEvent);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f481b;
            }

            @Override // android.support.v4.media.session.b
            public final String b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(6, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().b();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f481b.transact(39, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f481b.transact(12, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(i, i2, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    if (this.f481b.transact(24, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
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
                    if (this.f481b.transact(16, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(uri, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(43, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(mediaDescriptionCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(android.support.v4.media.session.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (this.f481b.transact(4, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(aVar);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(35, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void b(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f481b.transact(40, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().b(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final String c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(7, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().c();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f481b.transact(48, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().c(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void c(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(14, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().c(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final PendingIntent d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(8, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().d();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void d(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(15, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().d(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final long e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(9, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().e();
                    }
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void e(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f481b.transact(26, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().e(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final ParcelableVolumeInfo f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(10, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().f();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final MediaMetadataCompat g() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(27, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().g();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final PlaybackStateCompat h() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(28, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().h();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final List<MediaSessionCompat.QueueItem> i() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(29, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().i();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final CharSequence j() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(30, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().j();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final Bundle k() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(31, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().k();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final int l() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(32, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().l();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final boolean m() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f481b.transact(45, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().m();
                    }
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

            @Override // android.support.v4.media.session.b
            public final int n() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(37, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().n();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final boolean o() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f481b.transact(38, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().o();
                    }
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

            @Override // android.support.v4.media.session.b
            public final int p() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(47, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().p();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final Bundle q() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f481b.transact(50, obtain, obtain2, 0) && a.z() != null) {
                        return a.z().q();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void r() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(33, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().r();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void s() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(13, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().s();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void t() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(18, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().t();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void u() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(19, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().u();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void v() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(20, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().v();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void w() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(21, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().w();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void x() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(22, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().x();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public final void y() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f481b.transact(23, obtain, obtain2, 0) || a.z() == null) {
                        obtain2.readException();
                    } else {
                        a.z().y();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0011a(iBinder) : (b) queryLocalInterface;
        }

        public static b z() {
            return C0011a.f480a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                boolean z = false;
                boolean z2 = false;
                MediaDescriptionCompat mediaDescriptionCompat = null;
                MediaDescriptionCompat mediaDescriptionCompat2 = null;
                MediaDescriptionCompat mediaDescriptionCompat3 = null;
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                RatingCompat ratingCompat = null;
                Bundle bundle5 = null;
                Bundle bundle6 = null;
                Bundle bundle7 = null;
                KeyEvent keyEvent = null;
                MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper = null;
                Bundle bundle8 = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString = parcel.readString();
                        Bundle bundle9 = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            resultReceiverWrapper = MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
                        }
                        a(readString, bundle9, resultReceiverWrapper);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            keyEvent = (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel);
                        }
                        boolean a2 = a(keyEvent);
                        parcel2.writeNoException();
                        parcel2.writeInt(a2 ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        a(a.AbstractBinderC0009a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        b(a.AbstractBinderC0009a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        boolean a3 = a();
                        parcel2.writeNoException();
                        parcel2.writeInt(a3 ? 1 : 0);
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String b2 = b();
                        parcel2.writeNoException();
                        parcel2.writeString(b2);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String c2 = c();
                        parcel2.writeNoException();
                        parcel2.writeString(c2);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        PendingIntent d2 = d();
                        parcel2.writeNoException();
                        if (d2 != null) {
                            parcel2.writeInt(1);
                            d2.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        long e = e();
                        parcel2.writeNoException();
                        parcel2.writeLong(e);
                        return true;
                    case 10:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        ParcelableVolumeInfo f = f();
                        parcel2.writeNoException();
                        if (f != null) {
                            parcel2.writeInt(1);
                            f.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 11:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        a(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        b(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 13:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        s();
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        c(readString2, bundle7);
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString3 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        d(readString3, bundle6);
                        parcel2.writeNoException();
                        return true;
                    case 16:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        b(uri, bundle5);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        a(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        t();
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        u();
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        v();
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        w();
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        x();
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        y();
                        parcel2.writeNoException();
                        return true;
                    case 24:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        b(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 25:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            ratingCompat = RatingCompat.CREATOR.createFromParcel(parcel);
                        }
                        a(ratingCompat);
                        parcel2.writeNoException();
                        return true;
                    case 26:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString4 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        e(readString4, bundle4);
                        parcel2.writeNoException();
                        return true;
                    case 27:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        MediaMetadataCompat g = g();
                        parcel2.writeNoException();
                        if (g != null) {
                            parcel2.writeInt(1);
                            g.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 28:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        PlaybackStateCompat h = h();
                        parcel2.writeNoException();
                        if (h != null) {
                            parcel2.writeInt(1);
                            h.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 29:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        List<MediaSessionCompat.QueueItem> i3 = i();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(i3);
                        return true;
                    case 30:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        CharSequence j = j();
                        parcel2.writeNoException();
                        if (j != null) {
                            parcel2.writeInt(1);
                            TextUtils.writeToParcel(j, parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 31:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        Bundle k = k();
                        parcel2.writeNoException();
                        if (k != null) {
                            parcel2.writeInt(1);
                            k.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 32:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        int l = l();
                        parcel2.writeNoException();
                        parcel2.writeInt(l);
                        return true;
                    case 33:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        r();
                        parcel2.writeNoException();
                        return true;
                    case 34:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString5 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readString5, bundle3);
                        parcel2.writeNoException();
                        return true;
                    case 35:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        String readString6 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        b(readString6, bundle2);
                        parcel2.writeNoException();
                        return true;
                    case 36:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(uri2, bundle);
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        int n = n();
                        parcel2.writeNoException();
                        parcel2.writeInt(n);
                        return true;
                    case 38:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        boolean o = o();
                        parcel2.writeNoException();
                        parcel2.writeInt(o ? 1 : 0);
                        return true;
                    case 39:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        b(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 40:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        b(z);
                        parcel2.writeNoException();
                        return true;
                    case 41:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompat3 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        a(mediaDescriptionCompat3);
                        parcel2.writeNoException();
                        return true;
                    case 42:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompat2 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        a(mediaDescriptionCompat2, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 43:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompat = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        b(mediaDescriptionCompat);
                        parcel2.writeNoException();
                        return true;
                    case 44:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        a(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 45:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        boolean m = m();
                        parcel2.writeNoException();
                        parcel2.writeInt(m ? 1 : 0);
                        return true;
                    case 46:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        }
                        a(z2);
                        parcel2.writeNoException();
                        return true;
                    case 47:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        int p = p();
                        parcel2.writeNoException();
                        parcel2.writeInt(p);
                        return true;
                    case 48:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        c(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 49:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        a(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 50:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        Bundle q = q();
                        parcel2.writeNoException();
                        if (q != null) {
                            parcel2.writeInt(1);
                            q.writeToParcel(parcel2, 1);
                            return true;
                        }
                        parcel2.writeInt(0);
                        return true;
                    case 51:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                        RatingCompat createFromParcel = parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(createFromParcel, bundle8);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
        }
    }

    void a(float f) throws RemoteException;

    void a(int i) throws RemoteException;

    void a(int i, int i2, String str) throws RemoteException;

    void a(long j) throws RemoteException;

    void a(Uri uri, Bundle bundle) throws RemoteException;

    void a(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void a(MediaDescriptionCompat mediaDescriptionCompat, int i) throws RemoteException;

    void a(RatingCompat ratingCompat) throws RemoteException;

    void a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    void a(android.support.v4.media.session.a aVar) throws RemoteException;

    void a(String str, Bundle bundle) throws RemoteException;

    void a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    void a(boolean z) throws RemoteException;

    boolean a() throws RemoteException;

    boolean a(KeyEvent keyEvent) throws RemoteException;

    String b() throws RemoteException;

    void b(int i) throws RemoteException;

    void b(int i, int i2, String str) throws RemoteException;

    void b(long j) throws RemoteException;

    void b(Uri uri, Bundle bundle) throws RemoteException;

    void b(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void b(android.support.v4.media.session.a aVar) throws RemoteException;

    void b(String str, Bundle bundle) throws RemoteException;

    void b(boolean z) throws RemoteException;

    String c() throws RemoteException;

    void c(int i) throws RemoteException;

    void c(String str, Bundle bundle) throws RemoteException;

    PendingIntent d() throws RemoteException;

    void d(String str, Bundle bundle) throws RemoteException;

    long e() throws RemoteException;

    void e(String str, Bundle bundle) throws RemoteException;

    ParcelableVolumeInfo f() throws RemoteException;

    MediaMetadataCompat g() throws RemoteException;

    PlaybackStateCompat h() throws RemoteException;

    List<MediaSessionCompat.QueueItem> i() throws RemoteException;

    CharSequence j() throws RemoteException;

    Bundle k() throws RemoteException;

    int l() throws RemoteException;

    boolean m() throws RemoteException;

    int n() throws RemoteException;

    boolean o() throws RemoteException;

    int p() throws RemoteException;

    Bundle q() throws RemoteException;

    void r() throws RemoteException;

    void s() throws RemoteException;

    void t() throws RemoteException;

    void u() throws RemoteException;

    void v() throws RemoteException;

    void w() throws RemoteException;

    void x() throws RemoteException;

    void y() throws RemoteException;
}
