package android.support.p001v4.media;

import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$5 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5.class */
public class MediaBrowserCompat$MediaBrowserImplBase$5 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplBase this$0;
    public final /* synthetic */ MediaBrowserCompat.SearchCallback val$callback;
    public final /* synthetic */ Bundle val$extras;
    public final /* synthetic */ String val$query;

    public MediaBrowserCompat$MediaBrowserImplBase$5(MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase, MediaBrowserCompat.SearchCallback searchCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserImplBase;
        this.val$callback = searchCallback;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$query, this.val$extras);
    }
}
