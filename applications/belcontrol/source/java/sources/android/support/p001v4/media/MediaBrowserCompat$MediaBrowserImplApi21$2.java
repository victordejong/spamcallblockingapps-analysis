package android.support.p001v4.media;

import android.support.p001v4.media.MediaBrowserCompat;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$2 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$2.class */
public class MediaBrowserCompat$MediaBrowserImplApi21$2 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplApi21 this$0;
    public final /* synthetic */ MediaBrowserCompat.ItemCallback val$cb;
    public final /* synthetic */ String val$mediaId;

    public MediaBrowserCompat$MediaBrowserImplApi21$2(MediaBrowserCompat.MediaBrowserImplApi21 mediaBrowserImplApi21, MediaBrowserCompat.ItemCallback itemCallback, String str) {
        this.this$0 = mediaBrowserImplApi21;
        this.val$cb = itemCallback;
        this.val$mediaId = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$cb.onError(this.val$mediaId);
    }
}
