package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.os.ResultReceiver;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi23$1.class */
class MediaBrowserServiceCompat$ServiceImplApi23$1 extends ResultReceiver {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.os.ResultReceiver
    public final void a(int i, Bundle bundle) {
        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) bundle.getParcelable("media_item");
        if (mediaItem != null) {
            mediaItem.writeToParcel(Parcel.obtain(), 0);
        }
    }
}
