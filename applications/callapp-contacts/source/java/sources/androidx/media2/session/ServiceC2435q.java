package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import androidx.media.C1329b;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.session.MediaSession;
import java.util.List;
/* renamed from: androidx.media2.session.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/q.class */
class ServiceC2435q extends MediaBrowserServiceCompat {

    /* renamed from: h */
    private final MediaSession.AbstractC2210c f9340h;

    /* renamed from: j */
    final C2217a<C1329b.C1331b> f9341j;

    /* renamed from: k */
    final C1329b f9342k;

    public ServiceC2435q(Context context, MediaSession.AbstractC2210c abstractC2210c, MediaSessionCompat.Token token) {
        m43242a(context);
        onCreate();
        m43241a(token);
        this.f9342k = C1329b.m43217a(context);
        this.f9340h = abstractC2210c;
        this.f9341j = new C2217a<>(abstractC2210c);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public MediaBrowserServiceCompat.C1296a mo40882a(String str, int i, Bundle bundle) {
        C1329b.C1331b a = m43243a();
        MediaSession.C2209b mo40883a = mo40883a(a);
        this.f9340h.mo40925y();
        this.f9340h.mo40924z();
        SessionCommandGroup m41133d = MediaSession.AbstractC2211d.m41133d();
        if (m41133d == null) {
            return null;
        }
        this.f9341j.m41092a(a, mo40883a, m41133d);
        return C2481s.f9443a;
    }

    /* renamed from: a */
    MediaSession.C2209b mo40883a(C1329b.C1331b c1331b) {
        return new MediaSession.C2209b(c1331b, -1, this.f9342k.m43216a(c1331b), null, null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public void mo40881a(String str, MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> c1313i) {
        c1313i.m43228b(null);
    }
}
