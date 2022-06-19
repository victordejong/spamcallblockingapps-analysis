package android.support.p001v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.C0037c;
import android.support.p001v4.media.C0039d;
import android.text.TextUtils;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0026a();

    /* renamed from: b */
    private final String f58b;

    /* renamed from: c */
    private final CharSequence f59c;

    /* renamed from: d */
    private final CharSequence f60d;

    /* renamed from: e */
    private final CharSequence f61e;

    /* renamed from: f */
    private final Bitmap f62f;

    /* renamed from: g */
    private final Uri f63g;

    /* renamed from: h */
    private final Bundle f64h;

    /* renamed from: i */
    private final Uri f65i;

    /* renamed from: j */
    private Object f66j;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    static final class C0026a implements Parcelable.Creator<MediaDescriptionCompat> {
        C0026a() {
        }

        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m15152a(C0037c.m15118a(parcel));
        }

        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$b.class */
    public static final class C0027b {

        /* renamed from: a */
        private String f67a;

        /* renamed from: b */
        private CharSequence f68b;

        /* renamed from: c */
        private CharSequence f69c;

        /* renamed from: d */
        private CharSequence f70d;

        /* renamed from: e */
        private Bitmap f71e;

        /* renamed from: f */
        private Uri f72f;

        /* renamed from: g */
        private Bundle f73g;

        /* renamed from: h */
        private Uri f74h;

        /* renamed from: a */
        public MediaDescriptionCompat m15147a() {
            return new MediaDescriptionCompat(this.f67a, this.f68b, this.f69c, this.f70d, this.f71e, this.f72f, this.f73g, this.f74h);
        }

        /* renamed from: b */
        public C0027b m15146b(CharSequence charSequence) {
            this.f70d = charSequence;
            return this;
        }

        /* renamed from: c */
        public C0027b m15145c(Bundle bundle) {
            this.f73g = bundle;
            return this;
        }

        /* renamed from: d */
        public C0027b m15144d(Bitmap bitmap) {
            this.f71e = bitmap;
            return this;
        }

        /* renamed from: e */
        public C0027b m15143e(Uri uri) {
            this.f72f = uri;
            return this;
        }

        /* renamed from: f */
        public C0027b m15142f(String str) {
            this.f67a = str;
            return this;
        }

        /* renamed from: g */
        public C0027b m15141g(Uri uri) {
            this.f74h = uri;
            return this;
        }

        /* renamed from: h */
        public C0027b m15140h(CharSequence charSequence) {
            this.f69c = charSequence;
            return this;
        }

        /* renamed from: i */
        public C0027b m15139i(CharSequence charSequence) {
            this.f68b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f58b = parcel.readString();
        this.f59c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f60d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f61e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f62f = (Bitmap) parcel.readParcelable(classLoader);
        this.f63g = (Uri) parcel.readParcelable(classLoader);
        this.f64h = parcel.readBundle(classLoader);
        this.f65i = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f58b = str;
        this.f59c = charSequence;
        this.f60d = charSequence2;
        this.f61e = charSequence3;
        this.f62f = bitmap;
        this.f63g = uri;
        this.f64h = bundle;
        this.f65i = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.p001v4.media.MediaDescriptionCompat m15152a(java.lang.Object r3) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.MediaDescriptionCompat.m15152a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    /* renamed from: b */
    public Object m15151b() {
        Object obj = this.f66j;
        Object obj2 = obj;
        if (obj == null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                obj2 = obj;
            } else {
                Object m15108b = C0037c.C0038a.m15108b();
                C0037c.C0038a.m15103g(m15108b, this.f58b);
                C0037c.C0038a.m15101i(m15108b, this.f59c);
                C0037c.C0038a.m15102h(m15108b, this.f60d);
                C0037c.C0038a.m15107c(m15108b, this.f61e);
                C0037c.C0038a.m15105e(m15108b, this.f62f);
                C0037c.C0038a.m15104f(m15108b, this.f63g);
                Bundle bundle = this.f64h;
                Bundle bundle2 = bundle;
                if (i < 23) {
                    bundle2 = bundle;
                    if (this.f65i != null) {
                        bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                            bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                        }
                        bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f65i);
                    }
                }
                C0037c.C0038a.m15106d(m15108b, bundle2);
                if (i >= 23) {
                    C0039d.C0040a.m15099a(m15108b, this.f65i);
                }
                obj2 = C0037c.C0038a.m15109a(m15108b);
                this.f66j = obj2;
            }
        }
        return obj2;
    }

    /* renamed from: c */
    public String m15150c() {
        return this.f58b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f59c) + ", " + ((Object) this.f60d) + ", " + ((Object) this.f61e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0037c.m15110i(m15151b(), parcel, i);
            return;
        }
        parcel.writeString(this.f58b);
        TextUtils.writeToParcel(this.f59c, parcel, i);
        TextUtils.writeToParcel(this.f60d, parcel, i);
        TextUtils.writeToParcel(this.f61e, parcel, i);
        parcel.writeParcelable(this.f62f, i);
        parcel.writeParcelable(this.f63g, i);
        parcel.writeBundle(this.f64h);
        parcel.writeParcelable(this.f65i, i);
    }
}
