package android.support.p001v4.media.session;

import android.media.RemoteControlClient;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18$1 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1.class */
public class MediaSessionCompat$MediaSessionImplApi18$1 implements RemoteControlClient.OnPlaybackPositionUpdateListener {
    public final /* synthetic */ MediaSessionCompat.MediaSessionImplApi18 this$0;

    public MediaSessionCompat$MediaSessionImplApi18$1(MediaSessionCompat.MediaSessionImplApi18 mediaSessionImplApi18) {
        this.this$0 = mediaSessionImplApi18;
    }

    @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
    public void onPlaybackPositionUpdate(long j) {
        this.this$0.postToHandler(18, -1, -1, Long.valueOf(j), (Bundle) null);
    }
}
