package android.support.p001v4.media;

import android.content.Intent;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$i$a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$a.class */
class MediaBrowserCompat$i$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MediaBrowserCompat.i f50b;

    MediaBrowserCompat$i$a(MediaBrowserCompat.i iVar) {
        this.f50b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserCompat.i iVar = this.f50b;
        if (iVar.g != 0) {
            iVar.g = 2;
            if (MediaBrowserCompat.f35b && iVar.h != null) {
                throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.f50b.h);
            } else if (iVar.i != null) {
                throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.f50b.i);
            } else if (iVar.j == null) {
                Intent intent = new Intent("android.media.browse.MediaBrowserService");
                intent.setComponent(this.f50b.b);
                MediaBrowserCompat.i iVar2 = this.f50b;
                MediaBrowserCompat$i$c mediaBrowserCompat$i$c = new MediaBrowserCompat$i$c(iVar2);
                iVar2.h = mediaBrowserCompat$i$c;
                boolean z = false;
                try {
                    z = iVar2.a.bindService(intent, mediaBrowserCompat$i$c, 1);
                } catch (Exception e) {
                    Log.e("MediaBrowserCompat", "Failed binding to service " + this.f50b.b);
                }
                if (!z) {
                    this.f50b.b();
                    this.f50b.c.m15184b();
                }
                if (MediaBrowserCompat.f35b) {
                    Log.d("MediaBrowserCompat", "connect...");
                    this.f50b.a();
                }
            } else {
                throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.f50b.j);
            }
        }
    }
}
