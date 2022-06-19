package android.support.p001v4.media;

import android.os.Messenger;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$2 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2.class */
public class MediaBrowserCompat$MediaBrowserImplBase$2 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplBase this$0;

    public MediaBrowserCompat$MediaBrowserImplBase$2(MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase) {
        this.this$0 = mediaBrowserImplBase;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = this.this$0;
        Messenger messenger = mediaBrowserImplBase.mCallbacksMessenger;
        if (messenger != null) {
            try {
                mediaBrowserImplBase.mServiceBinderWrapper.disconnect(messenger);
            } catch (RemoteException e) {
                Log.w(MediaBrowserCompat.TAG, "RemoteException during connect for " + this.this$0.mServiceComponent);
            }
        }
        MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = this.this$0;
        int i = mediaBrowserImplBase2.mState;
        mediaBrowserImplBase2.forceCloseConnection();
        if (i != 0) {
            this.this$0.mState = i;
        }
        if (MediaBrowserCompat.DEBUG) {
            Log.d(MediaBrowserCompat.TAG, "disconnect...");
            this.this$0.dump();
        }
    }
}
