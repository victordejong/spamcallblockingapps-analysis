package androidx.media2.session;

import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import java.util.List;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaInterface.class */
public class MediaInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaInterface$SessionPlaybackControl.class */
    public interface SessionPlaybackControl {
        long getBufferedPosition();

        int getBufferingState();

        long getCurrentPosition();

        long getDuration();

        float getPlaybackSpeed();

        int getPlayerState();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> pause();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> play();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> prepare();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> seekTo(long j);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaybackSpeed(float f);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaInterface$SessionPlayer.class */
    public interface SessionPlayer extends SessionPlaybackControl, SessionPlaylistControl {
        AbstractFutureC9382a<SessionPlayer.PlayerResult> deselectTrack(SessionPlayer.TrackInfo trackInfo);

        SessionPlayer.TrackInfo getSelectedTrack(int i);

        List<SessionPlayer.TrackInfo> getTrackInfo();

        VideoSize getVideoSize();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> selectTrack(SessionPlayer.TrackInfo trackInfo);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setSurface(Surface surface);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaInterface$SessionPlaylistControl.class */
    public interface SessionPlaylistControl {
        AbstractFutureC9382a<SessionPlayer.PlayerResult> addPlaylistItem(int i, MediaItem mediaItem);

        MediaItem getCurrentMediaItem();

        int getCurrentMediaItemIndex();

        int getNextMediaItemIndex();

        List<MediaItem> getPlaylist();

        MediaMetadata getPlaylistMetadata();

        int getPreviousMediaItemIndex();

        int getRepeatMode();

        int getShuffleMode();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> removePlaylistItem(int i);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> replacePlaylistItem(int i, MediaItem mediaItem);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setMediaItem(MediaItem mediaItem);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaylist(List<MediaItem> list, MediaMetadata mediaMetadata);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setRepeatMode(int i);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> setShuffleMode(int i);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToNextItem();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPlaylistItem(int i);

        AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPreviousItem();

        AbstractFutureC9382a<SessionPlayer.PlayerResult> updatePlaylistMetadata(MediaMetadata mediaMetadata);
    }
}
