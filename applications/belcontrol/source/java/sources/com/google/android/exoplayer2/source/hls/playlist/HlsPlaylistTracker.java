package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener.class */
    public interface PlaylistEventListener {
        void onPlaylistChanged();

        boolean onPlaylistError(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {
        public final String url;

        public PlaylistResetException(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {
        public final String url;

        public PlaylistStuckException(String str) {
            this.url = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener.class */
    public interface PrimaryPlaylistListener {
        void onPrimaryPlaylistRefreshed(HlsMediaPlaylist hlsMediaPlaylist);
    }

    void addListener(PlaylistEventListener playlistEventListener);

    long getInitialStartTimeUs();

    HlsMasterPlaylist getMasterPlaylist();

    HlsMediaPlaylist getPlaylistSnapshot(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl);

    boolean isLive();

    boolean isSnapshotValid(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl);

    void maybeThrowPlaylistRefreshError(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl);

    void maybeThrowPrimaryPlaylistRefreshError();

    void refreshPlaylist(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl);

    void removeListener(PlaylistEventListener playlistEventListener);

    void start(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, PrimaryPlaylistListener primaryPlaylistListener);

    void stop();
}
