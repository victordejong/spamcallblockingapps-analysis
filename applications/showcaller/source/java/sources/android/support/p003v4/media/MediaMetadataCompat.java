package android.support.p003v4.media;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p003v4.media.session.MediaSessionCompat;
import p020b.p036e.C1489a;
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {

    /* renamed from: d */
    static final C1489a<String, Integer> f71d;

    /* renamed from: h */
    final Bundle f75h;

    /* renamed from: i */
    private Object f76i;

    /* renamed from: e */
    private static final String[] f72e = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};

    /* renamed from: f */
    private static final String[] f73f = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};

    /* renamed from: g */
    private static final String[] f74g = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new C0034a();

    /* renamed from: android.support.v4.media.MediaMetadataCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat$a.class */
    static final class C0034a implements Parcelable.Creator<MediaMetadataCompat> {
        C0034a() {
        }

        /* renamed from: a */
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        /* renamed from: b */
        public MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    }

    static {
        C1489a<String, Integer> c1489a = new C1489a<>();
        f71d = c1489a;
        c1489a.put("android.media.metadata.TITLE", 1);
        c1489a.put("android.media.metadata.ARTIST", 1);
        c1489a.put("android.media.metadata.DURATION", 0);
        c1489a.put("android.media.metadata.ALBUM", 1);
        c1489a.put("android.media.metadata.AUTHOR", 1);
        c1489a.put("android.media.metadata.WRITER", 1);
        c1489a.put("android.media.metadata.COMPOSER", 1);
        c1489a.put("android.media.metadata.COMPILATION", 1);
        c1489a.put("android.media.metadata.DATE", 1);
        c1489a.put("android.media.metadata.YEAR", 0);
        c1489a.put("android.media.metadata.GENRE", 1);
        c1489a.put("android.media.metadata.TRACK_NUMBER", 0);
        c1489a.put("android.media.metadata.NUM_TRACKS", 0);
        c1489a.put("android.media.metadata.DISC_NUMBER", 0);
        c1489a.put("android.media.metadata.ALBUM_ARTIST", 1);
        c1489a.put("android.media.metadata.ART", 2);
        c1489a.put("android.media.metadata.ART_URI", 1);
        c1489a.put("android.media.metadata.ALBUM_ART", 2);
        c1489a.put("android.media.metadata.ALBUM_ART_URI", 1);
        c1489a.put("android.media.metadata.USER_RATING", 3);
        c1489a.put("android.media.metadata.RATING", 3);
        c1489a.put("android.media.metadata.DISPLAY_TITLE", 1);
        c1489a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        c1489a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        c1489a.put("android.media.metadata.DISPLAY_ICON", 2);
        c1489a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        c1489a.put("android.media.metadata.MEDIA_ID", 1);
        c1489a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        c1489a.put("android.media.metadata.MEDIA_URI", 1);
        c1489a.put("android.media.metadata.ADVERTISEMENT", 0);
        c1489a.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f75h = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    /* renamed from: a */
    public static MediaMetadataCompat m35882a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        C0040c.m35857a(obj, obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.f76i = obj;
        return createFromParcel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f75h);
    }
}
