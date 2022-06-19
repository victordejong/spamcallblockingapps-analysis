package android.support.p001v4.media.session;

import android.media.Rating;
import android.media.RemoteControlClient;
import android.os.Bundle;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi19$1 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1.class */
public class MediaSessionCompat$MediaSessionImplApi19$1 implements RemoteControlClient.OnMetadataUpdateListener {
    public final /* synthetic */ MediaSessionCompat.MediaSessionImplApi19 this$0;

    public MediaSessionCompat$MediaSessionImplApi19$1(MediaSessionCompat.MediaSessionImplApi19 mediaSessionImplApi19) {
        this.this$0 = mediaSessionImplApi19;
    }

    @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
    public void onMetadataUpdate(int i, Object obj) {
        if (i != 268435457 || !(obj instanceof Rating)) {
            return;
        }
        this.this$0.postToHandler(19, -1, -1, RatingCompat.fromRating(obj), (Bundle) null);
    }
}
