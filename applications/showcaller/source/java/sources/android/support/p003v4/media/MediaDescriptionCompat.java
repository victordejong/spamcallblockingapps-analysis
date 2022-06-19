package android.support.p003v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p003v4.media.C0036a;
import android.support.p003v4.media.C0038b;
import android.text.TextUtils;
/* renamed from: android.support.v4.media.MediaDescriptionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat.class */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new C0032a();

    /* renamed from: d */
    private final String f54d;

    /* renamed from: e */
    private final CharSequence f55e;

    /* renamed from: f */
    private final CharSequence f56f;

    /* renamed from: g */
    private final CharSequence f57g;

    /* renamed from: h */
    private final Bitmap f58h;

    /* renamed from: i */
    private final Uri f59i;

    /* renamed from: j */
    private final Bundle f60j;

    /* renamed from: k */
    private final Uri f61k;

    /* renamed from: l */
    private Object f62l;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$a.class */
    static final class C0032a implements Parcelable.Creator<MediaDescriptionCompat> {
        C0032a() {
        }

        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m35896a(C0036a.m35877a(parcel));
        }

        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompat$b.class */
    public static final class C0033b {

        /* renamed from: a */
        private String f63a;

        /* renamed from: b */
        private CharSequence f64b;

        /* renamed from: c */
        private CharSequence f65c;

        /* renamed from: d */
        private CharSequence f66d;

        /* renamed from: e */
        private Bitmap f67e;

        /* renamed from: f */
        private Uri f68f;

        /* renamed from: g */
        private Bundle f69g;

        /* renamed from: h */
        private Uri f70h;

        /* renamed from: a */
        public MediaDescriptionCompat m35891a() {
            return new MediaDescriptionCompat(this.f63a, this.f64b, this.f65c, this.f66d, this.f67e, this.f68f, this.f69g, this.f70h);
        }

        /* renamed from: b */
        public C0033b m35890b(CharSequence charSequence) {
            this.f66d = charSequence;
            return this;
        }

        /* renamed from: c */
        public C0033b m35889c(Bundle bundle) {
            this.f69g = bundle;
            return this;
        }

        /* renamed from: d */
        public C0033b m35888d(Bitmap bitmap) {
            this.f67e = bitmap;
            return this;
        }

        /* renamed from: e */
        public C0033b m35887e(Uri uri) {
            this.f68f = uri;
            return this;
        }

        /* renamed from: f */
        public C0033b m35886f(String str) {
            this.f63a = str;
            return this;
        }

        /* renamed from: g */
        public C0033b m35885g(Uri uri) {
            this.f70h = uri;
            return this;
        }

        /* renamed from: h */
        public C0033b m35884h(CharSequence charSequence) {
            this.f65c = charSequence;
            return this;
        }

        /* renamed from: i */
        public C0033b m35883i(CharSequence charSequence) {
            this.f64b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f54d = parcel.readString();
        this.f55e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f56f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f57g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f58h = (Bitmap) parcel.readParcelable(classLoader);
        this.f59i = (Uri) parcel.readParcelable(classLoader);
        this.f60j = parcel.readBundle(classLoader);
        this.f61k = (Uri) parcel.readParcelable(classLoader);
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f54d = str;
        this.f55e = charSequence;
        this.f56f = charSequence2;
        this.f57g = charSequence3;
        this.f58h = bitmap;
        this.f59i = uri;
        this.f60j = bundle;
        this.f61k = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.p003v4.media.MediaDescriptionCompat m35896a(java.lang.Object r3) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p003v4.media.MediaDescriptionCompat.m35896a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    /* renamed from: b */
    public Object m35895b() {
        Object obj = this.f62l;
        Object obj2 = obj;
        if (obj == null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 21) {
                obj2 = obj;
            } else {
                Object m35867b = C0036a.C0037a.m35867b();
                C0036a.C0037a.m35862g(m35867b, this.f54d);
                C0036a.C0037a.m35860i(m35867b, this.f55e);
                C0036a.C0037a.m35861h(m35867b, this.f56f);
                C0036a.C0037a.m35866c(m35867b, this.f57g);
                C0036a.C0037a.m35864e(m35867b, this.f58h);
                C0036a.C0037a.m35863f(m35867b, this.f59i);
                Bundle bundle = this.f60j;
                Bundle bundle2 = bundle;
                if (i < 23) {
                    bundle2 = bundle;
                    if (this.f61k != null) {
                        bundle2 = bundle;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                            bundle2.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                        }
                        bundle2.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f61k);
                    }
                }
                C0036a.C0037a.m35865d(m35867b, bundle2);
                if (i >= 23) {
                    C0038b.C0039a.m35858a(m35867b, this.f61k);
                }
                obj2 = C0036a.C0037a.m35868a(m35867b);
                this.f62l = obj2;
            }
        }
        return obj2;
    }

    /* renamed from: c */
    public String m35894c() {
        return this.f54d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f55e) + ", " + ((Object) this.f56f) + ", " + ((Object) this.f57g);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0036a.m35869i(m35895b(), parcel, i);
            return;
        }
        parcel.writeString(this.f54d);
        TextUtils.writeToParcel(this.f55e, parcel, i);
        TextUtils.writeToParcel(this.f56f, parcel, i);
        TextUtils.writeToParcel(this.f57g, parcel, i);
        parcel.writeParcelable(this.f58h, i);
        parcel.writeParcelable(this.f59i, i);
        parcel.writeBundle(this.f60j);
        parcel.writeParcelable(this.f61k, i);
    }
}
