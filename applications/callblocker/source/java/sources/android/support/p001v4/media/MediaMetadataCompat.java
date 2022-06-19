package android.support.p001v4.media;

import android.annotation.SuppressLint;
import android.media.MediaMetadata;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.p013b.C0373a;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {

    /* renamed from: b */
    final Bundle f100b;

    /* renamed from: f */
    private MediaMetadata f101f;

    /* renamed from: a */
    static final C0373a<String, Integer> f96a = new C0373a<>();

    /* renamed from: c */
    private static final String[] f97c = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};

    /* renamed from: d */
    private static final String[] f98d = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};

    /* renamed from: e */
    private static final String[] f99e = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
        /* renamed from: a */
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        /* renamed from: a */
        public MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    };

    static {
        f96a.put("android.media.metadata.TITLE", 1);
        f96a.put("android.media.metadata.ARTIST", 1);
        f96a.put("android.media.metadata.DURATION", 0);
        f96a.put("android.media.metadata.ALBUM", 1);
        f96a.put("android.media.metadata.AUTHOR", 1);
        f96a.put("android.media.metadata.WRITER", 1);
        f96a.put("android.media.metadata.COMPOSER", 1);
        f96a.put("android.media.metadata.COMPILATION", 1);
        f96a.put("android.media.metadata.DATE", 1);
        f96a.put("android.media.metadata.YEAR", 0);
        f96a.put("android.media.metadata.GENRE", 1);
        f96a.put("android.media.metadata.TRACK_NUMBER", 0);
        f96a.put("android.media.metadata.NUM_TRACKS", 0);
        f96a.put("android.media.metadata.DISC_NUMBER", 0);
        f96a.put("android.media.metadata.ALBUM_ARTIST", 1);
        f96a.put("android.media.metadata.ART", 2);
        f96a.put("android.media.metadata.ART_URI", 1);
        f96a.put("android.media.metadata.ALBUM_ART", 2);
        f96a.put("android.media.metadata.ALBUM_ART_URI", 1);
        f96a.put("android.media.metadata.USER_RATING", 3);
        f96a.put("android.media.metadata.RATING", 3);
        f96a.put("android.media.metadata.DISPLAY_TITLE", 1);
        f96a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f96a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f96a.put("android.media.metadata.DISPLAY_ICON", 2);
        f96a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f96a.put("android.media.metadata.MEDIA_ID", 1);
        f96a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f96a.put("android.media.metadata.MEDIA_URI", 1);
        f96a.put("android.media.metadata.ADVERTISEMENT", 0);
        f96a.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f100b = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    /* renamed from: a */
    public static MediaMetadataCompat m22418a(Object obj) {
        MediaMetadataCompat mediaMetadataCompat;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            mediaMetadataCompat = null;
        } else {
            Parcel obtain = Parcel.obtain();
            ((MediaMetadata) obj).writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
            obtain.recycle();
            createFromParcel.f101f = (MediaMetadata) obj;
            mediaMetadataCompat = createFromParcel;
        }
        return mediaMetadataCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f100b);
    }
}
