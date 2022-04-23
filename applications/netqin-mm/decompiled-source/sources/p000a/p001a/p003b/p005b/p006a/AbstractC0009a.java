package p000a.p001a.p003b.p005b.p006a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p009v4.media.MediaMetadataCompat;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.support.p009v4.media.session.ParcelableVolumeInfo;
import android.support.p009v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import java.util.List;
/* renamed from: a.a.b.b.a.a */
/* loaded from: classes-dex2jar.jar:a/a/b/b/a/a.class */
public interface AbstractC0009a extends IInterface {

    /* renamed from: a.a.b.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/b/b/a/a$a.class */
    public static abstract class AbstractBinderC0010a extends Binder implements AbstractC0009a {
        public AbstractBinderC0010a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
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
                        mo39258a(readString, bundle2);
                        return true;
                    case 2:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo39251w1();
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                        }
                        mo39260a(playbackStateCompat);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                        }
                        mo39262a(mediaMetadataCompat);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo39257a(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                        }
                        mo39259a(charSequence);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        mo39255g(bundle);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                        }
                        mo39261a(parcelableVolumeInfo);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo39256d(parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        mo39253k(z);
                        return true;
                    case 11:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (parcel.readInt() != 0) {
                            z2 = true;
                        }
                        mo39254i(z2);
                        return true;
                    case 12:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo39252m(parcel.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                        mo39263L0();
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

    /* renamed from: L0 */
    void mo39263L0() throws RemoteException;

    /* renamed from: a */
    void mo39262a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    /* renamed from: a */
    void mo39261a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    /* renamed from: a */
    void mo39260a(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    /* renamed from: a */
    void mo39259a(CharSequence charSequence) throws RemoteException;

    /* renamed from: a */
    void mo39258a(String str, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo39257a(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    /* renamed from: d */
    void mo39256d(int i) throws RemoteException;

    /* renamed from: g */
    void mo39255g(Bundle bundle) throws RemoteException;

    /* renamed from: i */
    void mo39254i(boolean z) throws RemoteException;

    /* renamed from: k */
    void mo39253k(boolean z) throws RemoteException;

    /* renamed from: m */
    void mo39252m(int i) throws RemoteException;

    /* renamed from: w1 */
    void mo39251w1() throws RemoteException;
}
