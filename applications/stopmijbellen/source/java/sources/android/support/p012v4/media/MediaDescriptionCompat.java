package android.support.p012v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0078a();

    /* renamed from: a */
    public final String f168a;

    /* renamed from: b */
    public final CharSequence f169b;

    /* renamed from: c */
    public final CharSequence f170c;

    /* renamed from: d */
    public final CharSequence f171d;

    /* renamed from: e */
    public final Bitmap f172e;

    /* renamed from: f */
    public final Uri f173f;

    /* renamed from: g */
    public final Bundle f174g;

    /* renamed from: h */
    public final Uri f175h;

    /* renamed from: i */
    public Object f176i;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class C0078a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.m8770a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f168a = str;
        this.f169b = charSequence;
        this.f170c = charSequence2;
        this.f171d = charSequence3;
        this.f172e = bitmap;
        this.f173f = uri;
        this.f174g = bundle;
        this.f175h = uri2;
    }

    /* renamed from: a */
    public static MediaDescriptionCompat m8770a(Object obj) {
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            int i = Build.VERSION.SDK_INT;
            MediaDescription mediaDescription = (MediaDescription) obj;
            String mediaId = mediaDescription.getMediaId();
            CharSequence title = mediaDescription.getTitle();
            CharSequence subtitle = mediaDescription.getSubtitle();
            CharSequence description = mediaDescription.getDescription();
            Bitmap iconBitmap = mediaDescription.getIconBitmap();
            Uri iconUri = mediaDescription.getIconUri();
            Bundle extras = mediaDescription.getExtras();
            if (extras != null) {
                MediaSessionCompat.m8745a(extras);
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
            if (uri == null) {
                uri = null;
                if (i >= 23) {
                    uri = mediaDescription.getMediaUri();
                }
            }
            mediaDescriptionCompat = new MediaDescriptionCompat(mediaId, title, subtitle, description, iconBitmap, iconUri, extras, uri);
            mediaDescriptionCompat.f176i = obj;
        }
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f169b) + ", " + ((Object) this.f170c) + ", " + ((Object) this.f171d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = Build.VERSION.SDK_INT;
        Object obj = this.f176i;
        MediaDescription mediaDescription = obj;
        if (obj == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f168a);
            builder.setTitle(this.f169b);
            builder.setSubtitle(this.f170c);
            builder.setDescription(this.f171d);
            builder.setIconBitmap(this.f172e);
            builder.setIconUri(this.f173f);
            Bundle bundle = this.f174g;
            Bundle bundle2 = bundle;
            if (i2 < 23) {
                bundle2 = bundle;
                if (this.f175h != null) {
                    bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                        bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                    }
                    bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f175h);
                }
            }
            builder.setExtras(bundle2);
            if (i2 >= 23) {
                builder.setMediaUri(this.f175h);
            }
            mediaDescription = builder.build();
            this.f176i = mediaDescription;
        }
        ((MediaDescription) mediaDescription).writeToParcel(parcel, i);
    }
}
