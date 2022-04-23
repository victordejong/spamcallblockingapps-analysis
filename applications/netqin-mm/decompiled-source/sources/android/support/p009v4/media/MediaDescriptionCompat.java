package android.support.p009v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0041a();

    /* renamed from: a */
    public final String f60a;

    /* renamed from: b */
    public final CharSequence f61b;

    /* renamed from: c */
    public final CharSequence f62c;

    /* renamed from: d */
    public final CharSequence f63d;

    /* renamed from: e */
    public final Bitmap f64e;

    /* renamed from: f */
    public final Uri f65f;

    /* renamed from: g */
    public final Bundle f66g;

    /* renamed from: h */
    public final Uri f67h;

    /* renamed from: i */
    public MediaDescription f68i;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    public static final class C0041a implements Parcelable.Creator<MediaDescriptionCompat> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m39288a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$b.class */
    public static final class C0042b {

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
        public C0042b m39285a(Bitmap bitmap) {
            this.f73e = bitmap;
            return this;
        }

        /* renamed from: a */
        public C0042b m39284a(Uri uri) {
            this.f74f = uri;
            return this;
        }

        /* renamed from: a */
        public C0042b m39283a(Bundle bundle) {
            this.f75g = bundle;
            return this;
        }

        /* renamed from: a */
        public C0042b m39282a(CharSequence charSequence) {
            this.f72d = charSequence;
            return this;
        }

        /* renamed from: a */
        public C0042b m39281a(String str) {
            this.f69a = str;
            return this;
        }

        /* renamed from: a */
        public MediaDescriptionCompat m39286a() {
            return new MediaDescriptionCompat(this.f69a, this.f70b, this.f71c, this.f72d, this.f73e, this.f74f, this.f75g, this.f76h);
        }

        /* renamed from: b */
        public C0042b m39280b(Uri uri) {
            this.f76h = uri;
            return this;
        }

        /* renamed from: b */
        public C0042b m39279b(CharSequence charSequence) {
            this.f71c = charSequence;
            return this;
        }

        /* renamed from: c */
        public C0042b m39278c(CharSequence charSequence) {
            this.f70b = charSequence;
            return this;
        }
    }

    public MediaDescriptionCompat(Parcel parcel) {
        this.f60a = parcel.readString();
        this.f61b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f62c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f63d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f64e = (Bitmap) parcel.readParcelable(classLoader);
        this.f65f = (Uri) parcel.readParcelable(classLoader);
        this.f66g = parcel.readBundle(classLoader);
        this.f67h = (Uri) parcel.readParcelable(classLoader);
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f60a = str;
        this.f61b = charSequence;
        this.f62c = charSequence2;
        this.f63d = charSequence3;
        this.f64e = bitmap;
        this.f65f = uri;
        this.f66g = bundle;
        this.f67h = uri2;
    }

    /* renamed from: a */
    public static MediaDescriptionCompat m39288a(Object obj) {
        Uri uri;
        Bundle extras = null;
        MediaDescriptionCompat mediaDescriptionCompat = null;
        if (obj != null) {
            mediaDescriptionCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                C0042b bVar = new C0042b();
                MediaDescription mediaDescription = (MediaDescription) obj;
                bVar.m39281a(mediaDescription.getMediaId());
                bVar.m39278c(mediaDescription.getTitle());
                bVar.m39279b(mediaDescription.getSubtitle());
                bVar.m39282a(mediaDescription.getDescription());
                bVar.m39285a(mediaDescription.getIconBitmap());
                bVar.m39284a(mediaDescription.getIconUri());
                extras = mediaDescription.getExtras();
                if (extras != null) {
                    MediaSessionCompat.m39248a(extras);
                    uri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
                } else {
                    uri = null;
                }
                if (uri != null && (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2)) {
                    extras.remove("android.support.v4.media.description.MEDIA_URI");
                    extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                }
                bVar.m39283a(extras);
                if (uri != null) {
                    bVar.m39280b(uri);
                } else if (Build.VERSION.SDK_INT >= 23) {
                    bVar.m39280b(mediaDescription.getMediaUri());
                }
                mediaDescriptionCompat = bVar.m39286a();
                mediaDescriptionCompat.f68i = mediaDescription;
            }
        }
        return mediaDescriptionCompat;
    }

    /* renamed from: a */
    public Object m39289a() {
        if (this.f68i != null || Build.VERSION.SDK_INT < 21) {
            return this.f68i;
        }
        MediaDescription.Builder builder = new MediaDescription.Builder();
        builder.setMediaId(this.f60a);
        builder.setTitle(this.f61b);
        builder.setSubtitle(this.f62c);
        builder.setDescription(this.f63d);
        builder.setIconBitmap(this.f64e);
        builder.setIconUri(this.f65f);
        Bundle bundle = this.f66g;
        Bundle bundle2 = bundle;
        if (Build.VERSION.SDK_INT < 23) {
            bundle2 = bundle;
            if (this.f67h != null) {
                bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                    bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f67h);
            }
        }
        builder.setExtras(bundle2);
        if (Build.VERSION.SDK_INT >= 23) {
            builder.setMediaUri(this.f67h);
        }
        MediaDescription build = builder.build();
        this.f68i = build;
        return build;
    }

    /* renamed from: b */
    public String m39287b() {
        return this.f60a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f61b) + ", " + ((Object) this.f62c) + ", " + ((Object) this.f63d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f60a);
            TextUtils.writeToParcel(this.f61b, parcel, i);
            TextUtils.writeToParcel(this.f62c, parcel, i);
            TextUtils.writeToParcel(this.f63d, parcel, i);
            parcel.writeParcelable(this.f64e, i);
            parcel.writeParcelable(this.f65f, i);
            parcel.writeBundle(this.f66g);
            parcel.writeParcelable(this.f67h, i);
            return;
        }
        ((MediaDescription) m39289a()).writeToParcel(parcel, i);
    }
}
