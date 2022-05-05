package android.support.p001v4.media.session;

import android.media.session.MediaSession;
import androidx.annotation.RequiresApi;
@RequiresApi
/* renamed from: android.support.v4.media.session.MediaSessionCompatApi22 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompatApi22.class */
class MediaSessionCompatApi22 {
    private MediaSessionCompatApi22() {
    }

    public static void setRatingType(Object obj, int i) {
        ((MediaSession) obj).setRatingType(i);
    }
}
