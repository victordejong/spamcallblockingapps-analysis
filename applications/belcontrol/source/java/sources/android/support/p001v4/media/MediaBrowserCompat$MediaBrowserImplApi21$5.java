package android.support.p001v4.media;

import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$5 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5.class */
public class MediaBrowserCompat$MediaBrowserImplApi21$5 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplApi21 this$0;
    public final /* synthetic */ MediaBrowserCompat.SearchCallback val$callback;
    public final /* synthetic */ Bundle val$extras;
    public final /* synthetic */ String val$query;

    public MediaBrowserCompat$MediaBrowserImplApi21$5(MediaBrowserCompat.MediaBrowserImplApi21 mediaBrowserImplApi21, MediaBrowserCompat.SearchCallback searchCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserImplApi21;
        this.val$callback = searchCallback;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$query, this.val$extras);
    }
}
