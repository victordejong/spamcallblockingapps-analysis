package android.support.p001v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
/* renamed from: android.support.v4.media.c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/c.class */
class C0037c {

    /* renamed from: android.support.v4.media.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/c$a.class */
    static class C0038a {
        /* renamed from: a */
        public static Object m15109a(Object obj) {
            return ((MediaDescription.Builder) obj).build();
        }

        /* renamed from: b */
        public static Object m15108b() {
            return new MediaDescription.Builder();
        }

        /* renamed from: c */
        public static void m15107c(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setDescription(charSequence);
        }

        /* renamed from: d */
        public static void m15106d(Object obj, Bundle bundle) {
            ((MediaDescription.Builder) obj).setExtras(bundle);
        }

        /* renamed from: e */
        public static void m15105e(Object obj, Bitmap bitmap) {
            ((MediaDescription.Builder) obj).setIconBitmap(bitmap);
        }

        /* renamed from: f */
        public static void m15104f(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setIconUri(uri);
        }

        /* renamed from: g */
        public static void m15103g(Object obj, String str) {
            ((MediaDescription.Builder) obj).setMediaId(str);
        }

        /* renamed from: h */
        public static void m15102h(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setSubtitle(charSequence);
        }

        /* renamed from: i */
        public static void m15101i(Object obj, CharSequence charSequence) {
            ((MediaDescription.Builder) obj).setTitle(charSequence);
        }
    }

    /* renamed from: a */
    public static Object m15118a(Parcel parcel) {
        return MediaDescription.CREATOR.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static CharSequence m15117b(Object obj) {
        return ((MediaDescription) obj).getDescription();
    }

    /* renamed from: c */
    public static Bundle m15116c(Object obj) {
        return ((MediaDescription) obj).getExtras();
    }

    /* renamed from: d */
    public static Bitmap m15115d(Object obj) {
        return ((MediaDescription) obj).getIconBitmap();
    }

    /* renamed from: e */
    public static Uri m15114e(Object obj) {
        return ((MediaDescription) obj).getIconUri();
    }

    /* renamed from: f */
    public static String m15113f(Object obj) {
        return ((MediaDescription) obj).getMediaId();
    }

    /* renamed from: g */
    public static CharSequence m15112g(Object obj) {
        return ((MediaDescription) obj).getSubtitle();
    }

    /* renamed from: h */
    public static CharSequence m15111h(Object obj) {
        return ((MediaDescription) obj).getTitle();
    }

    /* renamed from: i */
    public static void m15110i(Object obj, Parcel parcel, int i) {
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
