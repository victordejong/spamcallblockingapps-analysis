package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.offline.FilteringManifestParser;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.upstream.ParsingLoadable;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/FilteringHlsPlaylistParserFactory.class */
public final class FilteringHlsPlaylistParserFactory implements HlsPlaylistParserFactory {
    public final HlsPlaylistParserFactory hlsPlaylistParserFactory;
    public final List<StreamKey> streamKeys;

    public FilteringHlsPlaylistParserFactory(HlsPlaylistParserFactory hlsPlaylistParserFactory, List<StreamKey> list) {
        this.hlsPlaylistParserFactory = hlsPlaylistParserFactory;
        this.streamKeys = list;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser() {
        return new FilteringManifestParser(this.hlsPlaylistParserFactory.createPlaylistParser(), this.streamKeys);
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParserFactory
    public ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist) {
        return new FilteringManifestParser(this.hlsPlaylistParserFactory.createPlaylistParser(hlsMasterPlaylist), this.streamKeys);
    }
}
