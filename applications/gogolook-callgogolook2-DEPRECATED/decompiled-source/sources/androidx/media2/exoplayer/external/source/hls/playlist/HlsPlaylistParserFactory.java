package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.ParsingLoadable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistParserFactory.class */
public interface HlsPlaylistParserFactory {
    ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser();

    ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist);
}
