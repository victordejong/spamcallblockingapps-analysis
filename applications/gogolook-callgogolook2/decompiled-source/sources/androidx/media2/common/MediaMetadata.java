package androidx.media2.common;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.ParcelImpl;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata.class */
public final class MediaMetadata extends CustomVersionedParcelable {
    public static final long BROWSABLE_TYPE_ALBUMS = 2;
    public static final long BROWSABLE_TYPE_ARTISTS = 3;
    public static final long BROWSABLE_TYPE_GENRES = 4;
    public static final long BROWSABLE_TYPE_MIXED = 0;
    public static final long BROWSABLE_TYPE_NONE = -1;
    public static final long BROWSABLE_TYPE_PLAYLISTS = 5;
    public static final long BROWSABLE_TYPE_TITLES = 1;
    public static final long BROWSABLE_TYPE_YEARS = 6;
    public static final String METADATA_KEY_ADVERTISEMENT = "androidx.media2.metadata.ADVERTISEMENT";
    public static final String METADATA_KEY_BROWSABLE = "androidx.media2.metadata.BROWSABLE";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DOWNLOAD_STATUS = "androidx.media2.metadata.DOWNLOAD_STATUS";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_EXTRAS = "androidx.media2.metadata.EXTRAS";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_PLAYABLE = "androidx.media2.metadata.PLAYABLE";
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String METADATA_KEY_RADIO_FREQUENCY = "androidx.media2.metadata.RADIO_FREQUENCY";
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String METADATA_KEY_RADIO_PROGRAM_NAME = "androidx.media2.metadata.RADIO_PROGRAM_NAME";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    public static final int METADATA_TYPE_BITMAP = 2;
    public static final int METADATA_TYPE_BUNDLE = 5;
    public static final int METADATA_TYPE_FLOAT = 4;
    public static final int METADATA_TYPE_LONG = 0;
    public static final int METADATA_TYPE_RATING = 3;
    public static final int METADATA_TYPE_TEXT = 1;
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    public static final String TAG = "MediaMetadata";
    public ParcelImplListSlice mBitmapListSlice;
    public Bundle mBundle;
    public static final ArrayMap<String, Integer> METADATA_KEYS_TYPE = new ArrayMap<>();
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String[] PREFERRED_DESCRIPTION_ORDER = {METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String[] PREFERRED_BITMAP_ORDER = {METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    public static final String[] PREFERRED_URI_ORDER = {METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, METADATA_KEY_ALBUM_ART_URI};

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BitmapEntry.class */
    public static final class BitmapEntry implements VersionedParcelable {
        public static final int BITMAP_SIZE_LIMIT_IN_BYTES = 262144;
        public Bitmap mBitmap;
        public String mKey;

        public BitmapEntry() {
        }

        public BitmapEntry(@NonNull String str, @NonNull Bitmap bitmap) {
            this.mKey = str;
            this.mBitmap = bitmap;
            int bitmapSizeInBytes = getBitmapSizeInBytes(this.mBitmap);
            if (bitmapSizeInBytes > 262144) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                double sqrt = Math.sqrt(262144.0d / bitmapSizeInBytes);
                int i = (int) (width * sqrt);
                int i2 = (int) (height * sqrt);
                String str2 = "Scaling large bitmap of " + width + "x" + height + " into " + i + "x" + i2;
                this.mBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
            }
        }

        private int getBitmapSizeInBytes(Bitmap bitmap) {
            return Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        public String getKey() {
            return this.mKey;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BitmapKey.class */
    public @interface BitmapKey {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$Builder.class */
    public static final class Builder {
        public final Bundle mBundle;

        public Builder() {
            this.mBundle = new Bundle();
        }

        public Builder(Bundle bundle) {
            this.mBundle = new Bundle(bundle);
        }

        public Builder(@NonNull MediaMetadata mediaMetadata) {
            this.mBundle = new Bundle(mediaMetadata.mBundle);
        }

        @NonNull
        public MediaMetadata build() {
            return new MediaMetadata(this.mBundle);
        }

        @NonNull
        public Builder putBitmap(@NonNull String str, @Nullable Bitmap bitmap) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 2) {
                this.mBundle.putParcelable(str, bitmap);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
            }
        }

        @NonNull
        public Builder putFloat(@NonNull String str, float f) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 4) {
                this.mBundle.putFloat(str, f);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a float");
            }
        }

        @NonNull
        public Builder putLong(@NonNull String str, long j) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 0) {
                this.mBundle.putLong(str, j);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
            }
        }

        @NonNull
        public Builder putRating(@NonNull String str, @Nullable Rating rating) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 3) {
                ParcelUtils.putVersionedParcelable(this.mBundle, str, rating);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
            }
        }

        @NonNull
        public Builder putString(@NonNull String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 1) {
                this.mBundle.putCharSequence(str, str2);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
            }
        }

        @NonNull
        public Builder putText(@NonNull String str, @Nullable CharSequence charSequence) {
            if (str == null) {
                throw new NullPointerException("key shouldn't be null");
            } else if (!MediaMetadata.METADATA_KEYS_TYPE.containsKey(str) || MediaMetadata.METADATA_KEYS_TYPE.get(str).intValue() == 1) {
                this.mBundle.putCharSequence(str, charSequence);
                return this;
            } else {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
            }
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.mBundle.putBundle(MediaMetadata.METADATA_KEY_EXTRAS, bundle);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BundleKey.class */
    public @interface BundleKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$FloatKey.class */
    public @interface FloatKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$LongKey.class */
    public @interface LongKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$RatingKey.class */
    public @interface RatingKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$TextKey.class */
    public @interface TextKey {
    }

    static {
        METADATA_KEYS_TYPE.put(METADATA_KEY_TITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ARTIST, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DURATION, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_AUTHOR, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_WRITER, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_COMPOSER, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_COMPILATION, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DATE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_YEAR, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_GENRE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_TRACK_NUMBER, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_NUM_TRACKS, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISC_NUMBER, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ARTIST, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ART, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ART_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ART, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ART_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_USER_RATING, 3);
        METADATA_KEYS_TYPE.put(METADATA_KEY_RATING, 3);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_TITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_ICON, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_MEDIA_ID, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_MEDIA_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_RADIO_FREQUENCY, 4);
        METADATA_KEYS_TYPE.put(METADATA_KEY_RADIO_PROGRAM_NAME, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_BROWSABLE, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_PLAYABLE, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ADVERTISEMENT, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DOWNLOAD_STATUS, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_EXTRAS, 5);
    }

    public MediaMetadata() {
    }

    public MediaMetadata(Bundle bundle) {
        this.mBundle = new Bundle(bundle);
        this.mBundle.setClassLoader(MediaMetadata.class.getClassLoader());
    }

    public boolean containsKey(@NonNull String str) {
        if (str != null) {
            return this.mBundle.containsKey(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public Bitmap getBitmap(@NonNull String str) {
        Bitmap bitmap;
        if (str != null) {
            try {
                bitmap = (Bitmap) this.mBundle.getParcelable(str);
            } catch (Exception e) {
                bitmap = null;
            }
            return bitmap;
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public Bundle getExtras() {
        try {
            return this.mBundle.getBundle(METADATA_KEY_EXTRAS);
        } catch (Exception e) {
            return null;
        }
    }

    public float getFloat(@NonNull String str) {
        if (str != null) {
            return this.mBundle.getFloat(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    public long getLong(@NonNull String str) {
        if (str != null) {
            return this.mBundle.getLong(str, 0L);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public String getMediaId() {
        return getString(METADATA_KEY_MEDIA_ID);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Object getObject(@NonNull String str) {
        if (str != null) {
            return this.mBundle.get(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public Rating getRating(@NonNull String str) {
        Rating rating;
        if (str != null) {
            try {
                rating = (Rating) ParcelUtils.getVersionedParcelable(this.mBundle, str);
            } catch (Exception e) {
                rating = null;
            }
            return rating;
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public String getString(@NonNull String str) {
        if (str != null) {
            CharSequence charSequence = this.mBundle.getCharSequence(str);
            if (charSequence != null) {
                return charSequence.toString();
            }
            return null;
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Nullable
    public CharSequence getText(@NonNull String str) {
        if (str != null) {
            return this.mBundle.getCharSequence(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @NonNull
    public Set<String> keySet() {
        return this.mBundle.keySet();
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onPostParceling() {
        List<ParcelImpl> list = this.mBitmapListSlice.getList();
        for (ParcelImpl parcelImpl : list) {
            BitmapEntry bitmapEntry = (BitmapEntry) MediaParcelUtils.fromParcelable(parcelImpl);
            this.mBundle.putParcelable(bitmapEntry.getKey(), bitmapEntry.getBitmap());
        }
        list.clear();
        this.mBitmapListSlice = null;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onPreParceling(boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        for (String str : this.mBundle.keySet()) {
            Object obj = this.mBundle.get(str);
            if (obj instanceof Bitmap) {
                arrayList.add(MediaParcelUtils.toParcelable(new BitmapEntry(str, (Bitmap) obj)));
                arrayList2.add(str);
            }
        }
        for (String str2 : arrayList2) {
            this.mBundle.remove(str2);
        }
        this.mBitmapListSlice = new ParcelImplListSlice(arrayList);
    }

    public int size() {
        return this.mBundle.size();
    }

    public String toString() {
        return this.mBundle.toString();
    }
}
