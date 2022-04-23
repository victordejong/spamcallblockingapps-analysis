package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.b;
import androidx.media2.session.MediaSession;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/q.class */
class q extends MediaBrowserServiceCompat {
    private final MediaSession.c h;
    final a<b.C0073b> j;
    final b k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, MediaSession.c cVar, MediaSessionCompat.Token token) {
        a(context);
        onCreate();
        a(token);
        this.k = b.a(context);
        this.h = cVar;
        this.j = new a<>(cVar);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public MediaBrowserServiceCompat.a a(String str, int i, Bundle bundle) {
        b.C0073b a2 = a();
        MediaSession.b a3 = a(a2);
        this.h.y();
        this.h.z();
        SessionCommandGroup d2 = MediaSession.d.d();
        if (d2 == null) {
            return null;
        }
        this.j.a(a2, a3, d2);
        return s.f5097a;
    }

    MediaSession.b a(b.C0073b bVar) {
        return new MediaSession.b(bVar, -1, this.k.a(bVar), null, null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public void a(String str, MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> iVar) {
        iVar.b(null);
    }
}
