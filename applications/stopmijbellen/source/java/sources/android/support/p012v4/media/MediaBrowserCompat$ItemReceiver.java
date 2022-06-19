package android.support.p012v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.p012v4.media.session.MediaSessionCompat;
import p014b.C0710b;
/* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
class MediaBrowserCompat$ItemReceiver extends C0710b {
    @Override // p014b.C0710b
    /* renamed from: a */
    public void mo7445a(int i, Bundle bundle) {
        MediaSessionCompat.m8745a(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
            throw null;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
            throw null;
        }
        MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem = (MediaBrowserCompat$MediaItem) parcelable;
        throw null;
    }
}
