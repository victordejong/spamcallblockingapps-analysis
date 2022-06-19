package android.support.p001v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002os.ResultReceiver;
/* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
public class MediaBrowserCompat$ItemReceiver extends ResultReceiver {
    @Override // android.support.p001v4.p002os.ResultReceiver
    /* renamed from: a */
    public void mo43176a(int i, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle != null) {
            bundle2 = MediaSessionCompat.m43299H1(bundle);
        }
        if (i != 0 || bundle2 == null || !bundle2.containsKey("media_item")) {
            throw null;
        }
        Parcelable parcelable = bundle2.getParcelable("media_item");
        if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
            throw null;
        }
        MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem) parcelable;
        throw null;
    }
}
