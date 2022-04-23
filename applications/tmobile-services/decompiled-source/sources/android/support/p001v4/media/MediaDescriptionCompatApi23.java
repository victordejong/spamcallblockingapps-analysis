package android.support.p001v4.media;

import android.media.MediaDescription;
import android.net.Uri;
import androidx.annotation.RequiresApi;
@RequiresApi
/* renamed from: android.support.v4.media.MediaDescriptionCompatApi23 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompatApi23.class */
class MediaDescriptionCompatApi23 {

    /* renamed from: android.support.v4.media.MediaDescriptionCompatApi23$Builder */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaDescriptionCompatApi23$Builder.class */
    static class Builder {
        private Builder() {
        }

        public static void setMediaUri(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    private MediaDescriptionCompatApi23() {
    }

    public static Uri getMediaUri(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
