package android.support.p003v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
/* renamed from: android.support.v4.media.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/a.class */
class C0036a {

    /* renamed from: android.support.v4.media.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$a.class */
    static class C0037a {
        /* renamed from: a */
        public static Object m35868a(Object obj) {
            return ((MediaDescription.Builder) obj).build();
        }

        /* renamed from: b */
        public static Object m35867b() {
            return new MediaDescription.Builder();
        }

        /* renamed from: c */
        public static void m35866c(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setDescription(charSequence);
        }

        /* renamed from: d */
        public static void m35865d(Object obj, Bundle bundle) {
            ((MediaDescription.Builder) obj).setExtras(bundle);
        }

        /* renamed from: e */
        public static void m35864e(Object obj, Bitmap bitmap) {
            ((MediaDescription.Builder) obj).setIconBitmap(bitmap);
        }

        /* renamed from: f */
        public static void m35863f(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setIconUri(uri);
        }

        /* renamed from: g */
        public static void m35862g(Object obj, String str) {
            ((MediaDescription.Builder) obj).setMediaId(str);
        }

        /* renamed from: h */
        public static void m35861h(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setSubtitle(charSequence);
        }

        /* renamed from: i */
        public static void m35860i(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setTitle(charSequence);
        }
    }

    /* renamed from: a */
    public static Object m35877a(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static CharSequence m35876b(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    /* renamed from: c */
    public static Bundle m35875c(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    /* renamed from: d */
    public static Bitmap m35874d(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    /* renamed from: e */
    public static Uri m35873e(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    /* renamed from: f */
    public static String m35872f(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    /* renamed from: g */
    public static CharSequence m35871g(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    /* renamed from: h */
    public static CharSequence m35870h(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    /* renamed from: i */
    public static void m35869i(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
