package androidx.media2.session;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionLegacyStub.class */
public class MediaSessionLegacyStub extends MediaSessionCompat.Callback {
    public final ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> mConnectedControllersManager;
    public final Context mContext;
    public final MediaSession.MediaSessionImpl mSessionImpl;
    public final MediaSessionManager mSessionManager;
    public static final String TAG = "MediaSessionLegacyStub";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final SparseArray<SessionCommand> sCommandsForOnCommandRequest = new SparseArray<>();
    public final Object mLock = new Object();
    public final MediaSession.ControllerInfo mControllerInfoForAll = new MediaSession.ControllerInfo(new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, Process.myPid(), Process.myUid()), false, new ControllerLegacyCbForAll(), null);

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCb.class */
    public final class ControllerLegacyCb extends MediaSession.ControllerCb {
        public final MediaSessionManager.RemoteUserInfo mRemoteUserInfo;

        public ControllerLegacyCb(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.mRemoteUserInfo = remoteUserInfo;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != ControllerLegacyCb.class) {
                return false;
            }
            return ObjectsCompat.equals(this.mRemoteUserInfo, ((ControllerLegacyCb) obj).mRemoteUserInfo);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.mRemoteUserInfo);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onAllowedCommandsChanged(int i, SessionCommandGroup sessionCommandGroup) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onBufferingStateChanged(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onChildrenChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onCurrentMediaItemChanged(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onDisconnected(int i) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onLibraryResult(int i, LibraryResult libraryResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackCompleted(int i) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackInfoChanged(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackSpeedChanged(int i, long j, long j2, float f) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerResult(int i, SessionPlayer.PlayerResult playerResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerStateChanged(int i, long j, long j2, int i2) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistChanged(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistMetadataChanged(int i, MediaMetadata mediaMetadata) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onRepeatModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSearchResultChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSeekCompleted(int i, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSessionResult(int i, SessionResult sessionResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onShuffleModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSubtitleData(int i, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackDeselected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackInfoChanged(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackSelected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onVideoSizeChanged(int i, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void sendCustomCommand(int i, SessionCommand sessionCommand, Bundle bundle) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void setCustomLayout(int i, List<MediaSession.CommandButton> list) throws RemoteException {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionLegacyStub$ControllerLegacyCbForAll.class */
    public final class ControllerLegacyCbForAll extends MediaSession.ControllerCb {
        public ControllerLegacyCbForAll() {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onAllowedCommandsChanged(int i, SessionCommandGroup sessionCommandGroup) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onBufferingStateChanged(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setPlaybackState(MediaSessionLegacyStub.this.mSessionImpl.createPlaybackStateCompat());
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onChildrenChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onCurrentMediaItemChanged(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setMetadata(mediaItem == null ? null : MediaUtils.convertToMediaMetadataCompat(mediaItem.getMetadata()));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onDisconnected(int i) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onLibraryResult(int i, LibraryResult libraryResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackCompleted(int i) throws RemoteException {
            PlaybackStateCompat createPlaybackStateCompat = MediaSessionLegacyStub.this.mSessionImpl.createPlaybackStateCompat();
            PlaybackStateCompat playbackStateCompat = createPlaybackStateCompat;
            if (createPlaybackStateCompat.getState() != 2) {
                PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder(createPlaybackStateCompat);
                builder.setState(2, createPlaybackStateCompat.getPosition(), createPlaybackStateCompat.getPlaybackSpeed());
                playbackStateCompat = builder.build();
            }
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setPlaybackState(playbackStateCompat);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackInfoChanged(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackSpeedChanged(int i, long j, long j2, float f) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setPlaybackState(MediaSessionLegacyStub.this.mSessionImpl.createPlaybackStateCompat());
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerResult(int i, SessionPlayer.PlayerResult playerResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerStateChanged(int i, long j, long j2, int i2) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setPlaybackState(MediaSessionLegacyStub.this.mSessionImpl.createPlaybackStateCompat());
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistChanged(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            if (Build.VERSION.SDK_INT >= 21) {
                MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setQueue(MediaUtils.convertToQueueItemList(list));
            } else if (list == null) {
                MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setQueue(null);
            } else {
                List<MediaSessionCompat.QueueItem> truncateListBySize = MediaUtils.truncateListBySize(MediaUtils.convertToQueueItemList(list), 262144);
                if (truncateListBySize.size() != list.size()) {
                    String str = "Sending " + truncateListBySize.size() + " items out of " + list.size();
                }
                MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setQueue(truncateListBySize);
            }
            onPlaylistMetadataChanged(i, mediaMetadata);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistMetadataChanged(int i, MediaMetadata mediaMetadata) throws RemoteException {
            CharSequence charSequence;
            CharSequence queueTitle = MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().getController().getQueueTitle();
            if (mediaMetadata != null) {
                CharSequence text = mediaMetadata.getText(MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
                charSequence = text;
                if (text == null) {
                    charSequence = mediaMetadata.getText(MediaMetadata.METADATA_KEY_TITLE);
                }
            } else {
                charSequence = null;
            }
            if (!TextUtils.equals(queueTitle, charSequence)) {
                MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setQueueTitle(charSequence);
            }
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onRepeatModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setRepeatMode(i2);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSearchResultChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSeekCompleted(int i, long j, long j2, long j3) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setPlaybackState(MediaSessionLegacyStub.this.mSessionImpl.createPlaybackStateCompat());
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSessionResult(int i, SessionResult sessionResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onShuffleModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            MediaSessionLegacyStub.this.mSessionImpl.getSessionCompat().setShuffleMode(i2);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSubtitleData(int i, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackDeselected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackInfoChanged(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackSelected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onVideoSizeChanged(int i, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void sendCustomCommand(int i, SessionCommand sessionCommand, Bundle bundle) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void setCustomLayout(int i, List<MediaSession.CommandButton> list) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionLegacyStub$SessionTask.class */
    public interface SessionTask {
        void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException;
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.Builder().addAllPlayerCommands(1, false).addAllVolumeCommands(1).build().getCommands()) {
            sCommandsForOnCommandRequest.append(sessionCommand.getCommandCode(), sessionCommand);
        }
    }

    public MediaSessionLegacyStub(MediaSession.MediaSessionImpl mediaSessionImpl) {
        this.mSessionImpl = mediaSessionImpl;
        this.mContext = this.mSessionImpl.getContext();
        this.mSessionManager = MediaSessionManager.getSessionManager(this.mContext);
        this.mConnectedControllersManager = new ConnectedControllersManager<>(mediaSessionImpl);
    }

    private void dispatchSessionTask(int i, @NonNull SessionTask sessionTask) {
        dispatchSessionTaskInternal(null, i, sessionTask);
    }

    private void dispatchSessionTask(@NonNull SessionCommand sessionCommand, @NonNull SessionTask sessionTask) {
        dispatchSessionTaskInternal(sessionCommand, 0, sessionTask);
    }

    private void dispatchSessionTaskInternal(@Nullable final SessionCommand sessionCommand, final int i, @NonNull final SessionTask sessionTask) {
        if (!this.mSessionImpl.isClosed()) {
            final MediaSessionManager.RemoteUserInfo currentControllerInfo = this.mSessionImpl.getSessionCompat().getCurrentControllerInfo();
            if (currentControllerInfo == null) {
                String str = "RemoteUserInfo is null, ignoring command=" + sessionCommand + ", commandCode=" + i;
                return;
            }
            this.mSessionImpl.getCallbackExecutor().execute(new Runnable() { // from class: androidx.media2.session.MediaSessionLegacyStub.25
                @Override // java.lang.Runnable
                public void run() {
                    if (!MediaSessionLegacyStub.this.mSessionImpl.isClosed()) {
                        MediaSession.ControllerInfo controller = MediaSessionLegacyStub.this.mConnectedControllersManager.getController(currentControllerInfo);
                        if (controller == null) {
                            MediaSessionManager.RemoteUserInfo remoteUserInfo = currentControllerInfo;
                            controller = new MediaSession.ControllerInfo(remoteUserInfo, MediaSessionLegacyStub.this.mSessionManager.isTrustedForMediaControl(remoteUserInfo), new ControllerLegacyCb(currentControllerInfo), null);
                        }
                        if (!MediaSessionLegacyStub.this.mConnectedControllersManager.isConnected(controller)) {
                            SessionCommandGroup onConnect = MediaSessionLegacyStub.this.mSessionImpl.getCallback().onConnect(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controller);
                            if (onConnect == null) {
                                try {
                                    controller.getControllerCb().onDisconnected(0);
                                    return;
                                } catch (RemoteException e) {
                                    return;
                                }
                            } else {
                                MediaSessionLegacyStub.this.mConnectedControllersManager.addController(controller.getRemoteUserInfo(), controller, onConnect);
                            }
                        }
                        MediaSessionLegacyStub.this.handleTaskOnExecutor(controller, sessionCommand, i, sessionTask);
                    }
                }
            });
        }
    }

    public ConnectedControllersManager getConnectedControllersManager() {
        return this.mConnectedControllersManager;
    }

    public MediaSession.ControllerInfo getControllersForAll() {
        return this.mControllerInfoForAll;
    }

    public void handleTaskOnExecutor(@NonNull MediaSession.ControllerInfo controllerInfo, @Nullable SessionCommand sessionCommand, int i, @NonNull SessionTask sessionTask) {
        SessionCommand sessionCommand2;
        if (sessionCommand != null) {
            if (this.mConnectedControllersManager.isAllowedCommand(controllerInfo, sessionCommand)) {
                sessionCommand2 = sCommandsForOnCommandRequest.get(sessionCommand.getCommandCode());
            } else {
                return;
            }
        } else if (this.mConnectedControllersManager.isAllowedCommand(controllerInfo, i)) {
            sessionCommand2 = sCommandsForOnCommandRequest.get(i);
        } else {
            return;
        }
        if (sessionCommand2 == null || this.mSessionImpl.getCallback().onCommandRequest(this.mSessionImpl.getInstance(), controllerInfo, sessionCommand2) == 0) {
            try {
                sessionTask.run(controllerInfo);
            } catch (RemoteException e) {
                String str = "Exception in " + controllerInfo;
            }
        } else if (DEBUG) {
            String str2 = "Command (" + sessionCommand2 + ") from " + controllerInfo + " was rejected by " + this.mSessionImpl;
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        onAddQueueItem(mediaDescriptionCompat, Integer.MAX_VALUE);
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onAddQueueItem(final MediaDescriptionCompat mediaDescriptionCompat, final int i) {
        if (mediaDescriptionCompat != null) {
            dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_ADD_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.22
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    String mediaId = mediaDescriptionCompat.getMediaId();
                    if (!TextUtils.isEmpty(mediaId)) {
                        MediaSessionLegacyStub.this.mSessionImpl.addPlaylistItem(i, MediaSessionLegacyStub.this.mSessionImpl.getCallback().onCreateMediaItem(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, mediaId));
                    }
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onCommand(String str, final Bundle bundle, final ResultReceiver resultReceiver) {
        if (str != null) {
            final SessionCommand sessionCommand = new SessionCommand(str, null);
            dispatchSessionTask(sessionCommand, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.1
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    SessionResult onCustomCommand = MediaSessionLegacyStub.this.mSessionImpl.getCallback().onCustomCommand(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, sessionCommand, bundle);
                    ResultReceiver resultReceiver2 = resultReceiver;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(onCustomCommand.getResultCode(), onCustomCommand.getCustomCommandResult());
                    }
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onCustomAction(@NonNull String str, @Nullable Bundle bundle) {
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onFastForward() {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.17
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onFastForward(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPause() {
        dispatchSessionTask(10001, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.10
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.pause();
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPlay() {
        dispatchSessionTask(10000, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.6
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.play();
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPlayFromMediaId(final String str, final Bundle bundle) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.7
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    String str2 = "onPlayFromMediaId(): Ignoring empty mediaId from " + controllerInfo;
                    return;
                }
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPlayFromMediaId(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPlayFromSearch(final String str, final Bundle bundle) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_SEARCH, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.8
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    String str2 = "onPlayFromSearch(): Ignoring empty query from " + controllerInfo;
                    return;
                }
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPlayFromSearch(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPlayFromUri(final Uri uri, final Bundle bundle) {
        if (uri != null) {
            dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_URI, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.9
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPlayFromUri(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, uri, bundle);
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPrepare() {
        dispatchSessionTask(10002, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.2
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.prepare();
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPrepareFromMediaId(final String str, final Bundle bundle) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.3
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    String str2 = "onPrepareFromMediaId(): Ignoring empty mediaId from " + controllerInfo;
                    return;
                }
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPrepareFromMediaId(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPrepareFromSearch(final String str, final Bundle bundle) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.4
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    String str2 = "onPrepareFromSearch(): Ignoring empty query from " + controllerInfo;
                    return;
                }
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPrepareFromSearch(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onPrepareFromUri(final Uri uri, final Bundle bundle) {
        if (uri != null) {
            dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_URI, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.5
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    MediaSessionLegacyStub.this.mSessionImpl.getCallback().onPrepareFromUri(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, uri, bundle);
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onRemoveQueueItem(final MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat != null) {
            dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.23
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    String mediaId = mediaDescriptionCompat.getMediaId();
                    if (!TextUtils.isEmpty(mediaId)) {
                        List<MediaItem> playlist = MediaSessionLegacyStub.this.mSessionImpl.getPlaylist();
                        for (int i = 0; i < playlist.size(); i++) {
                            if (TextUtils.equals(playlist.get(i).getMediaId(), mediaId)) {
                                MediaSessionLegacyStub.this.mSessionImpl.removePlaylistItem(i);
                                return;
                            }
                        }
                    }
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onRemoveQueueItemAt(final int i) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.24
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                int i2 = i;
                if (i2 >= 0) {
                    MediaSessionLegacyStub.this.mSessionImpl.removePlaylistItem(i2);
                }
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onRewind() {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_REWIND, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.18
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.getCallback().onRewind(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSeekTo(final long j) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.12
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.seekTo(j);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetCaptioningEnabled(boolean z) {
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetPlaybackSpeed(final float f) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_SPEED, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.15
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.setPlaybackSpeed(f);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetRating(RatingCompat ratingCompat) {
        onSetRating(ratingCompat, null);
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetRating(final RatingCompat ratingCompat, Bundle bundle) {
        if (ratingCompat != null) {
            dispatchSessionTask(SessionCommand.COMMAND_CODE_SESSION_SET_RATING, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.19
                @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                    MediaItem currentMediaItem = MediaSessionLegacyStub.this.mSessionImpl.getCurrentMediaItem();
                    if (currentMediaItem != null) {
                        MediaSessionLegacyStub.this.mSessionImpl.getCallback().onSetRating(MediaSessionLegacyStub.this.mSessionImpl.getInstance(), controllerInfo, currentMediaItem.getMediaId(), MediaUtils.convertToRating(ratingCompat));
                    }
                }
            });
        }
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetRepeatMode(final int i) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_REPEAT_MODE, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.20
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.setRepeatMode(i);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSetShuffleMode(final int i) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_SHUFFLE_MODE, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.21
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.setShuffleMode(i);
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSkipToNext() {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.13
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.skipToNextItem();
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSkipToPrevious() {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.14
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.mSessionImpl.skipToPreviousItem();
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onSkipToQueueItem(final long j) {
        dispatchSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PLAYLIST_ITEM, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.16
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                if (MediaSessionLegacyStub.this.mSessionImpl.getPlayer().getPlaylist() != null) {
                    MediaSessionLegacyStub.this.mSessionImpl.skipToPlaylistItem((int) j);
                }
            }
        });
    }

    @Override // android.support.p001v4.media.session.MediaSessionCompat.Callback
    public void onStop() {
        dispatchSessionTask(10001, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.11
            @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
            public void run(MediaSession.ControllerInfo controllerInfo) throws RemoteException {
                MediaSessionLegacyStub.this.handleTaskOnExecutor(controllerInfo, null, SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO, new SessionTask() { // from class: androidx.media2.session.MediaSessionLegacyStub.11.1
                    @Override // androidx.media2.session.MediaSessionLegacyStub.SessionTask
                    public void run(MediaSession.ControllerInfo controllerInfo2) throws RemoteException {
                        MediaSessionLegacyStub.this.mSessionImpl.pause();
                        MediaSessionLegacyStub.this.mSessionImpl.seekTo(0L);
                    }
                });
            }
        });
    }
}
