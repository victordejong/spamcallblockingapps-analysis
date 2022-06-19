package android.support.p001v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    private static final String TAG = "MediaDescriptionCompat";
    private final CharSequence mDescription;
    private MediaDescription mDescriptionFwk;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$Builder */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$Builder.class */
    public static final class Builder {
        private CharSequence mDescription;
        private Bundle mExtras;
        private Bitmap mIcon;
        private Uri mIconUri;
        private String mMediaId;
        private Uri mMediaUri;
        private CharSequence mSubtitle;
        private CharSequence mTitle;

        public MediaDescriptionCompat build() {
            return new MediaDescriptionCompat(this.mMediaId, this.mTitle, this.mSubtitle, this.mDescription, this.mIcon, this.mIconUri, this.mExtras, this.mMediaUri);
        }

        public Builder setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setIconBitmap(Bitmap bitmap) {
            this.mIcon = bitmap;
            return this;
        }

        public Builder setIconUri(Uri uri) {
            this.mIconUri = uri;
            return this;
        }

        public Builder setMediaId(String str) {
            this.mMediaId = str;
            return this;
        }

        public Builder setMediaUri(Uri uri) {
            this.mMediaUri = uri;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.mSubtitle = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }
    }

    public MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.mIcon = (Bitmap) parcel.readParcelable(classLoader);
        this.mIconUri = (Uri) parcel.readParcelable(classLoader);
        this.mExtras = parcel.readBundle(classLoader);
        this.mMediaUri = (Uri) parcel.readParcelable(classLoader);
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mMediaId = str;
        this.mTitle = charSequence;
        this.mSubtitle = charSequence2;
        this.mDescription = charSequence3;
        this.mIcon = bitmap;
        this.mIconUri = uri;
        this.mExtras = bundle;
        this.mMediaUri = uri2;
    }

    public static MediaDescriptionCompat fromMediaDescription(Object obj) {
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            int i = Build.VERSION.SDK_INT;
            mediaDescriptionCompat = null;
            if (i >= 21) {
                Builder builder = new Builder();
                MediaDescription mediaDescription = (MediaDescription) obj;
                builder.setMediaId(mediaDescription.getMediaId());
                builder.setTitle(mediaDescription.getTitle());
                builder.setSubtitle(mediaDescription.getSubtitle());
                builder.setDescription(mediaDescription.getDescription());
                builder.setIconBitmap(mediaDescription.getIconBitmap());
                builder.setIconUri(mediaDescription.getIconUri());
                Bundle extras = mediaDescription.getExtras();
                Bundle bundle = extras;
                if (extras != null) {
                    bundle = MediaSessionCompat.unparcelWithClassLoader(extras);
                }
                Uri uri = bundle != null ? (Uri) bundle.getParcelable(DESCRIPTION_KEY_MEDIA_URI) : null;
                if (uri != null) {
                    if (!bundle.containsKey(DESCRIPTION_KEY_NULL_BUNDLE_FLAG) || bundle.size() != 2) {
                        bundle.remove(DESCRIPTION_KEY_MEDIA_URI);
                        bundle.remove(DESCRIPTION_KEY_NULL_BUNDLE_FLAG);
                    } else {
                        bundle = null;
                    }
                }
                builder.setExtras(bundle);
                if (uri != null) {
                    builder.setMediaUri(uri);
                } else if (i >= 23) {
                    builder.setMediaUri(mediaDescription.getMediaUri());
                }
                mediaDescriptionCompat = builder.build();
                mediaDescriptionCompat.mDescriptionFwk = mediaDescription;
            }
        }
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CharSequence getDescription() {
        return this.mDescription;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Object getMediaDescription() {
        MediaDescription mediaDescription = this.mDescriptionFwk;
        MediaDescription mediaDescription2 = mediaDescription;
        if (mediaDescription == null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                mediaDescription2 = mediaDescription;
            } else {
                MediaDescription.Builder builder = new MediaDescription.Builder();
                builder.setMediaId(this.mMediaId);
                builder.setTitle(this.mTitle);
                builder.setSubtitle(this.mSubtitle);
                builder.setDescription(this.mDescription);
                builder.setIconBitmap(this.mIcon);
                builder.setIconUri(this.mIconUri);
                Bundle bundle = this.mExtras;
                Bundle bundle2 = bundle;
                if (i < 23) {
                    bundle2 = bundle;
                    if (this.mMediaUri != null) {
                        bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                            bundle2.putBoolean(DESCRIPTION_KEY_NULL_BUNDLE_FLAG, true);
                        }
                        bundle2.putParcelable(DESCRIPTION_KEY_MEDIA_URI, this.mMediaUri);
                    }
                }
                builder.setExtras(bundle2);
                if (i >= 23) {
                    builder.setMediaUri(this.mMediaUri);
                }
                mediaDescription2 = builder.build();
                this.mDescriptionFwk = mediaDescription2;
            }
        }
        return mediaDescription2;
    }

    public String getMediaId() {
        return this.mMediaId;
    }

    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((MediaDescription) getMediaDescription()).writeToParcel(parcel, i);
            return;
        }
        parcel.writeString(this.mMediaId);
        TextUtils.writeToParcel(this.mTitle, parcel, i);
        TextUtils.writeToParcel(this.mSubtitle, parcel, i);
        TextUtils.writeToParcel(this.mDescription, parcel, i);
        parcel.writeParcelable(this.mIcon, i);
        parcel.writeParcelable(this.mIconUri, i);
        parcel.writeBundle(this.mExtras);
        parcel.writeParcelable(this.mMediaUri, i);
    }
}
