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
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m22430a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        /* renamed from: a */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };

    /* renamed from: a */
    private final String f79a;

    /* renamed from: b */
    private final CharSequence f80b;

    /* renamed from: c */
    private final CharSequence f81c;

    /* renamed from: d */
    private final CharSequence f82d;

    /* renamed from: e */
    private final Bitmap f83e;

    /* renamed from: f */
    private final Uri f84f;

    /* renamed from: g */
    private final Bundle f85g;

    /* renamed from: h */
    private final Uri f86h;

    /* renamed from: i */
    private MediaDescription f87i;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class C0040a {

        /* renamed from: a */
        private String f88a;

        /* renamed from: b */
        private CharSequence f89b;

        /* renamed from: c */
        private CharSequence f90c;

        /* renamed from: d */
        private CharSequence f91d;

        /* renamed from: e */
        private Bitmap f92e;

        /* renamed from: f */
        private Uri f93f;

        /* renamed from: g */
        private Bundle f94g;

        /* renamed from: h */
        private Uri f95h;

        /* renamed from: a */
        public C0040a m22426a(Bitmap bitmap) {
            this.f92e = bitmap;
            return this;
        }

        /* renamed from: a */
        public C0040a m22425a(Uri uri) {
            this.f93f = uri;
            return this;
        }

        /* renamed from: a */
        public C0040a m22424a(Bundle bundle) {
            this.f94g = bundle;
            return this;
        }

        /* renamed from: a */
        public C0040a m22423a(CharSequence charSequence) {
            this.f89b = charSequence;
            return this;
        }

        /* renamed from: a */
        public C0040a m22422a(String str) {
            this.f88a = str;
            return this;
        }

        /* renamed from: a */
        public MediaDescriptionCompat m22427a() {
            return new MediaDescriptionCompat(this.f88a, this.f89b, this.f90c, this.f91d, this.f92e, this.f93f, this.f94g, this.f95h);
        }

        /* renamed from: b */
        public C0040a m22421b(Uri uri) {
            this.f95h = uri;
            return this;
        }

        /* renamed from: b */
        public C0040a m22420b(CharSequence charSequence) {
            this.f90c = charSequence;
            return this;
        }

        /* renamed from: c */
        public C0040a m22419c(CharSequence charSequence) {
            this.f91d = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f79a = parcel.readString();
        this.f80b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f81c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f82d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = getClass().getClassLoader();
        this.f83e = (Bitmap) parcel.readParcelable(classLoader);
        this.f84f = (Uri) parcel.readParcelable(classLoader);
        this.f85g = parcel.readBundle(classLoader);
        this.f86h = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f79a = str;
        this.f80b = charSequence;
        this.f81c = charSequence2;
        this.f82d = charSequence3;
        this.f83e = bitmap;
        this.f84f = uri;
        this.f85g = bundle;
        this.f86h = uri2;
    }

    /* renamed from: a */
    public static MediaDescriptionCompat m22430a(Object obj) {
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            mediaDescriptionCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                C0040a c0040a = new C0040a();
                MediaDescription mediaDescription = (MediaDescription) obj;
                c0040a.m22422a(mediaDescription.getMediaId());
                c0040a.m22423a(mediaDescription.getTitle());
                c0040a.m22420b(mediaDescription.getSubtitle());
                c0040a.m22419c(mediaDescription.getDescription());
                c0040a.m22426a(mediaDescription.getIconBitmap());
                c0040a.m22425a(mediaDescription.getIconUri());
                Bundle extras = mediaDescription.getExtras();
                if (extras != null) {
                    MediaSessionCompat.m22399a(extras);
                    uri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
                } else {
                    uri = null;
                }
                if (uri != null) {
                    if (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2) {
                        extras.remove("android.support.v4.media.description.MEDIA_URI");
                        extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                    } else {
                        extras = null;
                    }
                }
                c0040a.m22424a(extras);
                if (uri != null) {
                    c0040a.m22421b(uri);
                } else if (Build.VERSION.SDK_INT >= 23) {
                    c0040a.m22421b(mediaDescription.getMediaUri());
                }
                mediaDescriptionCompat = c0040a.m22427a();
                mediaDescriptionCompat.f87i = mediaDescription;
            }
        }
        return mediaDescriptionCompat;
    }

    /* renamed from: a */
    public Object m22431a() {
        MediaDescription mediaDescription;
        if (this.f87i != null || Build.VERSION.SDK_INT < 21) {
            mediaDescription = this.f87i;
        } else {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f79a);
            builder.setTitle(this.f80b);
            builder.setSubtitle(this.f81c);
            builder.setDescription(this.f82d);
            builder.setIconBitmap(this.f83e);
            builder.setIconUri(this.f84f);
            Bundle bundle = this.f85g;
            Bundle bundle2 = bundle;
            if (Build.VERSION.SDK_INT < 23) {
                bundle2 = bundle;
                if (this.f86h != null) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                        bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                    }
                    bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f86h);
                }
            }
            builder.setExtras(bundle2);
            if (Build.VERSION.SDK_INT >= 23) {
                builder.setMediaUri(this.f86h);
            }
            this.f87i = builder.build();
            mediaDescription = this.f87i;
        }
        return mediaDescription;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f80b) + ", " + ((Object) this.f81c) + ", " + ((Object) this.f82d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            ((MediaDescription) m22431a()).writeToParcel(parcel, i);
            return;
        }
        parcel.writeString(this.f79a);
        TextUtils.writeToParcel(this.f80b, parcel, i);
        TextUtils.writeToParcel(this.f81c, parcel, i);
        TextUtils.writeToParcel(this.f82d, parcel, i);
        parcel.writeParcelable(this.f83e, i);
        parcel.writeParcelable(this.f84f, i);
        parcel.writeBundle(this.f85g);
        parcel.writeParcelable(this.f86h, i);
    }
}
