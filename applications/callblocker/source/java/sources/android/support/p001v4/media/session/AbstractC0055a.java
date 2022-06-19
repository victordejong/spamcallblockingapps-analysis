package android.support.p001v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;
/* renamed from: android.support.v4.media.session.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface AbstractC0055a extends IInterface {

    /* renamed from: android.support.v4.media.session.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a.class */
    public static abstract class AbstractBinderC0056a extends Binder implements AbstractC0055a {

        /* renamed from: android.support.v4.media.session.a$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a$a.class */
        public static class C0057a implements AbstractC0055a {

            /* renamed from: a */
            private IBinder f150a;

            C0057a(IBinder iBinder) {
                this.f150a = iBinder;
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22378a() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f150a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22377a(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    this.f150a.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22376a(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f150a.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22375a(MediaMetadataCompat mediaMetadataCompat) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (mediaMetadataCompat != null) {
                        obtain.writeInt(1);
                        mediaMetadataCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f150a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22374a(ParcelableVolumeInfo parcelableVolumeInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcelableVolumeInfo != null) {
                        obtain.writeInt(1);
                        parcelableVolumeInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f150a.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22373a(PlaybackStateCompat playbackStateCompat) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (playbackStateCompat != null) {
                        obtain.writeInt(1);
                        playbackStateCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f150a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22372a(CharSequence charSequence) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f150a.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22371a(String str, Bundle bundle) {
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
                    this.f150a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22370a(List<MediaSessionCompat.QueueItem> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeTypedList(list);
                    this.f150a.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22369a(boolean z) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.f150a.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f150a;
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22368b() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f150a.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22367b(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    obtain.writeInt(i);
                    this.f150a.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22366b(boolean z) {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.f150a.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0056a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [android.support.v4.media.session.a] */
        /* renamed from: a */
        public static AbstractC0055a m22379a(IBinder iBinder) {
            C0057a c0057a;
            if (iBinder == null) {
                c0057a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                c0057a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0055a)) ? new C0057a(iBinder) : (AbstractC0055a) queryLocalInterface;
            }
            return c0057a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            boolean z2 = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    String readString = parcel.readString();
                    Bundle bundle = null;
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo22371a(readString, bundle);
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22378a();
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    PlaybackStateCompat playbackStateCompat = null;
                    if (parcel.readInt() != 0) {
                        playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo22373a(playbackStateCompat);
                    z = true;
                    break;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    MediaMetadataCompat mediaMetadataCompat = null;
                    if (parcel.readInt() != 0) {
                        mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo22375a(mediaMetadataCompat);
                    z = true;
                    break;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22370a(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    z = true;
                    break;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    CharSequence charSequence = null;
                    if (parcel.readInt() != 0) {
                        charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                    }
                    mo22372a(charSequence);
                    z = true;
                    break;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    Bundle bundle2 = null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo22376a(bundle2);
                    z = true;
                    break;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    ParcelableVolumeInfo parcelableVolumeInfo = null;
                    if (parcel.readInt() != 0) {
                        parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                    }
                    mo22374a(parcelableVolumeInfo);
                    z = true;
                    break;
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22377a(parcel.readInt());
                    z = true;
                    break;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22369a(parcel.readInt() != 0);
                    z = true;
                    break;
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    mo22366b(z2);
                    z = true;
                    break;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22367b(parcel.readInt());
                    z = true;
                    break;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo22368b();
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo22378a();

    /* renamed from: a */
    void mo22377a(int i);

    /* renamed from: a */
    void mo22376a(Bundle bundle);

    /* renamed from: a */
    void mo22375a(MediaMetadataCompat mediaMetadataCompat);

    /* renamed from: a */
    void mo22374a(ParcelableVolumeInfo parcelableVolumeInfo);

    /* renamed from: a */
    void mo22373a(PlaybackStateCompat playbackStateCompat);

    /* renamed from: a */
    void mo22372a(CharSequence charSequence);

    /* renamed from: a */
    void mo22371a(String str, Bundle bundle);

    /* renamed from: a */
    void mo22370a(List<MediaSessionCompat.QueueItem> list);

    /* renamed from: a */
    void mo22369a(boolean z);

    /* renamed from: b */
    void mo22368b();

    /* renamed from: b */
    void mo22367b(int i);

    /* renamed from: b */
    void mo22366b(boolean z);
}
