package android.support.p003v4.media;

import android.media.MediaDescription;
import android.net.Uri;
/* renamed from: android.support.v4.media.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/b.class */
class C0038b {

    /* renamed from: android.support.v4.media.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/b$a.class */
    static class C0039a {
        /* renamed from: a */
        public static void m35858a(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    /* renamed from: a */
    public static Uri m35859a(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
