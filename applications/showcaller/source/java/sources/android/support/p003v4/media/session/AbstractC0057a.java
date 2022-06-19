package android.support.p003v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p003v4.media.MediaMetadataCompat;
import android.support.p003v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;
/* renamed from: android.support.v4.media.session.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface AbstractC0057a extends IInterface {

    /* renamed from: android.support.v4.media.session.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a$a.class */
    public static abstract class AbstractBinderC0058a extends Binder implements AbstractC0057a {
        public AbstractBinderC0058a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
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
                    mo35817I0(readString, bundle);
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo35808x0();
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    PlaybackStateCompat playbackStateCompat = null;
                    if (parcel.readInt() != 0) {
                        playbackStateCompat = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo35810q6(playbackStateCompat);
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    MediaMetadataCompat mediaMetadataCompat = null;
                    if (parcel.readInt() != 0) {
                        mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo35815N3(mediaMetadataCompat);
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo35811n0(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    CharSequence charSequence = null;
                    if (parcel.readInt() != 0) {
                        charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                    }
                    mo35809w0(charSequence);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    Bundle bundle2 = null;
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo35812k0(bundle2);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    ParcelableVolumeInfo parcelableVolumeInfo = null;
                    if (parcel.readInt() != 0) {
                        parcelableVolumeInfo = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                    }
                    mo35818B6(parcelableVolumeInfo);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    onRepeatModeChanged(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    boolean z2 = false;
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    mo35819A3(z2);
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    mo35813O2(z);
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo35814N4(parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    mo35816L1();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: A3 */
    void mo35819A3(boolean z);

    /* renamed from: B6 */
    void mo35818B6(ParcelableVolumeInfo parcelableVolumeInfo);

    /* renamed from: I0 */
    void mo35817I0(String str, Bundle bundle);

    /* renamed from: L1 */
    void mo35816L1();

    /* renamed from: N3 */
    void mo35815N3(MediaMetadataCompat mediaMetadataCompat);

    /* renamed from: N4 */
    void mo35814N4(int i);

    /* renamed from: O2 */
    void mo35813O2(boolean z);

    /* renamed from: k0 */
    void mo35812k0(Bundle bundle);

    /* renamed from: n0 */
    void mo35811n0(List<MediaSessionCompat.QueueItem> list);

    void onRepeatModeChanged(int i);

    /* renamed from: q6 */
    void mo35810q6(PlaybackStateCompat playbackStateCompat);

    /* renamed from: w0 */
    void mo35809w0(CharSequence charSequence);

    /* renamed from: x0 */
    void mo35808x0();
}
