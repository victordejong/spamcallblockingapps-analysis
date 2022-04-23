package android.support.p001v4.media;

import android.media.MediaDescription;
import android.net.Uri;
/* renamed from: android.support.v4.media.d */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/d.class */
class C0039d {

    /* renamed from: android.support.v4.media.d$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/d$a.class */
    static class C0040a {
        /* renamed from: a */
        public static void m15099a(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    /* renamed from: a */
    public static Uri m15100a(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
