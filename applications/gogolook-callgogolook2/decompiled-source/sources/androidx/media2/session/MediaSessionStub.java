package androidx.media2.session;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.IMediaSession;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub.class */
public class MediaSessionStub extends IMediaSession.Stub {
    public static final boolean RETHROW_EXCEPTION = true;
    public final ConnectedControllersManager<IBinder> mConnectedControllersManager;
    public final Context mContext;
    public final Object mLock = new Object();
    public final MediaSession.MediaSessionImpl mSessionImpl;
    public final MediaSessionManager mSessionManager;
    public static final String TAG = "MediaSessionStub";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final SparseArray<SessionCommand> sCommandsForOnCommandRequest = new SparseArray<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub$Controller2Cb.class */
    public final class Controller2Cb extends MediaSession.ControllerCb {
        public final IMediaController mIControllerCallback;

        public Controller2Cb(@NonNull IMediaController iMediaController) {
            this.mIControllerCallback = iMediaController;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != Controller2Cb.class) {
                return false;
            }
            return ObjectsCompat.equals(getCallbackBinder(), ((Controller2Cb) obj).getCallbackBinder());
        }

        @NonNull
        public IBinder getCallbackBinder() {
            return this.mIControllerCallback.asBinder();
        }

        public int hashCode() {
            return ObjectsCompat.hash(getCallbackBinder());
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onAllowedCommandsChanged(int i, SessionCommandGroup sessionCommandGroup) throws RemoteException {
            this.mIControllerCallback.onAllowedCommandsChanged(i, MediaParcelUtils.toParcelable(sessionCommandGroup));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onBufferingStateChanged(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            this.mIControllerCallback.onBufferingStateChanged(i, MediaParcelUtils.toParcelable(mediaItem), i2, j, j2, j3);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onChildrenChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
            this.mIControllerCallback.onChildrenChanged(i, str, i2, MediaParcelUtils.toParcelable(libraryParams));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onCurrentMediaItemChanged(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            this.mIControllerCallback.onCurrentMediaItemChanged(i, MediaParcelUtils.toParcelable(mediaItem), i2, i3, i4);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onDisconnected(int i) throws RemoteException {
            this.mIControllerCallback.onDisconnected(i);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onLibraryResult(int i, LibraryResult libraryResult) throws RemoteException {
            LibraryResult libraryResult2 = libraryResult;
            if (libraryResult == null) {
                libraryResult2 = new LibraryResult(-1);
            }
            this.mIControllerCallback.onLibraryResult(i, MediaParcelUtils.toParcelable(libraryResult2));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackCompleted(int i) throws RemoteException {
            this.mIControllerCallback.onPlaybackCompleted(i);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackInfoChanged(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            this.mIControllerCallback.onPlaybackInfoChanged(i, MediaParcelUtils.toParcelable(playbackInfo));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaybackSpeedChanged(int i, long j, long j2, float f) throws RemoteException {
            this.mIControllerCallback.onPlaybackSpeedChanged(i, j, j2, f);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerResult(int i, @Nullable SessionPlayer.PlayerResult playerResult) throws RemoteException {
            onSessionResult(i, SessionResult.from(playerResult));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlayerStateChanged(int i, long j, long j2, int i2) throws RemoteException {
            this.mIControllerCallback.onPlayerStateChanged(i, j, j2, i2);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistChanged(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            MediaSession.ControllerInfo controller = MediaSessionStub.this.mConnectedControllersManager.getController(getCallbackBinder());
            if (MediaSessionStub.this.mConnectedControllersManager.isAllowedCommand(controller, (int) SessionCommand.COMMAND_CODE_PLAYER_GET_PLAYLIST)) {
                this.mIControllerCallback.onPlaylistChanged(i, MediaUtils.convertMediaItemListToParcelImplListSlice(list), MediaParcelUtils.toParcelable(mediaMetadata), i2, i3, i4);
            } else if (MediaSessionStub.this.mConnectedControllersManager.isAllowedCommand(controller, (int) SessionCommand.COMMAND_CODE_PLAYER_GET_PLAYLIST_METADATA)) {
                this.mIControllerCallback.onPlaylistMetadataChanged(i, MediaParcelUtils.toParcelable(mediaMetadata));
            }
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onPlaylistMetadataChanged(int i, MediaMetadata mediaMetadata) throws RemoteException {
            if (MediaSessionStub.this.mConnectedControllersManager.isAllowedCommand(MediaSessionStub.this.mConnectedControllersManager.getController(getCallbackBinder()), (int) SessionCommand.COMMAND_CODE_PLAYER_GET_PLAYLIST_METADATA)) {
                this.mIControllerCallback.onPlaylistMetadataChanged(i, MediaParcelUtils.toParcelable(mediaMetadata));
            }
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onRepeatModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.mIControllerCallback.onRepeatModeChanged(i, i2, i3, i4, i5);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSearchResultChanged(int i, String str, int i2, MediaLibraryService.LibraryParams libraryParams) throws RemoteException {
            this.mIControllerCallback.onSearchResultChanged(i, str, i2, MediaParcelUtils.toParcelable(libraryParams));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSeekCompleted(int i, long j, long j2, long j3) throws RemoteException {
            this.mIControllerCallback.onSeekCompleted(i, j, j2, j3);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSessionResult(int i, @Nullable SessionResult sessionResult) throws RemoteException {
            SessionResult sessionResult2 = sessionResult;
            if (sessionResult == null) {
                sessionResult2 = new SessionResult(-1, null);
            }
            this.mIControllerCallback.onSessionResult(i, MediaParcelUtils.toParcelable(sessionResult2));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onShuffleModeChanged(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.mIControllerCallback.onShuffleModeChanged(i, i2, i3, i4, i5);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onSubtitleData(int i, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) throws RemoteException {
            this.mIControllerCallback.onSubtitleData(i, MediaParcelUtils.toParcelable(mediaItem), MediaParcelUtils.toParcelable(trackInfo), MediaParcelUtils.toParcelable(subtitleData));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackDeselected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.mIControllerCallback.onTrackDeselected(i, MediaParcelUtils.toParcelable(trackInfo));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackInfoChanged(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
            this.mIControllerCallback.onTrackInfoChanged(i, MediaParcelUtils.toParcelableList(list), MediaParcelUtils.toParcelable(trackInfo), MediaParcelUtils.toParcelable(trackInfo2), MediaParcelUtils.toParcelable(trackInfo3), MediaParcelUtils.toParcelable(trackInfo4));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onTrackSelected(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.mIControllerCallback.onTrackSelected(i, MediaParcelUtils.toParcelable(trackInfo));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void onVideoSizeChanged(int i, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) throws RemoteException {
            this.mIControllerCallback.onVideoSizeChanged(i, MediaParcelUtils.toParcelable(mediaItem), MediaParcelUtils.toParcelable(videoSize));
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void sendCustomCommand(int i, SessionCommand sessionCommand, Bundle bundle) throws RemoteException {
            this.mIControllerCallback.onCustomCommand(i, MediaParcelUtils.toParcelable(sessionCommand), bundle);
        }

        @Override // androidx.media2.session.MediaSession.ControllerCb
        public void setCustomLayout(int i, List<MediaSession.CommandButton> list) throws RemoteException {
            this.mIControllerCallback.onSetCustomLayout(i, MediaUtils.convertCommandButtonListToParcelImplList(list));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask.class */
    public interface LibrarySessionCallbackTask<T> extends SessionTask {
        T run(MediaSession.ControllerInfo controllerInfo) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub$SessionCallbackTask.class */
    public interface SessionCallbackTask<T> extends SessionTask {
        T run(MediaSession.ControllerInfo controllerInfo) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub$SessionPlayerTask.class */
    public interface SessionPlayerTask extends SessionTask {
        AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionStub$SessionTask.class */
    public interface SessionTask<T> {
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.Builder().addAllPlayerCommands(1, false).addAllVolumeCommands(1).build().getCommands()) {
            sCommandsForOnCommandRequest.append(sessionCommand.getCommandCode(), sessionCommand);
        }
    }

    public MediaSessionStub(MediaSession.MediaSessionImpl mediaSessionImpl) {
        this.mSessionImpl = mediaSessionImpl;
        this.mContext = this.mSessionImpl.getContext();
        this.mSessionManager = MediaSessionManager.getSessionManager(this.mContext);
        this.mConnectedControllersManager = new ConnectedControllersManager<>(mediaSessionImpl);
    }

    private void dispatchLibrarySessionTask(@NonNull IMediaController iMediaController, int i, int i2, @NonNull LibrarySessionCallbackTask librarySessionCallbackTask) {
        if (this.mSessionImpl instanceof MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl) {
            dispatchSessionTaskInternal(iMediaController, i, null, i2, librarySessionCallbackTask);
            return;
        }
        throw new RuntimeException("MediaSession cannot handle MediaLibrarySession command");
    }

    private void dispatchSessionTask(@NonNull IMediaController iMediaController, int i, int i2, @NonNull SessionTask sessionTask) {
        dispatchSessionTaskInternal(iMediaController, i, null, i2, sessionTask);
    }

    private void dispatchSessionTask(@NonNull IMediaController iMediaController, int i, @NonNull SessionCommand sessionCommand, @NonNull SessionTask sessionTask) {
        dispatchSessionTaskInternal(iMediaController, i, sessionCommand, 0, sessionTask);
    }

    private void dispatchSessionTaskInternal(@NonNull IMediaController iMediaController, final int i, @Nullable final SessionCommand sessionCommand, final int i2, @NonNull final SessionTask sessionTask) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSession.ControllerInfo controller = this.mConnectedControllersManager.getController(iMediaController.asBinder());
            if (!this.mSessionImpl.isClosed() && controller != null) {
                this.mSessionImpl.getCallbackExecutor().execute(new Runnable() { // from class: androidx.media2.session.MediaSessionStub.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SessionCommand sessionCommand2;
                        if (MediaSessionStub.this.mConnectedControllersManager.isConnected(controller)) {
                            SessionCommand sessionCommand3 = sessionCommand;
                            if (sessionCommand3 != null) {
                                if (MediaSessionStub.this.mConnectedControllersManager.isAllowedCommand(controller, sessionCommand3)) {
                                    sessionCommand2 = MediaSessionStub.sCommandsForOnCommandRequest.get(sessionCommand.getCommandCode());
                                } else if (MediaSessionStub.DEBUG) {
                                    String str = "Command (" + sessionCommand + ") from " + controller + " isn't allowed.";
                                    return;
                                } else {
                                    return;
                                }
                            } else if (MediaSessionStub.this.mConnectedControllersManager.isAllowedCommand(controller, i2)) {
                                sessionCommand2 = MediaSessionStub.sCommandsForOnCommandRequest.get(i2);
                            } else if (MediaSessionStub.DEBUG) {
                                String str2 = "Command (" + i2 + ") from " + controller + " isn't allowed.";
                                return;
                            } else {
                                return;
                            }
                            if (sessionCommand2 != null) {
                                try {
                                    int onCommandRequest = MediaSessionStub.this.mSessionImpl.getCallback().onCommandRequest(MediaSessionStub.this.mSessionImpl.getInstance(), controller, sessionCommand2);
                                    if (onCommandRequest != 0) {
                                        if (MediaSessionStub.DEBUG) {
                                            String str3 = "Command (" + sessionCommand2 + ") from " + controller + " was rejected by " + MediaSessionStub.this.mSessionImpl + ", code=" + onCommandRequest;
                                        }
                                        MediaSessionStub.sendSessionResult(controller, i, onCommandRequest);
                                        return;
                                    }
                                } catch (RemoteException e) {
                                    String str4 = "Exception in " + controller.toString();
                                    return;
                                } catch (Exception e2) {
                                    throw e2;
                                }
                            }
                            if (sessionTask instanceof SessionPlayerTask) {
                                final AbstractFutureC9382a<SessionPlayer.PlayerResult> run = ((SessionPlayerTask) sessionTask).run(controller);
                                if (run != null) {
                                    run.addListener(new Runnable() { // from class: androidx.media2.session.MediaSessionStub.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            try {
                                                MediaSessionStub.sendPlayerResult(controller, i, (SessionPlayer.PlayerResult) run.get(0L, TimeUnit.MILLISECONDS));
                                            } catch (Exception e3) {
                                                RunnableC09071 r0 = RunnableC09071.this;
                                                MediaSessionStub.sendSessionResult(controller, i, -2);
                                            }
                                        }
                                    }, MediaUtils.DIRECT_EXECUTOR);
                                    return;
                                }
                                throw new RuntimeException("SessionPlayer has returned null, commandCode=" + i2);
                            } else if (sessionTask instanceof SessionCallbackTask) {
                                Object run2 = ((SessionCallbackTask) sessionTask).run(controller);
                                if (run2 == null) {
                                    throw new RuntimeException("SessionCallback has returned null, commandCode=" + i2);
                                } else if (run2 instanceof Integer) {
                                    MediaSessionStub.sendSessionResult(controller, i, ((Integer) run2).intValue());
                                } else if (run2 instanceof SessionResult) {
                                    MediaSessionStub.sendSessionResult(controller, i, (SessionResult) run2);
                                } else if (MediaSessionStub.DEBUG) {
                                    throw new RuntimeException("Unexpected return type " + run2 + ". Fix bug");
                                }
                            } else if (sessionTask instanceof LibrarySessionCallbackTask) {
                                Object run3 = ((LibrarySessionCallbackTask) sessionTask).run(controller);
                                if (run3 == null) {
                                    throw new RuntimeException("LibrarySessionCallback has returned null, commandCode=" + i2);
                                } else if (run3 instanceof Integer) {
                                    MediaSessionStub.sendLibraryResult(controller, i, ((Integer) run3).intValue());
                                } else if (run3 instanceof LibraryResult) {
                                    MediaSessionStub.sendLibraryResult(controller, i, (LibraryResult) run3);
                                } else if (MediaSessionStub.DEBUG) {
                                    throw new RuntimeException("Unexpected return type " + run3 + ". Fix bug");
                                }
                            } else if (MediaSessionStub.DEBUG) {
                                throw new RuntimeException("Unknown task " + sessionTask + ". Fix bug");
                            }
                        }
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public static void sendLibraryResult(@NonNull MediaSession.ControllerInfo controllerInfo, int i, int i2) {
        sendLibraryResult(controllerInfo, i, new LibraryResult(i2));
    }

    public static void sendLibraryResult(@NonNull MediaSession.ControllerInfo controllerInfo, int i, @NonNull LibraryResult libraryResult) {
        try {
            controllerInfo.getControllerCb().onLibraryResult(i, libraryResult);
        } catch (RemoteException e) {
            String str = "Exception in " + controllerInfo.toString();
        }
    }

    public static void sendPlayerResult(@NonNull MediaSession.ControllerInfo controllerInfo, int i, @NonNull SessionPlayer.PlayerResult playerResult) {
        try {
            controllerInfo.getControllerCb().onPlayerResult(i, playerResult);
        } catch (RemoteException e) {
            String str = "Exception in " + controllerInfo.toString();
        }
    }

    public static void sendSessionResult(@NonNull MediaSession.ControllerInfo controllerInfo, int i, int i2) {
        sendSessionResult(controllerInfo, i, new SessionResult(i2));
    }

    public static void sendSessionResult(@NonNull MediaSession.ControllerInfo controllerInfo, int i, @NonNull SessionResult sessionResult) {
        try {
            controllerInfo.getControllerCb().onSessionResult(i, sessionResult);
        } catch (RemoteException e) {
            String str = "Exception in " + controllerInfo.toString();
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void addPlaylistItem(IMediaController iMediaController, int i, final int i2, final String str) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_ADD_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.25
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "addPlaylistItem(): Ignoring empty mediaId from " + controllerInfo;
                        return SessionPlayer.PlayerResult.createFuture(-3);
                    }
                    MediaItem convertMediaItemOnExecutor = MediaSessionStub.this.convertMediaItemOnExecutor(controllerInfo, str);
                    return convertMediaItemOnExecutor == null ? SessionPlayer.PlayerResult.createFuture(-3) : MediaSessionStub.this.mSessionImpl.addPlaylistItem(i2, convertMediaItemOnExecutor);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void adjustVolume(IMediaController iMediaController, int i, final int i2, final int i3) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_VOLUME_ADJUST_VOLUME, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    MediaSessionCompat sessionCompat = MediaSessionStub.this.mSessionImpl.getSessionCompat();
                    if (sessionCompat != null) {
                        sessionCompat.getController().adjustVolume(i2, i3);
                    }
                    return 0;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void connect(IMediaController iMediaController, int i, ParcelImpl parcelImpl) throws RuntimeException {
        if (iMediaController != null && parcelImpl != null) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            ConnectionRequest connectionRequest = (ConnectionRequest) MediaParcelUtils.fromParcelable(parcelImpl);
            if (callingPid == 0) {
                callingPid = connectionRequest.getPid();
            }
            try {
                connect(iMediaController, connectionRequest.getPackageName(), callingPid, callingUid, connectionRequest.getConnectionHints());
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    public void connect(final IMediaController iMediaController, String str, int i, int i2, @Nullable Bundle bundle) {
        MediaSessionManager.RemoteUserInfo remoteUserInfo = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        final MediaSession.ControllerInfo controllerInfo = new MediaSession.ControllerInfo(remoteUserInfo, this.mSessionManager.isTrustedForMediaControl(remoteUserInfo), new Controller2Cb(iMediaController), bundle);
        this.mSessionImpl.getCallbackExecutor().execute(new Runnable() { // from class: androidx.media2.session.MediaSessionStub.2
            @Override // java.lang.Runnable
            public void run() {
                SequencedFutureManager sequencedFutureManager;
                if (!MediaSessionStub.this.mSessionImpl.isClosed()) {
                    IBinder callbackBinder = ((Controller2Cb) controllerInfo.getControllerCb()).getCallbackBinder();
                    SessionCommandGroup onConnect = MediaSessionStub.this.mSessionImpl.getCallback().onConnect(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo);
                    if (onConnect != null || controllerInfo.isTrusted()) {
                        if (MediaSessionStub.DEBUG) {
                            String str2 = "Accepting connection, controllerInfo=" + controllerInfo + " allowedCommands=" + onConnect;
                        }
                        SessionCommandGroup sessionCommandGroup = onConnect;
                        if (onConnect == null) {
                            sessionCommandGroup = new SessionCommandGroup();
                        }
                        synchronized (MediaSessionStub.this.mLock) {
                            if (MediaSessionStub.this.mConnectedControllersManager.isConnected(controllerInfo)) {
                                String str3 = "Controller " + controllerInfo + " has sent connection request multiple times";
                            }
                            MediaSessionStub.this.mConnectedControllersManager.addController(callbackBinder, controllerInfo, sessionCommandGroup);
                            sequencedFutureManager = MediaSessionStub.this.mConnectedControllersManager.getSequencedFutureManager(controllerInfo);
                        }
                        MediaSessionStub mediaSessionStub = MediaSessionStub.this;
                        ConnectionResult connectionResult = new ConnectionResult(mediaSessionStub, mediaSessionStub.mSessionImpl, sessionCommandGroup);
                        if (!MediaSessionStub.this.mSessionImpl.isClosed()) {
                            try {
                                iMediaController.onConnected(sequencedFutureManager.obtainNextSequenceNumber(), MediaParcelUtils.toParcelable(connectionResult));
                            } catch (RemoteException e) {
                            }
                            MediaSessionStub.this.mSessionImpl.getCallback().onPostConnect(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo);
                            return;
                        }
                        return;
                    }
                    if (MediaSessionStub.DEBUG) {
                        String str4 = "Rejecting connection, controllerInfo=" + controllerInfo;
                    }
                    try {
                        iMediaController.onDisconnected(0);
                    } catch (RemoteException e2) {
                    }
                }
            }
        });
    }

    @Nullable
    public MediaItem convertMediaItemOnExecutor(MediaSession.ControllerInfo controllerInfo, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MediaItem onCreateMediaItem = this.mSessionImpl.getCallback().onCreateMediaItem(this.mSessionImpl.getInstance(), controllerInfo, str);
        if (onCreateMediaItem == null) {
            String str2 = "onCreateMediaItem(mediaId=" + str + ") returned null. Ignoring";
        } else if (onCreateMediaItem.getMetadata() == null || !TextUtils.equals(str, onCreateMediaItem.getMetadata().getString(MediaMetadata.METADATA_KEY_MEDIA_ID))) {
            throw new RuntimeException("onCreateMediaItem(mediaId=" + str + "): media ID in the returned media item should match");
        }
        return onCreateMediaItem;
    }

    @Override // androidx.media2.session.IMediaSession
    public void deselectTrack(IMediaController iMediaController, int i, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_DESELECT_TRACK, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.35
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) MediaParcelUtils.fromParcelable(parcelImpl);
                    return trackInfo == null ? SessionPlayer.PlayerResult.createFuture(-3) : MediaSessionStub.this.mSessionImpl.deselectTrack(trackInfo);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void fastForward(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.8
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onFastForward(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo));
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void getChildren(IMediaController iMediaController, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) throws RuntimeException {
        if (iMediaController != null && parcelImpl != null) {
            dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_GET_CHILDREN, new LibrarySessionCallbackTask<LibraryResult>() { // from class: androidx.media2.session.MediaSessionStub.38
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public LibraryResult run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "getChildren(): Ignoring empty parentId from " + controllerInfo;
                        return new LibraryResult(-3);
                    } else if (i2 < 0) {
                        String str3 = "getChildren(): Ignoring negative page from " + controllerInfo;
                        return new LibraryResult(-3);
                    } else if (i3 >= 1) {
                        return MediaSessionStub.this.getLibrarySession().onGetChildrenOnExecutor(controllerInfo, str, i2, i3, (MediaLibraryService.LibraryParams) MediaParcelUtils.fromParcelable(parcelImpl));
                    } else {
                        String str4 = "getChildren(): Ignoring pageSize less than 1 from " + controllerInfo;
                        return new LibraryResult(-3);
                    }
                }
            });
        }
    }

    public ConnectedControllersManager<IBinder> getConnectedControllersManager() {
        return this.mConnectedControllersManager;
    }

    @Override // androidx.media2.session.IMediaSession
    public void getItem(IMediaController iMediaController, int i, final String str) throws RuntimeException {
        dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_GET_ITEM, new LibrarySessionCallbackTask<LibraryResult>() { // from class: androidx.media2.session.MediaSessionStub.37
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
            public LibraryResult run(MediaSession.ControllerInfo controllerInfo) {
                if (!TextUtils.isEmpty(str)) {
                    return MediaSessionStub.this.getLibrarySession().onGetItemOnExecutor(controllerInfo, str);
                }
                String str2 = "getItem(): Ignoring empty mediaId from " + controllerInfo;
                return new LibraryResult(-3);
            }
        });
    }

    @Override // androidx.media2.session.IMediaSession
    public void getLibraryRoot(IMediaController iMediaController, int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (iMediaController != null && parcelImpl != null) {
            dispatchLibrarySessionTask(iMediaController, i, 50000, new LibrarySessionCallbackTask<LibraryResult>() { // from class: androidx.media2.session.MediaSessionStub.36
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public LibraryResult run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.getLibrarySession().onGetLibraryRootOnExecutor(controllerInfo, (MediaLibraryService.LibraryParams) MediaParcelUtils.fromParcelable(parcelImpl));
                }
            });
        }
    }

    public MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl getLibrarySession() {
        MediaSession.MediaSessionImpl mediaSessionImpl = this.mSessionImpl;
        if (mediaSessionImpl instanceof MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl) {
            return (MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl) mediaSessionImpl;
        }
        throw new RuntimeException("Session cannot be casted to library session");
    }

    @Override // androidx.media2.session.IMediaSession
    public void getSearchResult(IMediaController iMediaController, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT, new LibrarySessionCallbackTask<LibraryResult>() { // from class: androidx.media2.session.MediaSessionStub.40
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public LibraryResult run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "getSearchResult(): Ignoring empty query from " + controllerInfo;
                        return new LibraryResult(-3);
                    } else if (i2 < 0) {
                        String str3 = "getSearchResult(): Ignoring negative page from " + controllerInfo;
                        return new LibraryResult(-3);
                    } else if (i3 >= 1) {
                        return MediaSessionStub.this.getLibrarySession().onGetSearchResultOnExecutor(controllerInfo, str, i2, i3, (MediaLibraryService.LibraryParams) MediaParcelUtils.fromParcelable(parcelImpl));
                    } else {
                        String str4 = "getSearchResult(): Ignoring pageSize less than 1 from " + controllerInfo;
                        return new LibraryResult(-3);
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void onControllerResult(IMediaController iMediaController, int i, ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                SequencedFutureManager sequencedFutureManager = this.mConnectedControllersManager.getSequencedFutureManager((ConnectedControllersManager<IBinder>) iMediaController.asBinder());
                if (sequencedFutureManager != null) {
                    sequencedFutureManager.setFutureResult(i, (SessionResult) MediaParcelUtils.fromParcelable(parcelImpl));
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void onCustomCommand(IMediaController iMediaController, int i, ParcelImpl parcelImpl, final Bundle bundle) {
        if (iMediaController != null && parcelImpl != null) {
            final SessionCommand sessionCommand = (SessionCommand) MediaParcelUtils.fromParcelable(parcelImpl);
            dispatchSessionTask(iMediaController, i, sessionCommand, new SessionCallbackTask<SessionResult>() { // from class: androidx.media2.session.MediaSessionStub.13
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public SessionResult run(MediaSession.ControllerInfo controllerInfo) {
                    SessionResult onCustomCommand = MediaSessionStub.this.mSessionImpl.getCallback().onCustomCommand(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, sessionCommand, bundle);
                    if (onCustomCommand != null) {
                        return onCustomCommand;
                    }
                    throw new RuntimeException("SessionCallback#onCustomCommand has returned null, command=" + sessionCommand);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void pause(IMediaController iMediaController, int i) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, 10001, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.6
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.pause();
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void play(IMediaController iMediaController, int i) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, 10000, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.5
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.play();
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void playFromMediaId(IMediaController iMediaController, int i, final String str, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.19
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPlayFromMediaId(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle));
                    }
                    String str2 = "playFromMediaId(): Ignoring empty mediaId from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void playFromSearch(IMediaController iMediaController, int i, final String str, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_SEARCH, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.18
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPlayFromSearch(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle));
                    }
                    String str2 = "playFromSearch(): Ignoring empty query from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void playFromUri(IMediaController iMediaController, int i, final Uri uri, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_URI, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.17
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (uri != null) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPlayFromUri(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, uri, bundle));
                    }
                    String str = "playFromUri(): Ignoring null uri from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void prepare(IMediaController iMediaController, int i) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, 10002, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.7
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.prepare();
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void prepareFromMediaId(IMediaController iMediaController, int i, final String str, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.16
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPrepareFromMediaId(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle));
                    }
                    String str2 = "prepareFromMediaId(): Ignoring empty mediaId from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void prepareFromSearch(IMediaController iMediaController, int i, final String str, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.15
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPrepareFromSearch(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, str, bundle));
                    }
                    String str2 = "prepareFromSearch(): Ignoring empty query from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void prepareFromUri(IMediaController iMediaController, int i, final Uri uri, final Bundle bundle) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_URI, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.14
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (uri != null) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onPrepareFromUri(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, uri, bundle));
                    }
                    String str = "prepareFromUri(): Ignoring null uri from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void release(IMediaController iMediaController, int i) throws RemoteException {
        if (iMediaController != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                this.mConnectedControllersManager.removeController((ConnectedControllersManager<IBinder>) iMediaController.asBinder());
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void removePlaylistItem(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.26
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.removePlaylistItem(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void replacePlaylistItem(IMediaController iMediaController, int i, final int i2, final String str) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_REPLACE_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.27
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "replacePlaylistItem(): Ignoring empty mediaId from " + controllerInfo;
                        return SessionPlayer.PlayerResult.createFuture(-3);
                    }
                    MediaItem convertMediaItemOnExecutor = MediaSessionStub.this.convertMediaItemOnExecutor(controllerInfo, str);
                    return convertMediaItemOnExecutor == null ? SessionPlayer.PlayerResult.createFuture(-3) : MediaSessionStub.this.mSessionImpl.replacePlaylistItem(i2, convertMediaItemOnExecutor);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void rewind(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_REWIND, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.9
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onRewind(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo));
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void search(IMediaController iMediaController, int i, final String str, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_SEARCH, new LibrarySessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.39
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.getLibrarySession().onSearchOnExecutor(controllerInfo, str, (MediaLibraryService.LibraryParams) MediaParcelUtils.fromParcelable(parcelImpl)));
                    }
                    String str2 = "search(): Ignoring empty query from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void seekTo(IMediaController iMediaController, int i, final long j) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.12
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.seekTo(j);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void selectTrack(IMediaController iMediaController, int i, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SELECT_TRACK, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.34
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) MediaParcelUtils.fromParcelable(parcelImpl);
                    return trackInfo == null ? SessionPlayer.PlayerResult.createFuture(-3) : MediaSessionStub.this.mSessionImpl.selectTrack(trackInfo);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setMediaItem(IMediaController iMediaController, int i, final String str) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_MEDIA_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.23
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "setMediaItem(): Ignoring empty mediaId from " + controllerInfo;
                        return SessionPlayer.PlayerResult.createFuture(-3);
                    }
                    MediaItem convertMediaItemOnExecutor = MediaSessionStub.this.convertMediaItemOnExecutor(controllerInfo, str);
                    return convertMediaItemOnExecutor == null ? SessionPlayer.PlayerResult.createFuture(-3) : MediaSessionStub.this.mSessionImpl.setMediaItem(convertMediaItemOnExecutor);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setPlaybackSpeed(IMediaController iMediaController, int i, final float f) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_SPEED, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.21
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.setPlaybackSpeed(f);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setPlaylist(IMediaController iMediaController, int i, final List<String> list, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_PLAYLIST, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.22
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    if (list == null) {
                        String str = "setPlaylist(): Ignoring null playlist from " + controllerInfo;
                        return SessionPlayer.PlayerResult.createFuture(-3);
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        MediaItem convertMediaItemOnExecutor = MediaSessionStub.this.convertMediaItemOnExecutor(controllerInfo, (String) list.get(i2));
                        if (convertMediaItemOnExecutor != null) {
                            arrayList.add(convertMediaItemOnExecutor);
                        }
                    }
                    return MediaSessionStub.this.mSessionImpl.setPlaylist(arrayList, (MediaMetadata) MediaParcelUtils.fromParcelable(parcelImpl));
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setRating(IMediaController iMediaController, int i, final String str, ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            final Rating rating = (Rating) MediaParcelUtils.fromParcelable(parcelImpl);
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_SET_RATING, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.20
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (TextUtils.isEmpty(str)) {
                        String str2 = "setRating(): Ignoring empty mediaId from " + controllerInfo;
                        return -3;
                    } else if (rating != null) {
                        return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onSetRating(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo, str, rating));
                    } else {
                        String str3 = "setRating(): Ignoring null rating from " + controllerInfo;
                        return -3;
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setRepeatMode(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_REPEAT_MODE, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.31
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.setRepeatMode(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setShuffleMode(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_SHUFFLE_MODE, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.32
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.setShuffleMode(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setSurface(IMediaController iMediaController, int i, final Surface surface) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SET_SURFACE, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.33
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.setSurface(surface);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void setVolumeTo(IMediaController iMediaController, int i, final int i2, final int i3) throws RuntimeException {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, 30000, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    MediaSessionCompat sessionCompat = MediaSessionStub.this.mSessionImpl.getSessionCompat();
                    if (sessionCompat != null) {
                        sessionCompat.getController().setVolumeTo(i2, i3);
                    }
                    return 0;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void skipBackward(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_SKIP_BACKWARD, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.11
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onSkipBackward(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo));
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void skipForward(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_SESSION_SKIP_FORWARD, new SessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.10
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.SessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    return Integer.valueOf(MediaSessionStub.this.mSessionImpl.getCallback().onSkipForward(MediaSessionStub.this.mSessionImpl.getInstance(), controllerInfo));
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void skipToNextItem(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.30
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.skipToNextItem();
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void skipToPlaylistItem(IMediaController iMediaController, int i, final int i2) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.28
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    int i3 = i2;
                    if (i3 >= 0) {
                        return MediaSessionStub.this.mSessionImpl.skipToPlaylistItem(i3);
                    }
                    String str = "skipToPlaylistItem(): Ignoring negative index from " + controllerInfo;
                    return SessionPlayer.PlayerResult.createFuture(-3);
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void skipToPreviousItem(IMediaController iMediaController, int i) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.29
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.skipToPreviousItem();
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void subscribe(IMediaController iMediaController, int i, final String str, final ParcelImpl parcelImpl) {
        if (iMediaController != null && parcelImpl != null) {
            dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_SUBSCRIBE, new LibrarySessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.41
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.getLibrarySession().onSubscribeOnExecutor(controllerInfo, str, (MediaLibraryService.LibraryParams) MediaParcelUtils.fromParcelable(parcelImpl)));
                    }
                    String str2 = "subscribe(): Ignoring empty parentId from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void unsubscribe(IMediaController iMediaController, int i, final String str) {
        if (iMediaController != null) {
            dispatchLibrarySessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_LIBRARY_UNSUBSCRIBE, new LibrarySessionCallbackTask<Integer>() { // from class: androidx.media2.session.MediaSessionStub.42
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionStub.LibrarySessionCallbackTask
                public Integer run(MediaSession.ControllerInfo controllerInfo) {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(MediaSessionStub.this.getLibrarySession().onUnsubscribeOnExecutor(controllerInfo, str));
                    }
                    String str2 = "unsubscribe(): Ignoring empty parentId from " + controllerInfo;
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.IMediaSession
    public void updatePlaylistMetadata(IMediaController iMediaController, int i, final ParcelImpl parcelImpl) {
        if (iMediaController != null) {
            dispatchSessionTask(iMediaController, i, SessionCommand.COMMAND_CODE_PLAYER_UPDATE_LIST_METADATA, new SessionPlayerTask() { // from class: androidx.media2.session.MediaSessionStub.24
                @Override // androidx.media2.session.MediaSessionStub.SessionPlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(MediaSession.ControllerInfo controllerInfo) {
                    return MediaSessionStub.this.mSessionImpl.updatePlaylistMetadata((MediaMetadata) MediaParcelUtils.fromParcelable(parcelImpl));
                }
            });
        }
    }
}
