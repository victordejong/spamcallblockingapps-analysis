package android.support.p001v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1788g.C26174a;
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new C0006a();

    /* renamed from: b */
    public static final C26174a<String, Integer> f18b;

    /* renamed from: a */
    public final Bundle f19a;

    /* renamed from: android.support.v4.media.MediaMetadataCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat$a.class */
    public class C0006a implements Parcelable.Creator<MediaMetadataCompat> {
        @Override // android.os.Parcelable.Creator
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    }

    static {
        C26174a<String, Integer> c26174a = new C26174a<>();
        f18b = c26174a;
        c26174a.put("android.media.metadata.TITLE", 1);
        c26174a.put("android.media.metadata.ARTIST", 1);
        c26174a.put("android.media.metadata.DURATION", 0);
        c26174a.put("android.media.metadata.ALBUM", 1);
        c26174a.put("android.media.metadata.AUTHOR", 1);
        c26174a.put("android.media.metadata.WRITER", 1);
        c26174a.put("android.media.metadata.COMPOSER", 1);
        c26174a.put("android.media.metadata.COMPILATION", 1);
        c26174a.put("android.media.metadata.DATE", 1);
        c26174a.put("android.media.metadata.YEAR", 0);
        c26174a.put("android.media.metadata.GENRE", 1);
        c26174a.put("android.media.metadata.TRACK_NUMBER", 0);
        c26174a.put("android.media.metadata.NUM_TRACKS", 0);
        c26174a.put("android.media.metadata.DISC_NUMBER", 0);
        c26174a.put("android.media.metadata.ALBUM_ARTIST", 1);
        c26174a.put("android.media.metadata.ART", 2);
        c26174a.put("android.media.metadata.ART_URI", 1);
        c26174a.put("android.media.metadata.ALBUM_ART", 2);
        c26174a.put("android.media.metadata.ALBUM_ART_URI", 1);
        c26174a.put("android.media.metadata.USER_RATING", 3);
        c26174a.put("android.media.metadata.RATING", 3);
        c26174a.put("android.media.metadata.DISPLAY_TITLE", 1);
        c26174a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        c26174a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        c26174a.put("android.media.metadata.DISPLAY_ICON", 2);
        c26174a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        c26174a.put("android.media.metadata.MEDIA_ID", 1);
        c26174a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        c26174a.put("android.media.metadata.MEDIA_URI", 1);
        c26174a.put("android.media.metadata.ADVERTISEMENT", 0);
        c26174a.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.f19a = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f19a);
    }
}
