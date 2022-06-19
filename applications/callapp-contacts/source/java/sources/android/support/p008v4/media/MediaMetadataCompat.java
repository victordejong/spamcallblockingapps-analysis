package android.support.p008v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p008v4.media.MediaDescriptionCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.p023b.C0428a;
import java.util.Set;
/* renamed from: android.support.v4.media.MediaMetadataCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat.class */
public final class MediaMetadataCompat implements Parcelable {
    public static final C0428a<String, Integer> METADATA_KEYS_TYPE;
    public static final String METADATA_KEY_ADVERTISEMENT = "android.media.metadata.ADVERTISEMENT";
    public static final String METADATA_KEY_BT_FOLDER_TYPE = "android.media.metadata.BT_FOLDER_TYPE";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DOWNLOAD_STATUS = "android.media.metadata.DOWNLOAD_STATUS";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    static final int METADATA_TYPE_BITMAP = 2;
    static final int METADATA_TYPE_LONG = 0;
    static final int METADATA_TYPE_RATING = 3;
    static final int METADATA_TYPE_TEXT = 1;
    private static final String TAG = "MediaMetadata";
    final Bundle mBundle;
    private MediaDescriptionCompat mDescription;
    private MediaMetadata mMetadataFwk;
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    private static final String[] PREFERRED_DESCRIPTION_ORDER = {METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    private static final String[] PREFERRED_BITMAP_ORDER = {METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    private static final String[] PREFERRED_URI_ORDER = {METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, METADATA_KEY_ALBUM_ART_URI};
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    };

    /* renamed from: android.support.v4.media.MediaMetadataCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaMetadataCompat$a.class */
    public static final class C0047a {

        /* renamed from: a */
        public final Bundle f77a;

        public C0047a() {
            this.f77a = new Bundle();
        }

        public C0047a(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle = new Bundle(mediaMetadataCompat.mBundle);
            this.f77a = bundle;
            MediaSessionCompat.m46534a(bundle);
        }

        public C0047a(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.f77a.keySet()) {
                Object obj = this.f77a.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        float f = i;
                        float min = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
                        m46574a(str, Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), true));
                    }
                }
            }
        }

        /* renamed from: a */
        public final C0047a m46574a(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() == 2) {
                this.f77a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        /* renamed from: a */
        public final MediaMetadataCompat m46575a() {
            return new MediaMetadataCompat(this.f77a);
        }
    }

    static {
        C0428a<String, Integer> c0428a = new C0428a<>();
        METADATA_KEYS_TYPE = c0428a;
        c0428a.put(METADATA_KEY_TITLE, 1);
        c0428a.put(METADATA_KEY_ARTIST, 1);
        c0428a.put(METADATA_KEY_DURATION, 0);
        c0428a.put(METADATA_KEY_ALBUM, 1);
        c0428a.put(METADATA_KEY_AUTHOR, 1);
        c0428a.put(METADATA_KEY_WRITER, 1);
        c0428a.put(METADATA_KEY_COMPOSER, 1);
        c0428a.put(METADATA_KEY_COMPILATION, 1);
        c0428a.put(METADATA_KEY_DATE, 1);
        c0428a.put(METADATA_KEY_YEAR, 0);
        c0428a.put(METADATA_KEY_GENRE, 1);
        c0428a.put(METADATA_KEY_TRACK_NUMBER, 0);
        c0428a.put(METADATA_KEY_NUM_TRACKS, 0);
        c0428a.put(METADATA_KEY_DISC_NUMBER, 0);
        c0428a.put(METADATA_KEY_ALBUM_ARTIST, 1);
        c0428a.put(METADATA_KEY_ART, 2);
        c0428a.put(METADATA_KEY_ART_URI, 1);
        c0428a.put(METADATA_KEY_ALBUM_ART, 2);
        c0428a.put(METADATA_KEY_ALBUM_ART_URI, 1);
        c0428a.put(METADATA_KEY_USER_RATING, 3);
        c0428a.put(METADATA_KEY_RATING, 3);
        c0428a.put(METADATA_KEY_DISPLAY_TITLE, 1);
        c0428a.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        c0428a.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        c0428a.put(METADATA_KEY_DISPLAY_ICON, 2);
        c0428a.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        c0428a.put(METADATA_KEY_MEDIA_ID, 1);
        c0428a.put(METADATA_KEY_BT_FOLDER_TYPE, 0);
        c0428a.put(METADATA_KEY_MEDIA_URI, 1);
        c0428a.put(METADATA_KEY_ADVERTISEMENT, 0);
        c0428a.put(METADATA_KEY_DOWNLOAD_STATUS, 0);
    }

    MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.mBundle = bundle2;
        MediaSessionCompat.m46534a(bundle2);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.mBundle = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        mediaMetadata.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.mMetadataFwk = mediaMetadata;
        return createFromParcel;
    }

    public final boolean containsKey(String str) {
        return this.mBundle.containsKey(str);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Bitmap getBitmap(String str) {
        Bitmap bitmap;
        try {
            bitmap = (Bitmap) this.mBundle.getParcelable(str);
        } catch (Exception e) {
            Log.w(TAG, "Failed to retrieve a key as Bitmap.", e);
            bitmap = null;
        }
        return bitmap;
    }

    public final Bundle getBundle() {
        return new Bundle(this.mBundle);
    }

    public final MediaDescriptionCompat getDescription() {
        Uri uri;
        Bitmap bitmap;
        Uri uri2;
        MediaDescriptionCompat mediaDescriptionCompat = this.mDescription;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        String string = getString(METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(METADATA_KEY_DISPLAY_TITLE);
        if (TextUtils.isEmpty(text)) {
            int i = 0;
            int i2 = 0;
            while (i < 3) {
                String[] strArr = PREFERRED_DESCRIPTION_ORDER;
                if (i2 >= strArr.length) {
                    break;
                }
                CharSequence text2 = getText(strArr[i2]);
                int i3 = i;
                if (!TextUtils.isEmpty(text2)) {
                    charSequenceArr[i] = text2;
                    i3 = i + 1;
                }
                i2++;
                i = i3;
            }
        } else {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(METADATA_KEY_DISPLAY_DESCRIPTION);
        }
        int i4 = 0;
        while (true) {
            String[] strArr2 = PREFERRED_BITMAP_ORDER;
            uri = null;
            if (i4 >= strArr2.length) {
                bitmap = null;
                break;
            }
            bitmap = getBitmap(strArr2[i4]);
            if (bitmap != null) {
                break;
            }
            i4++;
        }
        int i5 = 0;
        while (true) {
            String[] strArr3 = PREFERRED_URI_ORDER;
            if (i5 >= strArr3.length) {
                uri2 = null;
                break;
            }
            String string2 = getString(strArr3[i5]);
            if (!TextUtils.isEmpty(string2)) {
                uri2 = Uri.parse(string2);
                break;
            }
            i5++;
        }
        String string3 = getString(METADATA_KEY_MEDIA_URI);
        if (!TextUtils.isEmpty(string3)) {
            uri = Uri.parse(string3);
        }
        MediaDescriptionCompat.C0045a c0045a = new MediaDescriptionCompat.C0045a();
        c0045a.f69a = string;
        c0045a.f70b = charSequenceArr[0];
        c0045a.f71c = charSequenceArr[1];
        c0045a.f72d = charSequenceArr[2];
        c0045a.f73e = bitmap;
        c0045a.f74f = uri2;
        c0045a.f76h = uri;
        Bundle bundle = new Bundle();
        if (this.mBundle.containsKey(METADATA_KEY_BT_FOLDER_TYPE)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE, getLong(METADATA_KEY_BT_FOLDER_TYPE));
        }
        if (this.mBundle.containsKey(METADATA_KEY_DOWNLOAD_STATUS)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_DOWNLOAD_STATUS, getLong(METADATA_KEY_DOWNLOAD_STATUS));
        }
        if (!bundle.isEmpty()) {
            c0045a.f75g = bundle;
        }
        MediaDescriptionCompat m46576a = c0045a.m46576a();
        this.mDescription = m46576a;
        return m46576a;
    }

    public final long getLong(String str) {
        return this.mBundle.getLong(str, 0L);
    }

    public final Object getMediaMetadata() {
        if (this.mMetadataFwk == null && Build.VERSION.SDK_INT >= 21) {
            Parcel obtain = Parcel.obtain();
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            this.mMetadataFwk = (MediaMetadata) MediaMetadata.CREATOR.createFromParcel(obtain);
            obtain.recycle();
        }
        return this.mMetadataFwk;
    }

    public final RatingCompat getRating(String str) {
        RatingCompat ratingCompat;
        try {
            ratingCompat = Build.VERSION.SDK_INT >= 19 ? RatingCompat.fromRating(this.mBundle.getParcelable(str)) : (RatingCompat) this.mBundle.getParcelable(str);
        } catch (Exception e) {
            Log.w(TAG, "Failed to retrieve a key as Rating.", e);
            ratingCompat = null;
        }
        return ratingCompat;
    }

    public final String getString(String str) {
        CharSequence charSequence = this.mBundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public final CharSequence getText(String str) {
        return this.mBundle.getCharSequence(str);
    }

    public final Set<String> keySet() {
        return this.mBundle.keySet();
    }

    public final int size() {
        return this.mBundle.size();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mBundle);
    }
}
