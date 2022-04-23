package androidx.media2.widget;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.common.BaseResult;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommand;
import androidx.media2.session.SessionCommandGroup;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/PlayerWrapper.class */
public class PlayerWrapper {
    public final SessionCommandGroup mAllCommands;
    public SessionCommandGroup mAllowedCommands;
    public boolean mCallbackAttached;
    public final Executor mCallbackExecutor;
    public final MediaController mController;
    public final MediaControllerCallback mControllerCallback;
    public MediaMetadata mMediaMetadata;
    public final SessionPlayer mPlayer;
    public final SessionPlayerCallback mPlayerCallback;
    public int mSavedPlayerState = 0;
    public final PlayerCallback mWrapperCallback;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/PlayerWrapper$MediaControllerCallback.class */
    public class MediaControllerCallback extends MediaController.ControllerCallback {
        public MediaControllerCallback() {
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onAllowedCommandsChanged(@NonNull MediaController mediaController, @NonNull SessionCommandGroup sessionCommandGroup) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            if (playerWrapper.mAllowedCommands != sessionCommandGroup) {
                playerWrapper.mAllowedCommands = sessionCommandGroup;
                playerWrapper.mWrapperCallback.onAllowedCommandsChanged(playerWrapper, sessionCommandGroup);
            }
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onConnected(@NonNull MediaController mediaController, @NonNull SessionCommandGroup sessionCommandGroup) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onConnected(playerWrapper);
            PlayerWrapper.this.updateAndNotifyCachedStates();
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onCurrentMediaItemChanged(@NonNull MediaController mediaController, @Nullable MediaItem mediaItem) {
            PlayerWrapper.this.mMediaMetadata = mediaItem == null ? null : mediaItem.getMetadata();
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onCurrentMediaItemChanged(playerWrapper, mediaItem);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onPlaybackCompleted(@NonNull MediaController mediaController) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaybackCompleted(playerWrapper);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onPlaybackSpeedChanged(@NonNull MediaController mediaController, float f) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaybackSpeedChanged(playerWrapper, f);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onPlayerStateChanged(@NonNull MediaController mediaController, int i) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            if (playerWrapper.mSavedPlayerState != i) {
                playerWrapper.mSavedPlayerState = i;
                playerWrapper.mWrapperCallback.onPlayerStateChanged(playerWrapper, i);
            }
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onPlaylistChanged(@NonNull MediaController mediaController, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaylistChanged(playerWrapper, list, mediaMetadata);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onSeekCompleted(@NonNull MediaController mediaController, long j) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onSeekCompleted(playerWrapper, j);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onSubtitleData(@NonNull MediaController mediaController, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onSubtitleData(playerWrapper, mediaItem, trackInfo, subtitleData);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onTrackDeselected(@NonNull MediaController mediaController, @NonNull SessionPlayer.TrackInfo trackInfo) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackDeselected(playerWrapper, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onTrackInfoChanged(@NonNull MediaController mediaController, @NonNull List<SessionPlayer.TrackInfo> list) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackInfoChanged(playerWrapper, list);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onTrackSelected(@NonNull MediaController mediaController, @NonNull SessionPlayer.TrackInfo trackInfo) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackSelected(playerWrapper, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.ControllerCallback
        public void onVideoSizeChanged(@NonNull MediaController mediaController, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onVideoSizeChanged(playerWrapper, mediaItem, videoSize);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/PlayerWrapper$PlayerCallback.class */
    public static abstract class PlayerCallback {
        public void onAllowedCommandsChanged(@NonNull PlayerWrapper playerWrapper, @NonNull SessionCommandGroup sessionCommandGroup) {
        }

        public void onConnected(@NonNull PlayerWrapper playerWrapper) {
        }

        public void onCurrentMediaItemChanged(@NonNull PlayerWrapper playerWrapper, @Nullable MediaItem mediaItem) {
        }

        public void onPlaybackCompleted(@NonNull PlayerWrapper playerWrapper) {
        }

        public void onPlaybackSpeedChanged(@NonNull PlayerWrapper playerWrapper, float f) {
        }

        public void onPlayerStateChanged(@NonNull PlayerWrapper playerWrapper, int i) {
        }

        public void onPlaylistChanged(@NonNull PlayerWrapper playerWrapper, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
        }

        public void onSeekCompleted(@NonNull PlayerWrapper playerWrapper, long j) {
        }

        public void onSubtitleData(@NonNull PlayerWrapper playerWrapper, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
        }

        public void onTrackDeselected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
        }

        public void onTrackInfoChanged(@NonNull PlayerWrapper playerWrapper, @NonNull List<SessionPlayer.TrackInfo> list) {
        }

        public void onTrackSelected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
        }

        public void onVideoSizeChanged(@NonNull PlayerWrapper playerWrapper, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/PlayerWrapper$SessionPlayerCallback.class */
    public class SessionPlayerCallback extends SessionPlayer.PlayerCallback {
        public SessionPlayerCallback() {
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onCurrentMediaItemChanged(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem) {
            PlayerWrapper.this.mMediaMetadata = mediaItem == null ? null : mediaItem.getMetadata();
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onCurrentMediaItemChanged(playerWrapper, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaybackCompleted(@NonNull SessionPlayer sessionPlayer) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaybackCompleted(playerWrapper);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaybackSpeedChanged(@NonNull SessionPlayer sessionPlayer, float f) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaybackSpeedChanged(playerWrapper, f);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlayerStateChanged(@NonNull SessionPlayer sessionPlayer, int i) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            if (playerWrapper.mSavedPlayerState != i) {
                playerWrapper.mSavedPlayerState = i;
                playerWrapper.mWrapperCallback.onPlayerStateChanged(playerWrapper, i);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaylistChanged(@NonNull SessionPlayer sessionPlayer, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onPlaylistChanged(playerWrapper, list, mediaMetadata);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onSeekCompleted(@NonNull SessionPlayer sessionPlayer, long j) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onSeekCompleted(playerWrapper, j);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onSubtitleData(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onSubtitleData(playerWrapper, mediaItem, trackInfo, subtitleData);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackDeselected(@NonNull SessionPlayer sessionPlayer, @NonNull SessionPlayer.TrackInfo trackInfo) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackDeselected(playerWrapper, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackInfoChanged(@NonNull SessionPlayer sessionPlayer, @NonNull List<SessionPlayer.TrackInfo> list) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackInfoChanged(playerWrapper, list);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackSelected(@NonNull SessionPlayer sessionPlayer, @NonNull SessionPlayer.TrackInfo trackInfo) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onTrackSelected(playerWrapper, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onVideoSizeChangedInternal(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
            PlayerWrapper playerWrapper = PlayerWrapper.this;
            playerWrapper.mWrapperCallback.onVideoSizeChanged(playerWrapper, mediaItem, videoSize);
        }
    }

    public PlayerWrapper(@NonNull SessionPlayer sessionPlayer, @NonNull Executor executor, @NonNull PlayerCallback playerCallback) {
        if (sessionPlayer == null) {
            throw new NullPointerException("player must not be null");
        } else if (executor == null) {
            throw new NullPointerException("executor must not be null");
        } else if (playerCallback != null) {
            this.mPlayer = sessionPlayer;
            this.mCallbackExecutor = executor;
            this.mWrapperCallback = playerCallback;
            this.mPlayerCallback = new SessionPlayerCallback();
            this.mController = null;
            this.mControllerCallback = null;
            this.mAllCommands = new SessionCommandGroup.Builder().addAllPredefinedCommands(1).build();
        } else {
            throw new NullPointerException("callback must not be null");
        }
    }

    public PlayerWrapper(@NonNull MediaController mediaController, @NonNull Executor executor, @NonNull PlayerCallback playerCallback) {
        if (mediaController == null) {
            throw new NullPointerException("controller must not be null");
        } else if (executor == null) {
            throw new NullPointerException("executor must not be null");
        } else if (playerCallback != null) {
            this.mController = mediaController;
            this.mCallbackExecutor = executor;
            this.mWrapperCallback = playerCallback;
            this.mControllerCallback = new MediaControllerCallback();
            this.mPlayer = null;
            this.mPlayerCallback = null;
            this.mAllCommands = null;
        } else {
            throw new NullPointerException("callback must not be null");
        }
    }

    @Nullable
    private SessionCommandGroup getAllowedCommands() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getAllowedCommands();
        }
        if (this.mPlayer != null) {
            return this.mAllCommands;
        }
        return null;
    }

    private float getPlaybackSpeed() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getPlaybackSpeed();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getPlaybackSpeed();
        }
        return 1.0f;
    }

    private void notifyNonCachedStates() {
        this.mWrapperCallback.onPlaybackSpeedChanged(this, getPlaybackSpeed());
        List<SessionPlayer.TrackInfo> trackInfo = getTrackInfo();
        if (trackInfo != null) {
            this.mWrapperCallback.onTrackInfoChanged(this, trackInfo);
        }
        MediaItem currentMediaItem = getCurrentMediaItem();
        if (currentMediaItem != null) {
            this.mWrapperCallback.onVideoSizeChanged(this, currentMediaItem, getVideoSize());
        }
    }

    public void attachCallback() {
        if (!this.mCallbackAttached) {
            MediaController mediaController = this.mController;
            if (mediaController != null) {
                mediaController.registerExtraCallback(this.mCallbackExecutor, this.mControllerCallback);
            } else {
                SessionPlayer sessionPlayer = this.mPlayer;
                if (sessionPlayer != null) {
                    sessionPlayer.registerPlayerCallback(this.mCallbackExecutor, this.mPlayerCallback);
                }
            }
            updateAndNotifyCachedStates();
            this.mCallbackAttached = true;
        }
    }

    public boolean canPause() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(10001);
    }

    public boolean canSeekBackward() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_SESSION_REWIND);
    }

    public boolean canSeekForward() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD);
    }

    public boolean canSeekTo() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO);
    }

    public boolean canSelectDeselectTrack() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_SELECT_TRACK) && this.mAllowedCommands.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_DESELECT_TRACK);
    }

    public boolean canSkipToNext() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM);
    }

    public boolean canSkipToPrevious() {
        SessionCommandGroup sessionCommandGroup = this.mAllowedCommands;
        return sessionCommandGroup != null && sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM);
    }

    public void deselectTrack(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.deselectTrack(trackInfo);
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.deselectTrackInternal(trackInfo);
        }
    }

    public void detachCallback() {
        if (this.mCallbackAttached) {
            MediaController mediaController = this.mController;
            if (mediaController != null) {
                mediaController.unregisterExtraCallback(this.mControllerCallback);
            } else {
                SessionPlayer sessionPlayer = this.mPlayer;
                if (sessionPlayer != null) {
                    sessionPlayer.unregisterPlayerCallback(this.mPlayerCallback);
                }
            }
            this.mCallbackAttached = false;
        }
    }

    public CharSequence getArtistText() {
        MediaMetadata mediaMetadata = this.mMediaMetadata;
        if (mediaMetadata == null || !mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ARTIST)) {
            return null;
        }
        return this.mMediaMetadata.getText(MediaMetadata.METADATA_KEY_ARTIST);
    }

    public long getBufferPercentage() {
        long j;
        long j2 = 0;
        if (this.mSavedPlayerState == 0) {
            return 0L;
        }
        long durationMs = getDurationMs();
        if (durationMs == 0) {
            return 0L;
        }
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            j = mediaController.getBufferedPosition();
        } else {
            SessionPlayer sessionPlayer = this.mPlayer;
            j = sessionPlayer != null ? sessionPlayer.getBufferedPosition() : 0L;
        }
        if (j >= 0) {
            j2 = (j * 100) / durationMs;
        }
        return j2;
    }

    @Nullable
    public MediaItem getCurrentMediaItem() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getCurrentMediaItem();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getCurrentMediaItem();
        }
        return null;
    }

    public int getCurrentMediaItemIndex() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getCurrentMediaItemIndex();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getCurrentMediaItemIndex();
        }
        return -1;
    }

    public long getCurrentPosition() {
        long j = 0;
        if (this.mSavedPlayerState == 0) {
            return 0L;
        }
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            j = mediaController.getCurrentPosition();
        } else {
            SessionPlayer sessionPlayer = this.mPlayer;
            j = sessionPlayer != null ? sessionPlayer.getCurrentPosition() : 0L;
        }
        if (j < 0) {
        }
        return j;
    }

    public long getDurationMs() {
        long j = 0;
        if (this.mSavedPlayerState == 0) {
            return 0L;
        }
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            j = mediaController.getDuration();
        } else {
            SessionPlayer sessionPlayer = this.mPlayer;
            j = sessionPlayer != null ? sessionPlayer.getDuration() : 0L;
        }
        if (j < 0) {
        }
        return j;
    }

    public int getNextMediaItemIndex() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getNextMediaItemIndex();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getNextMediaItemIndex();
        }
        return -1;
    }

    public int getPlayerState() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getPlayerState();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getPlayerState();
        }
        return 0;
    }

    public int getPreviousMediaItemIndex() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getPreviousMediaItemIndex();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getPreviousMediaItemIndex();
        }
        return -1;
    }

    @Nullable
    public SessionPlayer.TrackInfo getSelectedTrack(int i) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getSelectedTrack(i);
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.getSelectedTrackInternal(i);
        }
        return null;
    }

    public CharSequence getTitle() {
        MediaMetadata mediaMetadata = this.mMediaMetadata;
        if (mediaMetadata == null || !mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_TITLE)) {
            return null;
        }
        return this.mMediaMetadata.getText(MediaMetadata.METADATA_KEY_TITLE);
    }

    @NonNull
    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getTrackInfo();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        return sessionPlayer != null ? sessionPlayer.getTrackInfoInternal() : Collections.emptyList();
    }

    @NonNull
    public VideoSize getVideoSize() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.getVideoSize();
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        return sessionPlayer != null ? sessionPlayer.getVideoSizeInternal() : new VideoSize(0, 0);
    }

    public boolean hasDisconnectedController() {
        MediaController mediaController = this.mController;
        return mediaController != null && !mediaController.isConnected();
    }

    public boolean isPlaying() {
        return this.mSavedPlayerState == 2;
    }

    public void pause() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.pause();
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.pause();
        }
    }

    public void play() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.play();
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.play();
        }
    }

    public void seekTo(long j) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.seekTo(j);
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.seekTo(j);
        }
    }

    public void selectTrack(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.selectTrack(trackInfo);
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.selectTrackInternal(trackInfo);
        }
    }

    public void setPlaybackSpeed(float f) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.setPlaybackSpeed(f);
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.setPlaybackSpeed(f);
        }
    }

    public AbstractFutureC9382a<? extends BaseResult> setSurface(Surface surface) {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            return mediaController.setSurface(surface);
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            return sessionPlayer.setSurfaceInternal(surface);
        }
        return null;
    }

    public void skipToNextItem() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.skipToNextPlaylistItem();
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.skipToNextPlaylistItem();
        }
    }

    public void skipToPreviousItem() {
        MediaController mediaController = this.mController;
        if (mediaController != null) {
            mediaController.skipToPreviousPlaylistItem();
            return;
        }
        SessionPlayer sessionPlayer = this.mPlayer;
        if (sessionPlayer != null) {
            sessionPlayer.skipToPreviousPlaylistItem();
        }
    }

    public void updateAndNotifyCachedStates() {
        boolean z;
        int playerState = getPlayerState();
        boolean z2 = true;
        if (this.mSavedPlayerState != playerState) {
            this.mSavedPlayerState = playerState;
            z = true;
        } else {
            z = false;
        }
        SessionCommandGroup allowedCommands = getAllowedCommands();
        if (this.mAllowedCommands != allowedCommands) {
            this.mAllowedCommands = allowedCommands;
        } else {
            z2 = false;
        }
        MediaItem currentMediaItem = getCurrentMediaItem();
        this.mMediaMetadata = currentMediaItem == null ? null : currentMediaItem.getMetadata();
        if (z) {
            this.mWrapperCallback.onPlayerStateChanged(this, playerState);
        }
        if (allowedCommands != null && z2) {
            this.mWrapperCallback.onAllowedCommandsChanged(this, allowedCommands);
        }
        this.mWrapperCallback.onCurrentMediaItemChanged(this, currentMediaItem);
        notifyNonCachedStates();
    }
}
