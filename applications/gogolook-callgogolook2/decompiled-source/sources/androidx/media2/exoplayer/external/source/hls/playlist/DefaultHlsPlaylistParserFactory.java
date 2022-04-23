package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.ParsingLoadable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistParserFactory.class */
public final class DefaultHlsPlaylistParserFactory implements HlsPlaylistParserFactory {
    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser() {
        return new HlsPlaylistParser();
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist) {
        return new HlsPlaylistParser(hlsMasterPlaylist);
    }
}
