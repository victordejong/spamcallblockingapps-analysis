package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.media2.exoplayer.external.source.hls.HlsDataSourceFactory;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/DefaultHlsPlaylistTracker$$Lambda$0.class */
public final /* synthetic */ class DefaultHlsPlaylistTracker$$Lambda$0 implements HlsPlaylistTracker.Factory {
    public static final HlsPlaylistTracker.Factory $instance = new DefaultHlsPlaylistTracker$$Lambda$0();

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.Factory
    public HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
        return new DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory);
    }
}
