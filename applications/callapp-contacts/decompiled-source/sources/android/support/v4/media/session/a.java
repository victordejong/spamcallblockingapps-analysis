package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface a extends IInterface {

    /* renamed from: android.support.v4.media.session.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a.class */
    public static abstract class AbstractBinderC0009a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a$a.class */
        public static final class C0010a implements a {

            /* renamed from: a  reason: collision with root package name */
            public static a f478a;

            /* renamed from: b  reason: collision with root package name */
            private IBinder f479b;

            C0010a(IBinder iBinder) {
                this.f479b = iBinder;
            }

            @Override // android.support.v4.media.session.a
            public final void a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (!this.f479b.transact(2, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a();
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    if (!this.f479b.transact(9, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(7, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (mediaMetadataCompat != null) {
                        obtain.writeInt(1);
                        mediaMetadataCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(4, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(mediaMetadataCompat);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcelableVolumeInfo != null) {
                        obtain.writeInt(1);
                        parcelableVolumeInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(8, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(parcelableVolumeInfo);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (playbackStateCompat != null) {
                        obtain.writeInt(1);
                        playbackStateCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(3, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(playbackStateCompat);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(CharSequence charSequence) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(6, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(charSequence);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f479b.transact(1, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(str, bundle);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeTypedList(list);
                    if (!this.f479b.transact(5, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(list);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.f479b.transact(10, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().a(z);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f479b;
            }

            @Override // android.support.v4.media.session.a
            public final void b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (!this.f479b.transact(13, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().b();
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    if (!this.f479b.transact(12, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().b(i);
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public final void b(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.f479b.transact(11, obtain, null, 1) && AbstractBinderC0009a.c() != null) {
                        AbstractBinderC0009a.c().b(z);
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0009a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0010a(iBinder) : (a) queryLocalInterface;
        }

        public static a c() {
            return C0010a.f478a;
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
                Bundle bundle = null;
                CharSequence charSequence = null;
                MediaMetadataCompat mediaMetadataCompat = null;
                PlaybackStateCompat playbackStateCompat = null;
                Bundle bundle2 = null;
                ParcelableVolumeInfo parcelableVolumeInfo = null;
                switch (i) {
                    case 1:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(readString, bundle2);
                        return true;
                    case 2:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        a();
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                        }
                        a(playbackStateCompat);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                        }
                        a(mediaMetadataCompat);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        a(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                        }
                        a(charSequence);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        a(bundle);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                        }
                        a(parcelableVolumeInfo);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        a(parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        a(z);
                        return true;
                    case 11:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        }
                        b(z2);
                        return true;
                    case 12:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        b(parcel.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        b();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
        }
    }

    void a() throws RemoteException;

    void a(int i) throws RemoteException;

    void a(Bundle bundle) throws RemoteException;

    void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    void a(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    void a(CharSequence charSequence) throws RemoteException;

    void a(String str, Bundle bundle) throws RemoteException;

    void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void b() throws RemoteException;

    void b(int i) throws RemoteException;

    void b(boolean z) throws RemoteException;
}
