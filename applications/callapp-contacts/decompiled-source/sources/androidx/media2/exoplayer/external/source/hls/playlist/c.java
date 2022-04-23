package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.source.hls.e;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.t;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/c.class */
final /* synthetic */ class c implements HlsPlaylistTracker.a {

    /* renamed from: a  reason: collision with root package name */
    static final HlsPlaylistTracker.a f3691a = new c();

    private c() {
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.a
    public final HlsPlaylistTracker a(e eVar, t tVar, i iVar) {
        return new b(eVar, tVar, iVar);
    }
}
