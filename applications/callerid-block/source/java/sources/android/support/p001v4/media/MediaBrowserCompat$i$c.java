package android.support.p001v4.media;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.MediaBrowserCompat$i$c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c.class */
public class MediaBrowserCompat$i$c implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserCompat.i f52a;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i$c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c$a.class */
    class RunnableC0024a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ComponentName f53b;

        /* renamed from: c */
        final /* synthetic */ IBinder f54c;

        RunnableC0024a(ComponentName componentName, IBinder iBinder) {
            MediaBrowserCompat$i$c.this = r4;
            this.f53b = componentName;
            this.f54c = iBinder;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = MediaBrowserCompat.f35b;
            if (z) {
                Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.f53b + " binder=" + this.f54c);
                MediaBrowserCompat$i$c.this.f52a.a();
            }
            if (!MediaBrowserCompat$i$c.this.m15192a("onServiceConnected")) {
                return;
            }
            MediaBrowserCompat.i iVar = MediaBrowserCompat$i$c.this.f52a;
            iVar.i = new MediaBrowserCompat.C0021l(this.f54c, iVar.d);
            MediaBrowserCompat$i$c.this.f52a.j = new Messenger(MediaBrowserCompat$i$c.this.f52a.e);
            MediaBrowserCompat.i iVar2 = MediaBrowserCompat$i$c.this.f52a;
            iVar2.e.m15186a(iVar2.j);
            MediaBrowserCompat$i$c.this.f52a.g = 2;
            if (z) {
                try {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat$i$c.this.f52a.a();
                } catch (RemoteException e) {
                    Log.w("MediaBrowserCompat", "RemoteException during connect for " + MediaBrowserCompat$i$c.this.f52a.b);
                    if (!MediaBrowserCompat.f35b) {
                        return;
                    }
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat$i$c.this.f52a.a();
                    return;
                }
            }
            MediaBrowserCompat.i iVar3 = MediaBrowserCompat$i$c.this.f52a;
            iVar3.i.m15164b(iVar3.a, iVar3.j);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i$c$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c$b.class */
    class RunnableC0025b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ComponentName f56b;

        RunnableC0025b(ComponentName componentName) {
            MediaBrowserCompat$i$c.this = r4;
            this.f56b = componentName;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MediaBrowserCompat.f35b) {
                Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.f56b + " this=" + this + " mServiceConnection=" + MediaBrowserCompat$i$c.this.f52a.h);
                MediaBrowserCompat$i$c.this.f52a.a();
            }
            if (!MediaBrowserCompat$i$c.this.m15192a("onServiceDisconnected")) {
                return;
            }
            MediaBrowserCompat.i iVar = MediaBrowserCompat$i$c.this.f52a;
            iVar.i = null;
            iVar.j = null;
            iVar.e.m15186a(null);
            MediaBrowserCompat.i iVar2 = MediaBrowserCompat$i$c.this.f52a;
            iVar2.g = 4;
            iVar2.c.m15183c();
        }
    }

    public MediaBrowserCompat$i$c(MediaBrowserCompat.i iVar) {
        this.f52a = iVar;
    }

    /* renamed from: b */
    private void m15191b(Runnable runnable) {
        if (Thread.currentThread() == this.f52a.e.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f52a.e.post(runnable);
        }
    }

    /* renamed from: a */
    boolean m15192a(String str) {
        int i;
        MediaBrowserCompat.i iVar = this.f52a;
        if (iVar.h != this || (i = iVar.g) == 0 || i == 1) {
            int i2 = iVar.g;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            Log.i("MediaBrowserCompat", str + " for " + this.f52a.b + " with mServiceConnection=" + this.f52a.h + " this=" + this);
            return false;
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        m15191b(new RunnableC0024a(componentName, iBinder));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        m15191b(new RunnableC0025b(componentName));
    }
}
