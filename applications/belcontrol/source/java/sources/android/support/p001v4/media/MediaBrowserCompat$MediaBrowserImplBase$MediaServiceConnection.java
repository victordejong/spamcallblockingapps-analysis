package android.support.p001v4.media;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.class */
public class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection implements ServiceConnection {
    public final /* synthetic */ MediaBrowserCompat.MediaBrowserImplBase this$0;

    public MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection(MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase) {
        this.this$0 = mediaBrowserImplBase;
    }

    private void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == this.this$0.mHandler.getLooper().getThread()) {
            runnable.run();
        } else {
            this.this$0.mHandler.post(runnable);
        }
    }

    public boolean isCurrent(String str) {
        int i;
        MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = this.this$0;
        if (mediaBrowserImplBase.mServiceConnection != this || (i = mediaBrowserImplBase.mState) == 0 || i == 1) {
            int i2 = mediaBrowserImplBase.mState;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            Log.i(MediaBrowserCompat.TAG, str + " for " + this.this$0.mServiceComponent + " with mServiceConnection=" + this.this$0.mServiceConnection + " this=" + this);
            return false;
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
        postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = MediaBrowserCompat.DEBUG;
                if (z) {
                    Log.d(MediaBrowserCompat.TAG, "MediaServiceConnection.onServiceConnected name=" + componentName + " binder=" + iBinder);
                    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.dump();
                }
                if (!MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.isCurrent("onServiceConnected")) {
                    return;
                }
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0;
                mediaBrowserImplBase.mServiceBinderWrapper = new MediaBrowserCompat.ServiceBinderWrapper(iBinder, mediaBrowserImplBase.mRootHints);
                MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.mCallbacksMessenger = new Messenger(MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.mHandler);
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0;
                mediaBrowserImplBase2.mHandler.setCallbacksMessenger(mediaBrowserImplBase2.mCallbacksMessenger);
                MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.mState = 2;
                if (z) {
                    try {
                        Log.d(MediaBrowserCompat.TAG, "ServiceCallbacks.onConnect...");
                        MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.dump();
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserCompat.TAG, "RemoteException during connect for " + MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.mServiceComponent);
                        if (!MediaBrowserCompat.DEBUG) {
                            return;
                        }
                        Log.d(MediaBrowserCompat.TAG, "ServiceCallbacks.onConnect...");
                        MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.dump();
                        return;
                    }
                }
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase3 = MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0;
                mediaBrowserImplBase3.mServiceBinderWrapper.connect(mediaBrowserImplBase3.mContext, mediaBrowserImplBase3.mCallbacksMessenger);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(final ComponentName componentName) {
        postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.2
            @Override // java.lang.Runnable
            public void run() {
                if (MediaBrowserCompat.DEBUG) {
                    Log.d(MediaBrowserCompat.TAG, "MediaServiceConnection.onServiceDisconnected name=" + componentName + " this=" + this + " mServiceConnection=" + MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.mServiceConnection);
                    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0.dump();
                }
                if (!MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.isCurrent("onServiceDisconnected")) {
                    return;
                }
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0;
                mediaBrowserImplBase.mServiceBinderWrapper = null;
                mediaBrowserImplBase.mCallbacksMessenger = null;
                mediaBrowserImplBase.mHandler.setCallbacksMessenger(null);
                MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection.this.this$0;
                mediaBrowserImplBase2.mState = 4;
                mediaBrowserImplBase2.mCallback.onConnectionSuspended();
            }
        });
    }
}
