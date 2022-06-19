package android.support.p008v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;
/* renamed from: android.support.v4.media.session.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface AbstractC0085a extends IInterface {

    /* renamed from: android.support.v4.media.session.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a.class */
    public static abstract class AbstractBinderC0086a extends Binder implements AbstractC0085a {

        /* renamed from: android.support.v4.media.session.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a$a.class */
        public static final class C0087a implements AbstractC0085a {

            /* renamed from: a */
            public static AbstractC0085a f184a;

            /* renamed from: b */
            private IBinder f185b;

            C0087a(IBinder iBinder) {
                this.f185b = iBinder;
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46480a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (this.f185b.transact(2, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46480a();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46479a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    if (this.f185b.transact(9, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46479a(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46478a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f185b.transact(7, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46478a(bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46477a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (mediaMetadataCompat != null) {
                        obtain.writeInt(1);
                        mediaMetadataCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f185b.transact(4, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46477a(mediaMetadataCompat);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46476a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcelableVolumeInfo != null) {
                        obtain.writeInt(1);
                        parcelableVolumeInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f185b.transact(8, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46476a(parcelableVolumeInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46475a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (playbackStateCompat != null) {
                        obtain.writeInt(1);
                        playbackStateCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f185b.transact(3, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46475a(playbackStateCompat);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46474a(CharSequence charSequence) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f185b.transact(6, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46474a(charSequence);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46473a(String str, Bundle bundle) throws RemoteException {
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
                    if (this.f185b.transact(1, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46473a(str, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46472a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeTypedList(list);
                    if (this.f185b.transact(5, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46472a(list);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46471a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f185b.transact(10, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46471a(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f185b;
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46470b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (this.f185b.transact(13, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46470b();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46469b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    if (this.f185b.transact(12, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46469b(i);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46468b(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f185b.transact(11, obtain, null, 1) || AbstractBinderC0086a.m46481c() == null) {
                        return;
                    }
                    AbstractBinderC0086a.m46481c().mo46468b(z);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0086a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        /* renamed from: a */
        public static AbstractC0085a m46482a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0085a)) ? new C0087a(iBinder) : (AbstractC0085a) queryLocalInterface;
        }

        /* renamed from: c */
        public static AbstractC0085a m46481c() {
            return C0087a.f184a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    String readString = parcel.readString();
                    Bundle bundle = null;
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46473a(readString, bundle);
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo46480a();
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    PlaybackStateCompat playbackStateCompat = null;
                    if (parcel.readInt() != 0) {
                        playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46475a(playbackStateCompat);
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    MediaMetadataCompat mediaMetadataCompat = null;
                    if (parcel.readInt() != 0) {
                        mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46477a(mediaMetadataCompat);
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo46472a(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    CharSequence charSequence = null;
                    if (parcel.readInt() != 0) {
                        charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                    }
                    mo46474a(charSequence);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    Bundle bundle2 = null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46478a(bundle2);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    ParcelableVolumeInfo parcelableVolumeInfo = null;
                    if (parcel.readInt() != 0) {
                        parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                    }
                    mo46476a(parcelableVolumeInfo);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo46479a(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    boolean z2 = false;
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    mo46471a(z2);
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    mo46468b(z);
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo46469b(parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo46470b();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: a */
    void mo46480a() throws RemoteException;

    /* renamed from: a */
    void mo46479a(int i) throws RemoteException;

    /* renamed from: a */
    void mo46478a(Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo46477a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    /* renamed from: a */
    void mo46476a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    /* renamed from: a */
    void mo46475a(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    /* renamed from: a */
    void mo46474a(CharSequence charSequence) throws RemoteException;

    /* renamed from: a */
    void mo46473a(String str, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo46472a(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    /* renamed from: a */
    void mo46471a(boolean z) throws RemoteException;

    /* renamed from: b */
    void mo46470b() throws RemoteException;

    /* renamed from: b */
    void mo46469b(int i) throws RemoteException;

    /* renamed from: b */
    void mo46468b(boolean z) throws RemoteException;
}
