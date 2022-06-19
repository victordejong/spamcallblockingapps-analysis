package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.source.hls.AbstractC1790e;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {

        /* renamed from: a */
        public final Uri f7191a;

        public PlaylistResetException(Uri uri) {
            this.f7191a = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {

        /* renamed from: a */
        public final Uri f7192a;

        public PlaylistStuckException(Uri uri) {
            this.f7192a = uri;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a.class */
    public interface AbstractC1805a {
        /* renamed from: a */
        HlsPlaylistTracker mo42150a(AbstractC1790e abstractC1790e, AbstractC1986t abstractC1986t, AbstractC1821i abstractC1821i);
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b.class */
    public interface AbstractC1806b {
        /* renamed from: a */
        boolean mo42185a(Uri uri, long j);

        /* renamed from: g */
        void mo42184g();
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c.class */
    public interface AbstractC1807c {
        /* renamed from: a */
        void mo42183a(C1816f c1816f);
    }

    /* renamed from: a */
    C1816f mo42179a(Uri uri, boolean z);

    /* renamed from: a */
    void mo42182a();

    /* renamed from: a */
    void mo42180a(Uri uri, AbstractC1845u.C1846a c1846a, AbstractC1807c abstractC1807c);

    /* renamed from: a */
    void mo42178a(AbstractC1806b abstractC1806b);

    /* renamed from: a */
    boolean mo42181a(Uri uri);

    /* renamed from: b */
    C1813e mo42172b();

    /* renamed from: b */
    void mo42171b(Uri uri) throws IOException;

    /* renamed from: b */
    void mo42170b(AbstractC1806b abstractC1806b);

    /* renamed from: c */
    long mo42168c();

    /* renamed from: c */
    void mo42167c(Uri uri);

    /* renamed from: d */
    void mo42165d() throws IOException;

    /* renamed from: e */
    boolean mo42163e();
}
