package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
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
        public final /* synthetic */ MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ MediaDescriptionCompat[] newArray(int i) {
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

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f418a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f419b;

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f420c;

        /* renamed from: d  reason: collision with root package name */
        public CharSequence f421d;
        public Bitmap e;
        public Uri f;
        public Bundle g;
        public Uri h;

        public final MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f418a, this.f419b, this.f420c, this.f421d, this.e, this.f, this.g, this.h);
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = getClass().getClassLoader();
        this.mIcon = (Bitmap) parcel.readParcelable(classLoader);
        this.mIconUri = (Uri) parcel.readParcelable(classLoader);
        this.mExtras = parcel.readBundle(classLoader);
        this.mMediaUri = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
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
        Bundle bundle = null;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            mediaDescriptionCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                a aVar = new a();
                MediaDescription mediaDescription = (MediaDescription) obj;
                aVar.f418a = mediaDescription.getMediaId();
                aVar.f419b = mediaDescription.getTitle();
                aVar.f420c = mediaDescription.getSubtitle();
                aVar.f421d = mediaDescription.getDescription();
                aVar.e = mediaDescription.getIconBitmap();
                aVar.f = mediaDescription.getIconUri();
                Bundle extras = mediaDescription.getExtras();
                bundle = extras;
                if (extras != null) {
                    bundle = MediaSessionCompat.b(extras);
                }
                Uri uri = bundle != null ? (Uri) bundle.getParcelable(DESCRIPTION_KEY_MEDIA_URI) : null;
                if (uri != null && (!bundle.containsKey(DESCRIPTION_KEY_NULL_BUNDLE_FLAG) || bundle.size() != 2)) {
                    bundle.remove(DESCRIPTION_KEY_MEDIA_URI);
                    bundle.remove(DESCRIPTION_KEY_NULL_BUNDLE_FLAG);
                }
                aVar.g = bundle;
                if (uri != null) {
                    aVar.h = uri;
                } else if (Build.VERSION.SDK_INT >= 23) {
                    aVar.h = mediaDescription.getMediaUri();
                }
                mediaDescriptionCompat = aVar.a();
                mediaDescriptionCompat.mDescriptionFwk = mediaDescription;
            }
        }
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final CharSequence getDescription() {
        return this.mDescription;
    }

    public final Bundle getExtras() {
        return this.mExtras;
    }

    public final Bitmap getIconBitmap() {
        return this.mIcon;
    }

    public final Uri getIconUri() {
        return this.mIconUri;
    }

    public final Object getMediaDescription() {
        if (this.mDescriptionFwk != null || Build.VERSION.SDK_INT < 21) {
            return this.mDescriptionFwk;
        }
        MediaDescription.Builder builder = new MediaDescription.Builder();
        builder.setMediaId(this.mMediaId);
        builder.setTitle(this.mTitle);
        builder.setSubtitle(this.mSubtitle);
        builder.setDescription(this.mDescription);
        builder.setIconBitmap(this.mIcon);
        builder.setIconUri(this.mIconUri);
        Bundle bundle = this.mExtras;
        Bundle bundle2 = bundle;
        if (Build.VERSION.SDK_INT < 23) {
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
        if (Build.VERSION.SDK_INT >= 23) {
            builder.setMediaUri(this.mMediaUri);
        }
        MediaDescription build = builder.build();
        this.mDescriptionFwk = build;
        return build;
    }

    public final String getMediaId() {
        return this.mMediaId;
    }

    public final Uri getMediaUri() {
        return this.mMediaUri;
    }

    public final CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.mMediaId);
            TextUtils.writeToParcel(this.mTitle, parcel, i);
            TextUtils.writeToParcel(this.mSubtitle, parcel, i);
            TextUtils.writeToParcel(this.mDescription, parcel, i);
            parcel.writeParcelable(this.mIcon, i);
            parcel.writeParcelable(this.mIconUri, i);
            parcel.writeBundle(this.mExtras);
            parcel.writeParcelable(this.mMediaUri, i);
            return;
        }
        ((MediaDescription) getMediaDescription()).writeToParcel(parcel, i);
    }
}
