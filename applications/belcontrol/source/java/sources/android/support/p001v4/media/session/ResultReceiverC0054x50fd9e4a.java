package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.p001v4.media.session.IMediaSession;
import android.support.p001v4.media.session.MediaControllerCompat;
import java.lang.ref.WeakReference;
/* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
public class ResultReceiverC0054x50fd9e4a extends ResultReceiver {
    private WeakReference<MediaControllerCompat.MediaControllerImplApi21> mMediaControllerImpl;

    public ResultReceiverC0054x50fd9e4a(MediaControllerCompat.MediaControllerImplApi21 mediaControllerImplApi21) {
        super(null);
        this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        MediaControllerCompat.MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
        if (mediaControllerImplApi21 == null || bundle == null) {
            return;
        }
        synchronized (mediaControllerImplApi21.mLock) {
            mediaControllerImplApi21.mSessionToken.setExtraBinder(IMediaSession.Stub.asInterface(v7.a(bundle, MediaSessionCompat.KEY_EXTRA_BINDER)));
            mediaControllerImplApi21.mSessionToken.setSession2Token(c40.m5454b(bundle, MediaSessionCompat.KEY_SESSION2_TOKEN));
            mediaControllerImplApi21.processPendingCallbacksLocked();
        }
    }
}
