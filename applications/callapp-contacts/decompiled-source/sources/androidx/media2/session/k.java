package androidx.media2.session;

import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/k.class */
final class k {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$a.class */
    interface a {
        com.google.common.util.concurrent.a<SessionPlayer.b> a();

        com.google.common.util.concurrent.a<SessionPlayer.b> a(float f);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(long j);

        com.google.common.util.concurrent.a<SessionPlayer.b> b();

        com.google.common.util.concurrent.a<SessionPlayer.b> c();

        int d();

        long e();

        long f();

        int g();

        float h();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$b.class */
    interface b extends a, c {
        SessionPlayer.TrackInfo a(int i);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(Surface surface);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer.TrackInfo trackInfo);

        com.google.common.util.concurrent.a<SessionPlayer.b> b(SessionPlayer.TrackInfo trackInfo);

        VideoSize i();

        List<SessionPlayer.TrackInfo> j();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$c.class */
    interface c {
        com.google.common.util.concurrent.a<SessionPlayer.b> a(int i, int i2);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(int i, MediaItem mediaItem);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaMetadata mediaMetadata);

        com.google.common.util.concurrent.a<SessionPlayer.b> a(List<MediaItem> list, MediaMetadata mediaMetadata);

        com.google.common.util.concurrent.a<SessionPlayer.b> b(int i);

        com.google.common.util.concurrent.a<SessionPlayer.b> c(int i);

        com.google.common.util.concurrent.a<SessionPlayer.b> d(int i);

        com.google.common.util.concurrent.a<SessionPlayer.b> e(int i);

        List<MediaItem> k();

        MediaMetadata l();

        MediaItem m();

        int n();

        int o();

        int p();

        com.google.common.util.concurrent.a<SessionPlayer.b> q();

        com.google.common.util.concurrent.a<SessionPlayer.b> r();

        int s();

        int t();
    }

    private k() {
    }
}
