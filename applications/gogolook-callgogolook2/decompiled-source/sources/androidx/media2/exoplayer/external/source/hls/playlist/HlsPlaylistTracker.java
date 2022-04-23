package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.hls.HlsDataSourceFactory;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$Factory.class */
    public interface Factory {
        HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener.class */
    public interface PlaylistEventListener {
        void onPlaylistChanged();

        boolean onPlaylistError(Uri uri, long j);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener.class */
    public interface PrimaryPlaylistListener {
        void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist);
    }

    void addListener(PlaylistEventListener playlistEventListener);

    long getInitialStartTimeUs();

    @Nullable
    HlsMasterPlaylist getMasterPlaylist();

    @Nullable
    HlsMediaPlaylist getPlaylistSnapshot(Uri uri, boolean z);

    boolean isLive();

    boolean isSnapshotValid(Uri uri);

    void maybeThrowPlaylistRefreshError(Uri uri) throws IOException;

    void maybeThrowPrimaryPlaylistRefreshError() throws IOException;

    void refreshPlaylist(Uri uri);

    void removeListener(PlaylistEventListener playlistEventListener);

    void start(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, PrimaryPlaylistListener primaryPlaylistListener);

    void stop();
}
