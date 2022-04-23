package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.media2.exoplayer.external.source.hls.e;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.t;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3681a;

        public PlaylistResetException(Uri uri) {
            this.f3681a = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3682a;

        public PlaylistStuckException(Uri uri) {
            this.f3682a = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a.class */
    public interface a {
        HlsPlaylistTracker a(e eVar, t tVar, i iVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b.class */
    public interface b {
        boolean a(Uri uri, long j);

        void g();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c.class */
    public interface c {
        void a(f fVar);
    }

    f a(Uri uri, boolean z);

    void a();

    void a(Uri uri, u.a aVar, c cVar);

    void a(b bVar);

    boolean a(Uri uri);

    e b();

    void b(Uri uri) throws IOException;

    void b(b bVar);

    long c();

    void c(Uri uri);

    void d() throws IOException;

    boolean e();
}
