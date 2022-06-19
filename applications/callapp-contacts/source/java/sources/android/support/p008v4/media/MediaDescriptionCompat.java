package android.support.p008v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
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

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class C0045a {

        /* renamed from: a */
        public String f69a;

        /* renamed from: b */
        public CharSequence f70b;

        /* renamed from: c */
        public CharSequence f71c;

        /* renamed from: d */
        public CharSequence f72d;

        /* renamed from: e */
        public Bitmap f73e;

        /* renamed from: f */
        public Uri f74f;

        /* renamed from: g */
        public Bundle f75g;

        /* renamed from: h */
        public Uri f76h;

        /* renamed from: a */
        public final MediaDescriptionCompat m46576a() {
            return new MediaDescriptionCompat(this.f69a, this.f70b, this.f71c, this.f72d, this.f73e, this.f74f, this.f75g, this.f76h);
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
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            mediaDescriptionCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                C0045a c0045a = new C0045a();
                MediaDescription mediaDescription = (MediaDescription) obj;
                c0045a.f69a = mediaDescription.getMediaId();
                c0045a.f70b = mediaDescription.getTitle();
                c0045a.f71c = mediaDescription.getSubtitle();
                c0045a.f72d = mediaDescription.getDescription();
                c0045a.f73e = mediaDescription.getIconBitmap();
                c0045a.f74f = mediaDescription.getIconUri();
                Bundle extras = mediaDescription.getExtras();
                Bundle bundle = extras;
                if (extras != null) {
                    bundle = MediaSessionCompat.m46527b(extras);
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
                c0045a.f75g = bundle;
                if (uri != null) {
                    c0045a.f76h = uri;
                } else if (Build.VERSION.SDK_INT >= 23) {
                    c0045a.f76h = mediaDescription.getMediaUri();
                }
                mediaDescriptionCompat = c0045a.m46576a();
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
