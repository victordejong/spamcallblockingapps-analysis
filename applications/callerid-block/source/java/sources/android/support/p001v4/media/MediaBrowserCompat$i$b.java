package android.support.p001v4.media;

import android.os.Messenger;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$i$b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$b.class */
class MediaBrowserCompat$i$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MediaBrowserCompat.i f51b;

    MediaBrowserCompat$i$b(MediaBrowserCompat.i iVar) {
        this.f51b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserCompat.i iVar = this.f51b;
        Messenger messenger = iVar.j;
        if (messenger != null) {
            try {
                iVar.i.m15163c(messenger);
            } catch (RemoteException e) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.f51b.b);
            }
        }
        MediaBrowserCompat.i iVar2 = this.f51b;
        int i = iVar2.g;
        iVar2.b();
        if (i != 0) {
            this.f51b.g = i;
        }
        if (MediaBrowserCompat.f35b) {
            Log.d("MediaBrowserCompat", "disconnect...");
            this.f51b.a();
        }
    }
}
