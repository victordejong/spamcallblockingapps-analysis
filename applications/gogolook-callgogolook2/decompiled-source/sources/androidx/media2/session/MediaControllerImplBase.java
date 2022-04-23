package androidx.media2.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.p001v4.media.MediaBrowserCompat;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.IMediaSession;
import androidx.media2.session.IMediaSessionService;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SequencedFutureManager;
import java.util.List;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplBase.class */
public class MediaControllerImplBase implements MediaController.MediaControllerImpl {
    public static final boolean THROW_EXCEPTION_FOR_NULL_RESULT = true;
    @GuardedBy("mLock")
    public SessionCommandGroup mAllowedCommands;
    @GuardedBy("mLock")
    public long mBufferedPositionMs;
    @GuardedBy("mLock")
    public int mBufferingState;
    @GuardedBy("mLock")
    public SessionToken mConnectedToken;
    public final Context mContext;
    public final MediaControllerStub mControllerStub;
    @GuardedBy("mLock")
    public MediaItem mCurrentMediaItem;
    public final IBinder.DeathRecipient mDeathRecipient;
    @GuardedBy("mLock")
    public volatile IMediaSession mISession;
    public final MediaController mInstance;
    @GuardedBy("mLock")
    public boolean mIsReleased;
    @GuardedBy("mLock")
    public MediaController.PlaybackInfo mPlaybackInfo;
    @GuardedBy("mLock")
    public float mPlaybackSpeed;
    @GuardedBy("mLock")
    public int mPlayerState;
    @GuardedBy("mLock")
    public List<MediaItem> mPlaylist;
    @GuardedBy("mLock")
    public MediaMetadata mPlaylistMetadata;
    @GuardedBy("mLock")
    public long mPositionEventTimeMs;
    @GuardedBy("mLock")
    public long mPositionMs;
    @GuardedBy("mLock")
    public int mRepeatMode;
    public final SequencedFutureManager mSequencedFutureManager;
    @GuardedBy("mLock")
    public SessionServiceConnection mServiceConnection;
    @GuardedBy("mLock")
    public PendingIntent mSessionActivity;
    @GuardedBy("mLock")
    public int mShuffleMode;
    public final SessionToken mToken;
    @GuardedBy("mLock")
    public List<SessionPlayer.TrackInfo> mTrackInfos;
    public static final SessionResult RESULT_WHEN_CLOSED = new SessionResult(1);
    public static final String TAG = "MC2ImplBase";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public int mCurrentMediaItemIndex = -1;
    @GuardedBy("mLock")
    public int mPreviousMediaItemIndex = -1;
    @GuardedBy("mLock")
    public int mNextMediaItemIndex = -1;
    @GuardedBy("mLock")
    public VideoSize mVideoSize = new VideoSize(0, 0);
    @GuardedBy("mLock")
    public SparseArray<SessionPlayer.TrackInfo> mSelectedTracks = new SparseArray<>();

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplBase$RemoteSessionTask.class */
    public interface RemoteSessionTask {
        void run(IMediaSession iMediaSession, int i) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplBase$SessionServiceConnection.class */
    public class SessionServiceConnection implements ServiceConnection {
        public final Bundle mConnectionHints;

        public SessionServiceConnection(@Nullable Bundle bundle) {
            this.mConnectionHints = bundle;
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            MediaControllerImplBase.this.mInstance.close();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (MediaControllerImplBase.DEBUG) {
                    String str = "onServiceConnected " + componentName + " " + this;
                }
                if (!MediaControllerImplBase.this.mToken.getPackageName().equals(componentName.getPackageName())) {
                    Log.wtf(MediaControllerImplBase.TAG, "Expected connection to " + MediaControllerImplBase.this.mToken.getPackageName() + " but is connected to " + componentName);
                    return;
                }
                IMediaSessionService asInterface = IMediaSessionService.Stub.asInterface(iBinder);
                if (asInterface == null) {
                    Log.wtf(MediaControllerImplBase.TAG, "Service interface is missing.");
                    return;
                }
                asInterface.connect(MediaControllerImplBase.this.mControllerStub, MediaParcelUtils.toParcelable(new ConnectionRequest(MediaControllerImplBase.this.getContext().getPackageName(), Process.myPid(), this.mConnectionHints)));
            } catch (RemoteException e) {
                String str2 = "Service " + componentName + " has died prematurely";
            } finally {
                MediaControllerImplBase.this.mInstance.close();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (MediaControllerImplBase.DEBUG) {
                String str = "Session service " + componentName + " is disconnected.";
            }
            MediaControllerImplBase.this.mInstance.close();
        }
    }

    public MediaControllerImplBase(Context context, MediaController mediaController, SessionToken sessionToken, @Nullable Bundle bundle) {
        boolean z;
        this.mInstance = mediaController;
        if (context == null) {
            throw new NullPointerException("context shouldn't be null");
        } else if (sessionToken != null) {
            this.mContext = context;
            this.mSequencedFutureManager = new SequencedFutureManager();
            this.mControllerStub = new MediaControllerStub(this, this.mSequencedFutureManager);
            this.mToken = sessionToken;
            this.mDeathRecipient = new IBinder.DeathRecipient() { // from class: androidx.media2.session.MediaControllerImplBase.1
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    MediaControllerImplBase.this.mInstance.close();
                }
            };
            if (this.mToken.getType() == 0) {
                this.mServiceConnection = null;
                z = requestConnectToSession(bundle);
            } else {
                this.mServiceConnection = new SessionServiceConnection(bundle);
                z = requestConnectToService();
            }
            if (!z) {
                this.mInstance.close();
            }
        } else {
            throw new NullPointerException("token shouldn't be null");
        }
    }

    private AbstractFutureC9382a<SessionResult> dispatchRemoteSessionTask(int i, RemoteSessionTask remoteSessionTask) {
        return dispatchRemoteSessionTaskInternal(i, null, remoteSessionTask);
    }

    private AbstractFutureC9382a<SessionResult> dispatchRemoteSessionTask(SessionCommand sessionCommand, RemoteSessionTask remoteSessionTask) {
        return dispatchRemoteSessionTaskInternal(0, sessionCommand, remoteSessionTask);
    }

    private AbstractFutureC9382a<SessionResult> dispatchRemoteSessionTaskInternal(int i, SessionCommand sessionCommand, RemoteSessionTask remoteSessionTask) {
        IMediaSession sessionInterfaceIfAble = sessionCommand != null ? getSessionInterfaceIfAble(sessionCommand) : getSessionInterfaceIfAble(i);
        if (sessionInterfaceIfAble == null) {
            return SessionResult.createFutureWithResult(-4);
        }
        SequencedFutureManager.SequencedFuture createSequencedFuture = this.mSequencedFutureManager.createSequencedFuture(RESULT_WHEN_CLOSED);
        try {
            remoteSessionTask.run(sessionInterfaceIfAble, createSequencedFuture.getSequenceNumber());
        } catch (RemoteException e) {
            createSequencedFuture.set(new SessionResult(-100));
        }
        return createSequencedFuture;
    }

    private boolean requestConnectToService() {
        Intent intent = new Intent(MediaSessionService.SERVICE_INTERFACE);
        intent.setClassName(this.mToken.getPackageName(), this.mToken.getServiceName());
        synchronized (this.mLock) {
            if (!this.mContext.bindService(intent, this.mServiceConnection, 1)) {
                String str = "bind to " + this.mToken + " failed";
                return false;
            } else if (!DEBUG) {
                return true;
            } else {
                String str2 = "bind to " + this.mToken + " succeeded";
                return true;
            }
        }
    }

    private boolean requestConnectToSession(@Nullable Bundle bundle) {
        try {
            IMediaSession.Stub.asInterface((IBinder) this.mToken.getBinder()).connect(this.mControllerStub, this.mSequencedFutureManager.obtainNextSequenceNumber(), MediaParcelUtils.toParcelable(new ConnectionRequest(this.mContext.getPackageName(), Process.myPid(), bundle)));
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> addPlaylistItem(final int i, @NonNull final String str) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_ADD_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.25
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.addPlaylistItem(MediaControllerImplBase.this.mControllerStub, i2, i, str);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> adjustVolume(final int i, final int i2) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_VOLUME_ADJUST_VOLUME, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.18
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i3) throws RemoteException {
                iMediaSession.adjustVolume(MediaControllerImplBase.this.mControllerStub, i3, i, i2);
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (DEBUG) {
            String str = "release from " + this.mToken;
        }
        synchronized (this.mLock) {
            IMediaSession iMediaSession = this.mISession;
            if (!this.mIsReleased) {
                this.mIsReleased = true;
                if (this.mServiceConnection != null) {
                    this.mContext.unbindService(this.mServiceConnection);
                    this.mServiceConnection = null;
                }
                this.mISession = null;
                this.mControllerStub.destroy();
                if (iMediaSession != null) {
                    int obtainNextSequenceNumber = this.mSequencedFutureManager.obtainNextSequenceNumber();
                    try {
                        iMediaSession.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
                        iMediaSession.release(this.mControllerStub, obtainNextSequenceNumber);
                    } catch (RemoteException e) {
                    }
                }
                this.mSequencedFutureManager.close();
                this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.2
                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                        controllerCallback.onDisconnected(MediaControllerImplBase.this.mInstance);
                    }
                });
            }
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public AbstractFutureC9382a<SessionResult> deselectTrack(@NonNull final SessionPlayer.TrackInfo trackInfo) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_DESELECT_TRACK, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.34
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.deselectTrack(MediaControllerImplBase.this.mControllerStub, i, MediaParcelUtils.toParcelable(trackInfo));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> fastForward() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.6
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.fastForward(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public SessionCommandGroup getAllowedCommands() {
        synchronized (this.mLock) {
            if (this.mISession == null) {
                new IllegalStateException();
                return null;
            }
            return this.mAllowedCommands;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public MediaBrowserCompat getBrowserCompat() {
        return null;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getBufferedPosition() {
        synchronized (this.mLock) {
            if (this.mISession == null) {
                new IllegalStateException();
                return Long.MIN_VALUE;
            }
            return this.mBufferedPositionMs;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getBufferingState() {
        synchronized (this.mLock) {
            if (this.mISession == null) {
                new IllegalStateException();
                return 0;
            }
            return this.mBufferingState;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public SessionToken getConnectedToken() {
        SessionToken sessionToken;
        synchronized (this.mLock) {
            sessionToken = isConnected() ? this.mConnectedToken : null;
        }
        return sessionToken;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public MediaItem getCurrentMediaItem() {
        MediaItem mediaItem;
        synchronized (this.mLock) {
            mediaItem = this.mCurrentMediaItem;
        }
        return mediaItem;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getCurrentMediaItemIndex() {
        int i;
        synchronized (this.mLock) {
            i = this.mCurrentMediaItemIndex;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getCurrentPosition() {
        synchronized (this.mLock) {
            if (this.mISession == null) {
                new IllegalStateException();
                return Long.MIN_VALUE;
            } else if (this.mPlayerState != 2 || this.mBufferingState == 2) {
                return this.mPositionMs;
            } else {
                return Math.max(0L, this.mPositionMs + (this.mPlaybackSpeed * ((float) (this.mInstance.mTimeDiff != null ? this.mInstance.mTimeDiff.longValue() : SystemClock.elapsedRealtime() - this.mPositionEventTimeMs))));
            }
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getDuration() {
        synchronized (this.mLock) {
            MediaMetadata metadata = this.mCurrentMediaItem == null ? null : this.mCurrentMediaItem.getMetadata();
            if (metadata == null || !metadata.containsKey(MediaMetadata.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            }
            return metadata.getLong(MediaMetadata.METADATA_KEY_DURATION);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getNextMediaItemIndex() {
        int i;
        synchronized (this.mLock) {
            i = this.mNextMediaItemIndex;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public MediaController.PlaybackInfo getPlaybackInfo() {
        MediaController.PlaybackInfo playbackInfo;
        synchronized (this.mLock) {
            playbackInfo = this.mPlaybackInfo;
        }
        return playbackInfo;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public float getPlaybackSpeed() {
        synchronized (this.mLock) {
            if (this.mISession == null) {
                new IllegalStateException();
                return 0.0f;
            }
            return this.mPlaybackSpeed;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getPlayerState() {
        int i;
        synchronized (this.mLock) {
            i = this.mPlayerState;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public List<MediaItem> getPlaylist() {
        List<MediaItem> list;
        synchronized (this.mLock) {
            list = this.mPlaylist;
        }
        return list;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public MediaMetadata getPlaylistMetadata() {
        MediaMetadata mediaMetadata;
        synchronized (this.mLock) {
            mediaMetadata = this.mPlaylistMetadata;
        }
        return mediaMetadata;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getPreviousMediaItemIndex() {
        int i;
        synchronized (this.mLock) {
            i = this.mPreviousMediaItemIndex;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getRepeatMode() {
        int i;
        synchronized (this.mLock) {
            i = this.mRepeatMode;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public SessionPlayer.TrackInfo getSelectedTrack(int i) {
        SessionPlayer.TrackInfo trackInfo;
        synchronized (this.mLock) {
            trackInfo = this.mSelectedTracks.get(i);
        }
        return trackInfo;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public PendingIntent getSessionActivity() {
        PendingIntent pendingIntent;
        synchronized (this.mLock) {
            pendingIntent = this.mSessionActivity;
        }
        return pendingIntent;
    }

    public IMediaSession getSessionInterfaceIfAble(int i) {
        synchronized (this.mLock) {
            if (!this.mAllowedCommands.hasCommand(i)) {
                String str = "Controller isn't allowed to call command, commandCode=" + i;
                return null;
            }
            return this.mISession;
        }
    }

    public IMediaSession getSessionInterfaceIfAble(SessionCommand sessionCommand) {
        synchronized (this.mLock) {
            if (!this.mAllowedCommands.hasCommand(sessionCommand)) {
                String str = "Controller isn't allowed to call command, command=" + sessionCommand;
                return null;
            }
            return this.mISession;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getShuffleMode() {
        int i;
        synchronized (this.mLock) {
            i = this.mShuffleMode;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        List<SessionPlayer.TrackInfo> list;
        synchronized (this.mLock) {
            list = this.mTrackInfos;
        }
        return list;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public VideoSize getVideoSize() {
        VideoSize videoSize;
        synchronized (this.mLock) {
            videoSize = this.mVideoSize;
        }
        return videoSize;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mISession != null;
        }
        return z;
    }

    public void notifyBufferingStateChanged(final MediaItem mediaItem, final int i, long j, long j2, long j3) {
        synchronized (this.mLock) {
            this.mBufferingState = i;
            this.mBufferedPositionMs = j;
            this.mPositionEventTimeMs = j2;
            this.mPositionMs = j3;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.39
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onBufferingStateChanged(MediaControllerImplBase.this.mInstance, mediaItem, i);
                }
            }
        });
    }

    public void notifyCurrentMediaItemChanged(final MediaItem mediaItem, int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mCurrentMediaItem = mediaItem;
            this.mCurrentMediaItemIndex = i;
            this.mPreviousMediaItemIndex = i2;
            this.mNextMediaItemIndex = i3;
            if (this.mPlaylist != null && i >= 0 && i < this.mPlaylist.size()) {
                this.mPlaylist.set(i, mediaItem);
            }
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.36
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onCurrentMediaItemChanged(MediaControllerImplBase.this.mInstance, mediaItem);
                }
            }
        });
    }

    public void notifyPlaybackCompleted() {
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.45
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlaybackCompleted(MediaControllerImplBase.this.mInstance);
                }
            }
        });
    }

    public void notifyPlaybackInfoChanges(final MediaController.PlaybackInfo playbackInfo) {
        synchronized (this.mLock) {
            this.mPlaybackInfo = playbackInfo;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.42
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlaybackInfoChanged(MediaControllerImplBase.this.mInstance, playbackInfo);
                }
            }
        });
    }

    public void notifyPlaybackSpeedChanges(long j, long j2, final float f) {
        synchronized (this.mLock) {
            this.mPositionEventTimeMs = j;
            this.mPositionMs = j2;
            this.mPlaybackSpeed = f;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.38
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlaybackSpeedChanged(MediaControllerImplBase.this.mInstance, f);
                }
            }
        });
    }

    public void notifyPlayerStateChanges(long j, long j2, final int i) {
        synchronized (this.mLock) {
            this.mPositionEventTimeMs = j;
            this.mPositionMs = j2;
            this.mPlayerState = i;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.37
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlayerStateChanged(MediaControllerImplBase.this.mInstance, i);
                }
            }
        });
    }

    public void notifyPlaylistChanges(final List<MediaItem> list, final MediaMetadata mediaMetadata, int i, int i2, int i3) {
        synchronized (this.mLock) {
            this.mPlaylist = list;
            this.mPlaylistMetadata = mediaMetadata;
            this.mCurrentMediaItemIndex = i;
            this.mPreviousMediaItemIndex = i2;
            this.mNextMediaItemIndex = i3;
            if (i >= 0 && i < list.size()) {
                this.mCurrentMediaItem = list.get(i);
            }
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.40
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlaylistChanged(MediaControllerImplBase.this.mInstance, list, mediaMetadata);
                }
            }
        });
    }

    public void notifyPlaylistMetadataChanges(final MediaMetadata mediaMetadata) {
        synchronized (this.mLock) {
            this.mPlaylistMetadata = mediaMetadata;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.41
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onPlaylistMetadataChanged(MediaControllerImplBase.this.mInstance, mediaMetadata);
                }
            }
        });
    }

    public void notifyRepeatModeChanges(final int i, int i2, int i3, int i4) {
        synchronized (this.mLock) {
            this.mRepeatMode = i;
            this.mCurrentMediaItemIndex = i2;
            this.mPreviousMediaItemIndex = i3;
            this.mNextMediaItemIndex = i4;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.43
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onRepeatModeChanged(MediaControllerImplBase.this.mInstance, i);
                }
            }
        });
    }

    public void notifySeekCompleted(long j, long j2, final long j3) {
        synchronized (this.mLock) {
            this.mPositionEventTimeMs = j;
            this.mPositionMs = j2;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.46
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onSeekCompleted(MediaControllerImplBase.this.mInstance, j3);
                }
            }
        });
    }

    public void notifyShuffleModeChanges(final int i, int i2, int i3, int i4) {
        synchronized (this.mLock) {
            this.mShuffleMode = i;
            this.mCurrentMediaItemIndex = i2;
            this.mPreviousMediaItemIndex = i3;
            this.mNextMediaItemIndex = i4;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.44
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onShuffleModeChanged(MediaControllerImplBase.this.mInstance, i);
                }
            }
        });
    }

    public void notifySubtitleData(final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.51
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onSubtitleData(MediaControllerImplBase.this.mInstance, mediaItem, trackInfo, subtitleData);
                }
            }
        });
    }

    public void notifyTrackDeselected(int i, final SessionPlayer.TrackInfo trackInfo) {
        synchronized (this.mLock) {
            this.mSelectedTracks.remove(trackInfo.getTrackType());
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.50
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onTrackDeselected(MediaControllerImplBase.this.mInstance, trackInfo);
                }
            }
        });
    }

    public void notifyTrackInfoChanged(int i, final List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) {
        synchronized (this.mLock) {
            this.mTrackInfos = list;
            this.mSelectedTracks.put(1, trackInfo);
            this.mSelectedTracks.put(2, trackInfo2);
            this.mSelectedTracks.put(4, trackInfo3);
            this.mSelectedTracks.put(5, trackInfo4);
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.48
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onTrackInfoChanged(MediaControllerImplBase.this.mInstance, list);
                }
            }
        });
    }

    public void notifyTrackSelected(int i, final SessionPlayer.TrackInfo trackInfo) {
        synchronized (this.mLock) {
            this.mSelectedTracks.put(trackInfo.getTrackType(), trackInfo);
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.49
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onTrackSelected(MediaControllerImplBase.this.mInstance, trackInfo);
                }
            }
        });
    }

    public void notifyVideoSizeChanged(final MediaItem mediaItem, final VideoSize videoSize) {
        synchronized (this.mLock) {
            this.mVideoSize = videoSize;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.47
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                if (MediaControllerImplBase.this.mInstance.isConnected()) {
                    controllerCallback.onVideoSizeChanged(MediaControllerImplBase.this.mInstance, mediaItem, videoSize);
                }
            }
        });
    }

    public void onAllowedCommandsChanged(final SessionCommandGroup sessionCommandGroup) {
        synchronized (this.mLock) {
            this.mAllowedCommands = sessionCommandGroup;
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.54
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                controllerCallback.onAllowedCommandsChanged(MediaControllerImplBase.this.mInstance, sessionCommandGroup);
            }
        });
    }

    public void onConnectedNotLocked(IMediaSession iMediaSession, final SessionCommandGroup sessionCommandGroup, int i, MediaItem mediaItem, long j, long j2, float f, long j3, MediaController.PlaybackInfo playbackInfo, int i2, int i3, List<MediaItem> list, PendingIntent pendingIntent, int i4, int i5, int i6, Bundle bundle, VideoSize videoSize, List<SessionPlayer.TrackInfo> list2, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) {
        Throwable th;
        if (DEBUG) {
            String str = "onConnectedNotLocked sessionBinder=" + iMediaSession + ", allowedCommands=" + sessionCommandGroup;
        }
        if (iMediaSession == null || sessionCommandGroup == null) {
            this.mInstance.close();
            return;
        }
        try {
            synchronized (this.mLock) {
                boolean z = false;
                try {
                    if (!this.mIsReleased) {
                        try {
                            if (this.mISession != null) {
                                Log.e(TAG, "Cannot be notified about the connection result many times. Probably a bug or malicious app.");
                                this.mInstance.close();
                                return;
                            }
                            this.mAllowedCommands = sessionCommandGroup;
                            this.mPlayerState = i;
                            this.mCurrentMediaItem = mediaItem;
                            this.mPositionEventTimeMs = j;
                            this.mPositionMs = j2;
                            this.mPlaybackSpeed = f;
                            this.mBufferedPositionMs = j3;
                            this.mPlaybackInfo = playbackInfo;
                            this.mRepeatMode = i2;
                            this.mShuffleMode = i3;
                            this.mPlaylist = list;
                            this.mSessionActivity = pendingIntent;
                            this.mISession = iMediaSession;
                            this.mCurrentMediaItemIndex = i4;
                            this.mPreviousMediaItemIndex = i5;
                            this.mNextMediaItemIndex = i6;
                            this.mVideoSize = videoSize;
                            this.mTrackInfos = list2;
                            this.mSelectedTracks.put(1, trackInfo);
                            this.mSelectedTracks.put(2, trackInfo2);
                            this.mSelectedTracks.put(4, trackInfo3);
                            this.mSelectedTracks.put(5, trackInfo4);
                            z = false;
                            try {
                                this.mISession.asBinder().linkToDeath(this.mDeathRecipient, 0);
                                this.mConnectedToken = new SessionToken(new SessionTokenImplBase(this.mToken.getUid(), 0, this.mToken.getPackageName(), iMediaSession, bundle));
                                this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.52
                                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                        controllerCallback.onConnected(MediaControllerImplBase.this.mInstance, sessionCommandGroup);
                                    }
                                });
                            } catch (RemoteException e) {
                                boolean z2 = DEBUG;
                                this.mInstance.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            z = true;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            if (0 != 0) {
                this.mInstance.close();
            }
            throw th4;
        }
    }

    public void onCustomCommand(final int i, final SessionCommand sessionCommand, final Bundle bundle) {
        if (DEBUG) {
            String str = "onCustomCommand cmd=" + sessionCommand.getCustomAction();
        }
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.53
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                SessionResult onCustomCommand = controllerCallback.onCustomCommand(MediaControllerImplBase.this.mInstance, sessionCommand, bundle);
                if (onCustomCommand != null) {
                    MediaControllerImplBase.this.sendControllerResult(i, onCustomCommand);
                    return;
                }
                throw new RuntimeException("ControllerCallback#onCustomCommand() has returned null, command=" + sessionCommand.getCustomAction());
            }
        });
    }

    public void onSetCustomLayout(final int i, final List<MediaSession.CommandButton> list) {
        this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplBase.55
            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                MediaControllerImplBase.this.sendControllerResult(i, new SessionResult(controllerCallback.onSetCustomLayout(MediaControllerImplBase.this.mInstance, list)));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> pause() {
        return dispatchRemoteSessionTask(10001, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.4
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.pause(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> play() {
        return dispatchRemoteSessionTask(10000, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.3
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.play(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromMediaId(@NonNull final String str, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.11
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.playFromMediaId(MediaControllerImplBase.this.mControllerStub, i, str, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromSearch(@NonNull final String str, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_SEARCH, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.12
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.playFromSearch(MediaControllerImplBase.this.mControllerStub, i, str, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromUri(@NonNull final Uri uri, @NonNull final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PLAY_FROM_URI, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.13
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.playFromUri(MediaControllerImplBase.this.mControllerStub, i, uri, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepare() {
        return dispatchRemoteSessionTask(10002, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.5
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.prepare(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromMediaId(@NonNull final String str, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.14
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.prepareFromMediaId(MediaControllerImplBase.this.mControllerStub, i, str, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromSearch(@NonNull final String str, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.15
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.prepareFromSearch(MediaControllerImplBase.this.mControllerStub, i, str, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromUri(@NonNull final Uri uri, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_PREPARE_FROM_URI, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.16
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.prepareFromUri(MediaControllerImplBase.this.mControllerStub, i, uri, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> removePlaylistItem(@NonNull final int i) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_REMOVE_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.26
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.removePlaylistItem(MediaControllerImplBase.this.mControllerStub, i2, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> replacePlaylistItem(final int i, @NonNull final String str) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_REPLACE_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.27
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.replacePlaylistItem(MediaControllerImplBase.this.mControllerStub, i2, i, str);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> rewind() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_REWIND, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.7
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.rewind(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> seekTo(final long j) {
        if (j >= 0) {
            return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.10
                @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
                public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                    iMediaSession.seekTo(MediaControllerImplBase.this.mControllerStub, i, j);
                }
            });
        }
        throw new IllegalArgumentException("position shouldn't be negative");
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public AbstractFutureC9382a<SessionResult> selectTrack(@NonNull final SessionPlayer.TrackInfo trackInfo) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SELECT_TRACK, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.33
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.selectTrack(MediaControllerImplBase.this.mControllerStub, i, MediaParcelUtils.toParcelable(trackInfo));
            }
        });
    }

    public void sendControllerResult(int i, @NonNull SessionResult sessionResult) {
        IMediaSession iMediaSession;
        synchronized (this.mLock) {
            iMediaSession = this.mISession;
        }
        if (iMediaSession != null) {
            try {
                iMediaSession.onControllerResult(this.mControllerStub, i, MediaParcelUtils.toParcelable(sessionResult));
            } catch (RemoteException e) {
            }
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> sendCustomCommand(@NonNull final SessionCommand sessionCommand, @Nullable final Bundle bundle) {
        return dispatchRemoteSessionTask(sessionCommand, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.21
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.onCustomCommand(MediaControllerImplBase.this.mControllerStub, i, MediaParcelUtils.toParcelable(sessionCommand), bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setMediaItem(final String str) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_MEDIA_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.23
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.setMediaItem(MediaControllerImplBase.this.mControllerStub, i, str);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setPlaybackSpeed(final float f) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_SPEED, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.19
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.setPlaybackSpeed(MediaControllerImplBase.this.mControllerStub, i, f);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setPlaylist(@NonNull final List<String> list, @Nullable final MediaMetadata mediaMetadata) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_PLAYLIST, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.22
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.setPlaylist(MediaControllerImplBase.this.mControllerStub, i, list, MediaParcelUtils.toParcelable(mediaMetadata));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setRating(@NonNull final String str, @NonNull final Rating rating) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_SET_RATING, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.20
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.setRating(MediaControllerImplBase.this.mControllerStub, i, str, MediaParcelUtils.toParcelable(rating));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setRepeatMode(final int i) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_REPEAT_MODE, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.31
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.setRepeatMode(MediaControllerImplBase.this.mControllerStub, i2, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setShuffleMode(final int i) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_SHUFFLE_MODE, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.32
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.setShuffleMode(MediaControllerImplBase.this.mControllerStub, i2, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setSurface(@Nullable final Surface surface) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SET_SURFACE, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.35
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.setSurface(MediaControllerImplBase.this.mControllerStub, i, surface);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setVolumeTo(final int i, final int i2) {
        return dispatchRemoteSessionTask(30000, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.17
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i3) throws RemoteException {
                iMediaSession.setVolumeTo(MediaControllerImplBase.this.mControllerStub, i3, i, i2);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipBackward() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_SKIP_BACKWARD, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.9
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.skipBackward(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipForward() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_SESSION_SKIP_FORWARD, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.8
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.skipForward(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToNextItem() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_NEXT_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.29
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.skipToNextItem(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToPlaylistItem(@NonNull final int i) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.30
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i2) throws RemoteException {
                iMediaSession.skipToPlaylistItem(MediaControllerImplBase.this.mControllerStub, i2, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToPreviousItem() {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_SKIP_TO_PREVIOUS_PLAYLIST_ITEM, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.28
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.skipToPreviousItem(MediaControllerImplBase.this.mControllerStub, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> updatePlaylistMetadata(@Nullable final MediaMetadata mediaMetadata) {
        return dispatchRemoteSessionTask(SessionCommand.COMMAND_CODE_PLAYER_UPDATE_LIST_METADATA, new RemoteSessionTask() { // from class: androidx.media2.session.MediaControllerImplBase.24
            @Override // androidx.media2.session.MediaControllerImplBase.RemoteSessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.updatePlaylistMetadata(MediaControllerImplBase.this.mControllerStub, i, MediaParcelUtils.toParcelable(mediaMetadata));
            }
        });
    }
}
