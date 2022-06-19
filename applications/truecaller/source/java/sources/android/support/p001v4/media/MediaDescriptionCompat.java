package android.support.p001v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0005a();

    /* renamed from: a */
    public final String f9a;

    /* renamed from: b */
    public final CharSequence f10b;

    /* renamed from: c */
    public final CharSequence f11c;

    /* renamed from: d */
    public final CharSequence f12d;

    /* renamed from: e */
    public final Bitmap f13e;

    /* renamed from: f */
    public final Uri f14f;

    /* renamed from: g */
    public final Bundle f15g;

    /* renamed from: h */
    public final Uri f16h;

    /* renamed from: i */
    public MediaDescription f17i;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public class C0005a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.m43323a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f9a = str;
        this.f10b = charSequence;
        this.f11c = charSequence2;
        this.f12d = charSequence3;
        this.f13e = bitmap;
        this.f14f = uri;
        this.f15g = bundle;
        this.f16h = uri2;
    }

    /* renamed from: a */
    public static MediaDescriptionCompat m43323a(Object obj) {
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            MediaDescription mediaDescription = (MediaDescription) obj;
            String mediaId = mediaDescription.getMediaId();
            CharSequence title = mediaDescription.getTitle();
            CharSequence subtitle = mediaDescription.getSubtitle();
            CharSequence description = mediaDescription.getDescription();
            Bitmap iconBitmap = mediaDescription.getIconBitmap();
            Uri iconUri = mediaDescription.getIconUri();
            Bundle extras = mediaDescription.getExtras();
            Bundle bundle = extras;
            if (extras != null) {
                bundle = MediaSessionCompat.m43299H1(extras);
            }
            Uri uri = bundle != null ? (Uri) bundle.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
            if (uri != null) {
                if (!bundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || bundle.size() != 2) {
                    bundle.remove("android.support.v4.media.description.MEDIA_URI");
                    bundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                } else {
                    bundle = null;
                }
            }
            if (uri == null) {
                uri = mediaDescription.getMediaUri();
            }
            mediaDescriptionCompat = new MediaDescriptionCompat(mediaId, title, subtitle, description, iconBitmap, iconUri, bundle, uri);
            mediaDescriptionCompat.f17i = mediaDescription;
        }
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f10b) + ", " + ((Object) this.f11c) + ", " + ((Object) this.f12d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        MediaDescription mediaDescription = this.f17i;
        MediaDescription mediaDescription2 = mediaDescription;
        if (mediaDescription == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f9a);
            builder.setTitle(this.f10b);
            builder.setSubtitle(this.f11c);
            builder.setDescription(this.f12d);
            builder.setIconBitmap(this.f13e);
            builder.setIconUri(this.f14f);
            builder.setExtras(this.f15g);
            builder.setMediaUri(this.f16h);
            mediaDescription2 = builder.build();
            this.f17i = mediaDescription2;
        }
        mediaDescription2.writeToParcel(parcel, i);
    }
}
