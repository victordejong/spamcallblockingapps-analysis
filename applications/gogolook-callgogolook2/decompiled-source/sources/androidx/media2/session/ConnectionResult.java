package androidx.media2.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.IMediaSession;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResult.class */
public class ConnectionResult extends CustomVersionedParcelable {
    public SessionCommandGroup mAllowedCommands;
    public long mBufferedPositionMs;
    public MediaItem mCurrentMediaItem;
    public int mCurrentMediaItemIndex;
    public int mNextMediaItemIndex;
    public MediaItem mParcelableCurrentMediaItem;
    public MediaController.PlaybackInfo mPlaybackInfo;
    public float mPlaybackSpeed;
    public int mPlayerState;
    public ParcelImplListSlice mPlaylistSlice;
    public long mPositionEventTimeMs;
    public long mPositionMs;
    public int mPreviousMediaItemIndex;
    public int mRepeatMode;
    public SessionPlayer.TrackInfo mSelectedAudioTrack;
    public SessionPlayer.TrackInfo mSelectedMetadataTrack;
    public SessionPlayer.TrackInfo mSelectedSubtitleTrack;
    public SessionPlayer.TrackInfo mSelectedVideoTrack;
    public PendingIntent mSessionActivity;
    public IBinder mSessionBinder;
    public IMediaSession mSessionStub;
    public int mShuffleMode;
    public Bundle mTokenExtras;
    public List<SessionPlayer.TrackInfo> mTrackInfos;
    public int mVersion;
    public VideoSize mVideoSize;

    public ConnectionResult() {
    }

    public ConnectionResult(MediaSessionStub mediaSessionStub, MediaSession.MediaSessionImpl mediaSessionImpl, SessionCommandGroup sessionCommandGroup) {
        this.mSessionStub = mediaSessionStub;
        this.mPlayerState = mediaSessionImpl.getPlayerState();
        this.mCurrentMediaItem = mediaSessionImpl.getCurrentMediaItem();
        this.mPositionEventTimeMs = SystemClock.elapsedRealtime();
        this.mPositionMs = mediaSessionImpl.getCurrentPosition();
        this.mPlaybackSpeed = mediaSessionImpl.getPlaybackSpeed();
        this.mBufferedPositionMs = mediaSessionImpl.getBufferedPosition();
        this.mPlaybackInfo = mediaSessionImpl.getPlaybackInfo();
        this.mRepeatMode = mediaSessionImpl.getRepeatMode();
        this.mShuffleMode = mediaSessionImpl.getShuffleMode();
        this.mSessionActivity = mediaSessionImpl.getSessionActivity();
        this.mCurrentMediaItemIndex = mediaSessionImpl.getCurrentMediaItemIndex();
        this.mPreviousMediaItemIndex = mediaSessionImpl.getPreviousMediaItemIndex();
        this.mNextMediaItemIndex = mediaSessionImpl.getNextMediaItemIndex();
        this.mTokenExtras = mediaSessionImpl.getToken().getExtras();
        this.mVideoSize = mediaSessionImpl.getVideoSize();
        this.mTrackInfos = mediaSessionImpl.getTrackInfo();
        this.mSelectedVideoTrack = mediaSessionImpl.getSelectedTrack(1);
        this.mSelectedAudioTrack = mediaSessionImpl.getSelectedTrack(2);
        this.mSelectedSubtitleTrack = mediaSessionImpl.getSelectedTrack(4);
        this.mSelectedMetadataTrack = mediaSessionImpl.getSelectedTrack(5);
        if (sessionCommandGroup == null || !sessionCommandGroup.hasCommand(SessionCommand.COMMAND_CODE_PLAYER_GET_PLAYLIST)) {
            this.mPlaylistSlice = null;
        } else {
            this.mPlaylistSlice = MediaUtils.convertMediaItemListToParcelImplListSlice(mediaSessionImpl.getPlaylist());
        }
        this.mAllowedCommands = sessionCommandGroup;
        this.mVersion = 0;
    }

    public SessionCommandGroup getAllowedCommands() {
        return this.mAllowedCommands;
    }

    public long getBufferedPositionMs() {
        return this.mBufferedPositionMs;
    }

    public MediaItem getCurrentMediaItem() {
        return this.mCurrentMediaItem;
    }

    public int getCurrentMediaItemIndex() {
        return this.mCurrentMediaItemIndex;
    }

    public int getNextMediaItemIndex() {
        return this.mNextMediaItemIndex;
    }

    public MediaController.PlaybackInfo getPlaybackInfo() {
        return this.mPlaybackInfo;
    }

    public float getPlaybackSpeed() {
        return this.mPlaybackSpeed;
    }

    public int getPlayerState() {
        return this.mPlayerState;
    }

    public ParcelImplListSlice getPlaylistSlice() {
        return this.mPlaylistSlice;
    }

    public long getPositionEventTimeMs() {
        return this.mPositionEventTimeMs;
    }

    public long getPositionMs() {
        return this.mPositionMs;
    }

    public int getPreviousMediaItemIndex() {
        return this.mPreviousMediaItemIndex;
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    public SessionPlayer.TrackInfo getSelectedAudioTrack() {
        return this.mSelectedAudioTrack;
    }

    public SessionPlayer.TrackInfo getSelectedMetadataTrack() {
        return this.mSelectedMetadataTrack;
    }

    public SessionPlayer.TrackInfo getSelectedSubtitleTrack() {
        return this.mSelectedSubtitleTrack;
    }

    public SessionPlayer.TrackInfo getSelectedVideoTrack() {
        return this.mSelectedVideoTrack;
    }

    public PendingIntent getSessionActivity() {
        return this.mSessionActivity;
    }

    public IMediaSession getSessionStub() {
        return this.mSessionStub;
    }

    public int getShuffleMode() {
        return this.mShuffleMode;
    }

    public Bundle getTokenExtras() {
        return this.mTokenExtras;
    }

    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        return this.mTrackInfos;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public VideoSize getVideoSize() {
        return this.mVideoSize;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPostParceling() {
        this.mSessionStub = IMediaSession.Stub.asInterface(this.mSessionBinder);
        this.mSessionBinder = null;
        this.mCurrentMediaItem = this.mParcelableCurrentMediaItem;
        this.mParcelableCurrentMediaItem = null;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPreParceling(boolean z) {
        this.mSessionBinder = (IBinder) this.mSessionStub;
        this.mParcelableCurrentMediaItem = MediaUtils.upcastForPreparceling(this.mCurrentMediaItem);
    }
}
