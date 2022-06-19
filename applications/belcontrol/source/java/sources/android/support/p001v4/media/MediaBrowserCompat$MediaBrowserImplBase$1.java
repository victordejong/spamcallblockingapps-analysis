package android.support.p001v4.media;

import android.content.Intent;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$1 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1.class */
public class MediaBrowserCompat$MediaBrowserImplBase$1 implements Runnable {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplBase this$0;

    public MediaBrowserCompat$MediaBrowserImplBase$1(MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase) {
        this.this$0 = mediaBrowserImplBase;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = this.this$0;
        if (mediaBrowserImplBase.mState == 0) {
            return;
        }
        mediaBrowserImplBase.mState = 2;
        if (MediaBrowserCompat.DEBUG && mediaBrowserImplBase.mServiceConnection != null) {
            throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.this$0.mServiceConnection);
        } else if (mediaBrowserImplBase.mServiceBinderWrapper != null) {
            throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.this$0.mServiceBinderWrapper);
        } else if (mediaBrowserImplBase.mCallbacksMessenger != null) {
            throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.this$0.mCallbacksMessenger);
        } else {
            Intent intent = new Intent("android.media.browse.MediaBrowserService");
            intent.setComponent(this.this$0.mServiceComponent);
            MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = this.this$0;
            mediaBrowserImplBase2.mServiceConnection = new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection(mediaBrowserImplBase2);
            try {
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase3 = this.this$0;
                z = mediaBrowserImplBase3.mContext.bindService(intent, mediaBrowserImplBase3.mServiceConnection, 1);
            } catch (Exception e) {
                Log.e(MediaBrowserCompat.TAG, "Failed binding to service " + this.this$0.mServiceComponent);
                z = false;
            }
            if (!z) {
                this.this$0.forceCloseConnection();
                this.this$0.mCallback.onConnectionFailed();
            }
            if (!MediaBrowserCompat.DEBUG) {
                return;
            }
            Log.d(MediaBrowserCompat.TAG, "connect...");
            this.this$0.dump();
        }
    }
}
