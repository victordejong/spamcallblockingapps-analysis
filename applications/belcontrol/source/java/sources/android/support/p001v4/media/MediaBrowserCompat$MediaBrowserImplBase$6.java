package android.support.p001v4.media;

import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$6 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$6.class */
public class MediaBrowserCompat$MediaBrowserImplBase$6 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplBase this$0;
    public final /* synthetic */ String val$action;
    public final /* synthetic */ MediaBrowserCompat.CustomActionCallback val$callback;
    public final /* synthetic */ Bundle val$extras;

    public MediaBrowserCompat$MediaBrowserImplBase$6(MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase, MediaBrowserCompat.CustomActionCallback customActionCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserImplBase;
        this.val$callback = customActionCallback;
        this.val$action = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$action, this.val$extras, null);
    }
}
