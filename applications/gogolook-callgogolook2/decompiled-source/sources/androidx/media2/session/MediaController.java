package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pair;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController.class */
public class MediaController implements AutoCloseable {
    public static final String TAG = "MediaController";
    public final ControllerCallback mCallback;
    public final Executor mCallbackExecutor;
    @GuardedBy("mLock")
    public boolean mClosed;
    @GuardedBy("mLock")
    public MediaControllerImpl mImpl;
    public Long mTimeDiff;
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public final List<Pair<ControllerCallback, Executor>> mExtraCallbacks = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$Builder.class */
    public static final class Builder extends BuilderBase<MediaController, Builder, ControllerCallback> {
        public Builder(@NonNull Context context) {
            super(context);
        }

        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public MediaController build() {
            if (this.mToken == null && this.mCompatToken == null) {
                throw new IllegalArgumentException("token and compat token shouldn't be both null");
            }
            SessionToken sessionToken = this.mToken;
            return sessionToken != null ? new MediaController(this.mContext, sessionToken, this.mConnectionHints, this.mCallbackExecutor, this.mCallback) : new MediaController(this.mContext, this.mCompatToken, this.mConnectionHints, this.mCallbackExecutor, this.mCallback);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setControllerCallback(@NonNull Executor executor, @NonNull ControllerCallback controllerCallback) {
            return (Builder) super.setControllerCallback(executor, (Executor) controllerCallback);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setSessionCompatToken(@NonNull MediaSessionCompat.Token token) {
            return (Builder) super.setSessionCompatToken(token);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setSessionToken(@NonNull SessionToken sessionToken) {
            return (Builder) super.setSessionToken(sessionToken);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$BuilderBase.class */
    public static abstract class BuilderBase<T extends MediaController, U extends BuilderBase<T, U, C>, C extends ControllerCallback> {
        public ControllerCallback mCallback;
        public Executor mCallbackExecutor;
        public MediaSessionCompat.Token mCompatToken;
        public Bundle mConnectionHints;
        public final Context mContext;
        public SessionToken mToken;

        public BuilderBase(@NonNull Context context) {
            if (context != null) {
                this.mContext = context;
                return;
            }
            throw new NullPointerException("context shouldn't be null");
        }

        @NonNull
        public abstract T build();

        @NonNull
        public U setConnectionHints(@NonNull Bundle bundle) {
            if (bundle != null) {
                this.mConnectionHints = new Bundle(bundle);
                return this;
            }
            throw new NullPointerException("connectionHints shouldn't be null");
        }

        @NonNull
        public U setControllerCallback(@NonNull Executor executor, @NonNull C c) {
            if (executor == null) {
                throw new NullPointerException("executor shouldn't be null");
            } else if (c != null) {
                this.mCallbackExecutor = executor;
                this.mCallback = c;
                return this;
            } else {
                throw new NullPointerException("callback shouldn't be null");
            }
        }

        @NonNull
        public U setSessionCompatToken(@NonNull MediaSessionCompat.Token token) {
            if (token != null) {
                this.mCompatToken = token;
                this.mToken = null;
                return this;
            }
            throw new NullPointerException("compatToken shouldn't be null");
        }

        @NonNull
        public U setSessionToken(@NonNull SessionToken sessionToken) {
            if (sessionToken != null) {
                this.mToken = sessionToken;
                this.mCompatToken = null;
                return this;
            }
            throw new NullPointerException("token shouldn't be null");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$ControllerCallback.class */
    public static abstract class ControllerCallback {
        public void onAllowedCommandsChanged(@NonNull MediaController mediaController, @NonNull SessionCommandGroup sessionCommandGroup) {
        }

        public void onBufferingStateChanged(@NonNull MediaController mediaController, @NonNull MediaItem mediaItem, int i) {
        }

        public void onConnected(@NonNull MediaController mediaController, @NonNull SessionCommandGroup sessionCommandGroup) {
        }

        public void onCurrentMediaItemChanged(@NonNull MediaController mediaController, @Nullable MediaItem mediaItem) {
        }

        @NonNull
        public SessionResult onCustomCommand(@NonNull MediaController mediaController, @NonNull SessionCommand sessionCommand, @Nullable Bundle bundle) {
            return new SessionResult(-6);
        }

        public void onDisconnected(@NonNull MediaController mediaController) {
        }

        public void onPlaybackCompleted(@NonNull MediaController mediaController) {
        }

        public void onPlaybackInfoChanged(@NonNull MediaController mediaController, @NonNull PlaybackInfo playbackInfo) {
        }

        public void onPlaybackSpeedChanged(@NonNull MediaController mediaController, float f) {
        }

        public void onPlayerStateChanged(@NonNull MediaController mediaController, int i) {
        }

        public void onPlaylistChanged(@NonNull MediaController mediaController, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
        }

        public void onPlaylistMetadataChanged(@NonNull MediaController mediaController, @Nullable MediaMetadata mediaMetadata) {
        }

        public void onRepeatModeChanged(@NonNull MediaController mediaController, int i) {
        }

        public void onSeekCompleted(@NonNull MediaController mediaController, long j) {
        }

        public int onSetCustomLayout(@NonNull MediaController mediaController, @NonNull List<MediaSession.CommandButton> list) {
            return -6;
        }

        public void onShuffleModeChanged(@NonNull MediaController mediaController, int i) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onSubtitleData(@NonNull MediaController mediaController, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackDeselected(@NonNull MediaController mediaController, @NonNull SessionPlayer.TrackInfo trackInfo) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackInfoChanged(@NonNull MediaController mediaController, @NonNull List<SessionPlayer.TrackInfo> list) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackSelected(@NonNull MediaController mediaController, @NonNull SessionPlayer.TrackInfo trackInfo) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onVideoSizeChanged(@NonNull MediaController mediaController, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting(otherwise = 3)
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$ControllerCallbackRunnable.class */
    public interface ControllerCallbackRunnable {
        void run(@NonNull ControllerCallback controllerCallback);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$MediaControllerImpl.class */
    public interface MediaControllerImpl extends AutoCloseable {
        AbstractFutureC9382a<SessionResult> addPlaylistItem(int i, @NonNull String str);

        AbstractFutureC9382a<SessionResult> adjustVolume(int i, int i2);

        AbstractFutureC9382a<SessionResult> deselectTrack(SessionPlayer.TrackInfo trackInfo);

        AbstractFutureC9382a<SessionResult> fastForward();

        @Nullable
        SessionCommandGroup getAllowedCommands();

        @Nullable
        MediaBrowserCompat getBrowserCompat();

        long getBufferedPosition();

        int getBufferingState();

        @Nullable
        SessionToken getConnectedToken();

        @NonNull
        Context getContext();

        MediaItem getCurrentMediaItem();

        int getCurrentMediaItemIndex();

        long getCurrentPosition();

        long getDuration();

        int getNextMediaItemIndex();

        @Nullable
        PlaybackInfo getPlaybackInfo();

        float getPlaybackSpeed();

        int getPlayerState();

        @Nullable
        List<MediaItem> getPlaylist();

        @Nullable
        MediaMetadata getPlaylistMetadata();

        int getPreviousMediaItemIndex();

        int getRepeatMode();

        @Nullable
        SessionPlayer.TrackInfo getSelectedTrack(int i);

        @Nullable
        PendingIntent getSessionActivity();

        int getShuffleMode();

        @NonNull
        List<SessionPlayer.TrackInfo> getTrackInfo();

        @NonNull
        VideoSize getVideoSize();

        boolean isConnected();

        AbstractFutureC9382a<SessionResult> pause();

        AbstractFutureC9382a<SessionResult> play();

        AbstractFutureC9382a<SessionResult> playFromMediaId(@NonNull String str, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> playFromSearch(@NonNull String str, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> playFromUri(@NonNull Uri uri, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> prepare();

        AbstractFutureC9382a<SessionResult> prepareFromMediaId(@NonNull String str, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> prepareFromSearch(@NonNull String str, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> prepareFromUri(@NonNull Uri uri, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> removePlaylistItem(@NonNull int i);

        AbstractFutureC9382a<SessionResult> replacePlaylistItem(int i, @NonNull String str);

        AbstractFutureC9382a<SessionResult> rewind();

        AbstractFutureC9382a<SessionResult> seekTo(long j);

        AbstractFutureC9382a<SessionResult> selectTrack(SessionPlayer.TrackInfo trackInfo);

        AbstractFutureC9382a<SessionResult> sendCustomCommand(@NonNull SessionCommand sessionCommand, @Nullable Bundle bundle);

        AbstractFutureC9382a<SessionResult> setMediaItem(@NonNull String str);

        AbstractFutureC9382a<SessionResult> setPlaybackSpeed(float f);

        AbstractFutureC9382a<SessionResult> setPlaylist(@NonNull List<String> list, @Nullable MediaMetadata mediaMetadata);

        AbstractFutureC9382a<SessionResult> setRating(@NonNull String str, @NonNull Rating rating);

        AbstractFutureC9382a<SessionResult> setRepeatMode(int i);

        AbstractFutureC9382a<SessionResult> setShuffleMode(int i);

        AbstractFutureC9382a<SessionResult> setSurface(@Nullable Surface surface);

        AbstractFutureC9382a<SessionResult> setVolumeTo(int i, int i2);

        AbstractFutureC9382a<SessionResult> skipBackward();

        AbstractFutureC9382a<SessionResult> skipForward();

        AbstractFutureC9382a<SessionResult> skipToNextItem();

        AbstractFutureC9382a<SessionResult> skipToPlaylistItem(@NonNull int i);

        AbstractFutureC9382a<SessionResult> skipToPreviousItem();

        AbstractFutureC9382a<SessionResult> updatePlaylistMetadata(@Nullable MediaMetadata mediaMetadata);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$PlaybackInfo.class */
    public static final class PlaybackInfo implements VersionedParcelable {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;
        public AudioAttributesCompat mAudioAttrsCompat;
        public int mControlType;
        public int mCurrentVolume;
        public int mMaxVolume;
        public int mPlaybackType;

        public PlaybackInfo() {
        }

        public PlaybackInfo(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.mPlaybackType = i;
            this.mAudioAttrsCompat = audioAttributesCompat;
            this.mControlType = i2;
            this.mMaxVolume = i3;
            this.mCurrentVolume = i4;
        }

        public static PlaybackInfo createPlaybackInfo(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            return new PlaybackInfo(i, audioAttributesCompat, i2, i3, i4);
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof PlaybackInfo)) {
                return false;
            }
            PlaybackInfo playbackInfo = (PlaybackInfo) obj;
            boolean z = false;
            if (this.mPlaybackType == playbackInfo.mPlaybackType) {
                z = false;
                if (this.mControlType == playbackInfo.mControlType) {
                    z = false;
                    if (this.mMaxVolume == playbackInfo.mMaxVolume) {
                        z = false;
                        if (this.mCurrentVolume == playbackInfo.mCurrentVolume) {
                            z = false;
                            if (ObjectsCompat.equals(this.mAudioAttrsCompat, playbackInfo.mAudioAttrsCompat)) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }

        @Nullable
        public AudioAttributesCompat getAudioAttributes() {
            return this.mAudioAttrsCompat;
        }

        public int getControlType() {
            return this.mControlType;
        }

        public int getCurrentVolume() {
            return this.mCurrentVolume;
        }

        public int getMaxVolume() {
            return this.mMaxVolume;
        }

        public int getPlaybackType() {
            return this.mPlaybackType;
        }

        public int hashCode() {
            return ObjectsCompat.hash(Integer.valueOf(this.mPlaybackType), Integer.valueOf(this.mControlType), Integer.valueOf(this.mMaxVolume), Integer.valueOf(this.mCurrentVolume), this.mAudioAttrsCompat);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$VolumeDirection.class */
    public @interface VolumeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$VolumeFlags.class */
    public @interface VolumeFlags {
    }

    public MediaController(@NonNull final Context context, @NonNull MediaSessionCompat.Token token, @Nullable final Bundle bundle, @Nullable Executor executor, @Nullable ControllerCallback controllerCallback) {
        if (context == null) {
            throw new NullPointerException("context shouldn't be null");
        } else if (token != null) {
            this.mCallback = controllerCallback;
            this.mCallbackExecutor = executor;
            SessionToken.createSessionToken(context, token, executor, new SessionToken.OnSessionTokenCreatedListener() { // from class: androidx.media2.session.MediaController.1
                @Override // androidx.media2.session.SessionToken.OnSessionTokenCreatedListener
                public void onSessionTokenCreated(MediaSessionCompat.Token token2, SessionToken sessionToken) {
                    synchronized (MediaController.this.mLock) {
                        if (!MediaController.this.mClosed) {
                            MediaController.this.mImpl = MediaController.this.createImpl(context, sessionToken, bundle);
                        } else {
                            MediaController.this.notifyControllerCallback(new ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaController.1.1
                                @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                public void run(@NonNull ControllerCallback controllerCallback2) {
                                    controllerCallback2.onDisconnected(MediaController.this);
                                }
                            });
                        }
                    }
                }
            });
        } else {
            throw new NullPointerException("token shouldn't be null");
        }
    }

    public MediaController(@NonNull Context context, @NonNull SessionToken sessionToken, @Nullable Bundle bundle, @Nullable Executor executor, @Nullable ControllerCallback controllerCallback) {
        if (context == null) {
            throw new NullPointerException("context shouldn't be null");
        } else if (sessionToken != null) {
            this.mCallback = controllerCallback;
            this.mCallbackExecutor = executor;
            synchronized (this.mLock) {
                this.mImpl = createImpl(context, sessionToken, bundle);
            }
        } else {
            throw new NullPointerException("token shouldn't be null");
        }
    }

    public static AbstractFutureC9382a<SessionResult> createDisconnectedFuture() {
        return SessionResult.createFutureWithResult(-100);
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> addPlaylistItem(@IntRange(from = 0) int i, @NonNull String str) {
        if (i < 0) {
            throw new IllegalArgumentException("index shouldn't be negative");
        } else if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().addPlaylistItem(i, str) : createDisconnectedFuture();
        } else {
            throw new IllegalArgumentException("mediaId shouldn't be empty");
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> adjustVolume(int i, int i2) {
        return isConnected() ? getImpl().adjustVolume(i, i2) : createDisconnectedFuture();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (this.mLock) {
                if (!this.mClosed) {
                    this.mClosed = true;
                    MediaControllerImpl mediaControllerImpl = this.mImpl;
                    if (mediaControllerImpl != null) {
                        mediaControllerImpl.close();
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    public MediaControllerImpl createImpl(@NonNull Context context, @NonNull SessionToken sessionToken, @Nullable Bundle bundle) {
        return sessionToken.isLegacySession() ? new MediaControllerImplLegacy(context, this, sessionToken) : new MediaControllerImplBase(context, this, sessionToken, bundle);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionResult> deselectTrack(@NonNull SessionPlayer.TrackInfo trackInfo) {
        if (trackInfo != null) {
            return isConnected() ? getImpl().deselectTrack(trackInfo) : createDisconnectedFuture();
        }
        throw new NullPointerException("TrackInfo shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> fastForward() {
        return isConnected() ? getImpl().fastForward() : createDisconnectedFuture();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SessionCommandGroup getAllowedCommands() {
        if (!isConnected()) {
            return null;
        }
        return getImpl().getAllowedCommands();
    }

    public long getBufferedPosition() {
        return isConnected() ? getImpl().getBufferedPosition() : Long.MIN_VALUE;
    }

    public int getBufferingState() {
        return isConnected() ? getImpl().getBufferingState() : 0;
    }

    @Nullable
    public SessionToken getConnectedToken() {
        return isConnected() ? getImpl().getConnectedToken() : null;
    }

    @Nullable
    public MediaItem getCurrentMediaItem() {
        return isConnected() ? getImpl().getCurrentMediaItem() : null;
    }

    public int getCurrentMediaItemIndex() {
        return isConnected() ? getImpl().getCurrentMediaItemIndex() : -1;
    }

    public long getCurrentPosition() {
        return isConnected() ? getImpl().getCurrentPosition() : Long.MIN_VALUE;
    }

    public long getDuration() {
        return isConnected() ? getImpl().getDuration() : Long.MIN_VALUE;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting(otherwise = 3)
    public List<Pair<ControllerCallback, Executor>> getExtraCallbacks() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mExtraCallbacks);
        }
        return arrayList;
    }

    public MediaControllerImpl getImpl() {
        MediaControllerImpl mediaControllerImpl;
        synchronized (this.mLock) {
            mediaControllerImpl = this.mImpl;
        }
        return mediaControllerImpl;
    }

    public int getNextMediaItemIndex() {
        return isConnected() ? getImpl().getNextMediaItemIndex() : -1;
    }

    @Nullable
    public PlaybackInfo getPlaybackInfo() {
        return isConnected() ? getImpl().getPlaybackInfo() : null;
    }

    public float getPlaybackSpeed() {
        return isConnected() ? getImpl().getPlaybackSpeed() : 0.0f;
    }

    public int getPlayerState() {
        return isConnected() ? getImpl().getPlayerState() : 0;
    }

    @Nullable
    public List<MediaItem> getPlaylist() {
        return isConnected() ? getImpl().getPlaylist() : null;
    }

    @Nullable
    public MediaMetadata getPlaylistMetadata() {
        return isConnected() ? getImpl().getPlaylistMetadata() : null;
    }

    public int getPreviousMediaItemIndex() {
        return isConnected() ? getImpl().getPreviousMediaItemIndex() : -1;
    }

    public int getRepeatMode() {
        return isConnected() ? getImpl().getRepeatMode() : 0;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SessionPlayer.TrackInfo getSelectedTrack(int i) {
        return isConnected() ? getImpl().getSelectedTrack(i) : null;
    }

    @Nullable
    public PendingIntent getSessionActivity() {
        return isConnected() ? getImpl().getSessionActivity() : null;
    }

    public int getShuffleMode() {
        return isConnected() ? getImpl().getShuffleMode() : 0;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        return isConnected() ? getImpl().getTrackInfo() : null;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public VideoSize getVideoSize() {
        return isConnected() ? getImpl().getVideoSize() : new VideoSize(0, 0);
    }

    public boolean isConnected() {
        MediaControllerImpl impl = getImpl();
        return impl != null && impl.isConnected();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting(otherwise = 3)
    public void notifyControllerCallback(final ControllerCallbackRunnable controllerCallbackRunnable) {
        Executor executor;
        if (!(this.mCallback == null || (executor = this.mCallbackExecutor) == null)) {
            executor.execute(new Runnable() { // from class: androidx.media2.session.MediaController.2
                @Override // java.lang.Runnable
                public void run() {
                    controllerCallbackRunnable.run(MediaController.this.mCallback);
                }
            });
        }
        for (Pair<ControllerCallback, Executor> pair : getExtraCallbacks()) {
            final ControllerCallback controllerCallback = pair.first;
            Executor executor2 = pair.second;
            if (controllerCallback == null) {
                Log.e(TAG, "notifyControllerCallback: mExtraCallbacks contains a null ControllerCallback! Ignoring...");
            } else if (executor2 == null) {
                Log.e(TAG, "notifyControllerCallback: mExtraCallbacks contains a null Executor! Ignoring...");
            } else {
                executor2.execute(new Runnable() { // from class: androidx.media2.session.MediaController.3
                    @Override // java.lang.Runnable
                    public void run() {
                        controllerCallbackRunnable.run(controllerCallback);
                    }
                });
            }
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> pause() {
        return isConnected() ? getImpl().pause() : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> play() {
        return isConnected() ? getImpl().play() : createDisconnectedFuture();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> playFromMediaId(@NonNull String str, @Nullable Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().playFromMediaId(str, bundle) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("mediaId shouldn't be empty");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> playFromSearch(@NonNull String str, @Nullable Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().playFromSearch(str, bundle) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("query shouldn't be empty");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> playFromUri(@NonNull Uri uri, @Nullable Bundle bundle) {
        if (uri != null) {
            return isConnected() ? getImpl().playFromUri(uri, bundle) : createDisconnectedFuture();
        }
        throw new NullPointerException("uri shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> prepare() {
        return isConnected() ? getImpl().prepare() : createDisconnectedFuture();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> prepareFromMediaId(@NonNull String str, @Nullable Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().prepareFromMediaId(str, bundle) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("mediaId shouldn't be empty");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> prepareFromSearch(@NonNull String str, @Nullable Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().prepareFromSearch(str, bundle) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("query shouldn't be empty");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionResult> prepareFromUri(@NonNull Uri uri, @Nullable Bundle bundle) {
        if (uri != null) {
            return isConnected() ? getImpl().prepareFromUri(uri, bundle) : createDisconnectedFuture();
        }
        throw new NullPointerException("uri shouldn't be null");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void registerExtraCallback(@NonNull Executor executor, @NonNull ControllerCallback controllerCallback) {
        if (executor == null) {
            throw new NullPointerException("executor shouldn't be null");
        } else if (controllerCallback != null) {
            boolean z = false;
            synchronized (this.mLock) {
                Iterator<Pair<ControllerCallback, Executor>> it = this.mExtraCallbacks.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().first == controllerCallback) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (!z) {
                    this.mExtraCallbacks.add(new Pair<>(controllerCallback, executor));
                }
            }
        } else {
            throw new NullPointerException("callback shouldn't be null");
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> removePlaylistItem(@IntRange(from = 0) int i) {
        if (i >= 0) {
            return isConnected() ? getImpl().removePlaylistItem(i) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> replacePlaylistItem(@IntRange(from = 0) int i, @NonNull String str) {
        if (i < 0) {
            throw new IllegalArgumentException("index shouldn't be negative");
        } else if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().replacePlaylistItem(i, str) : createDisconnectedFuture();
        } else {
            throw new IllegalArgumentException("mediaId shouldn't be empty");
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> rewind() {
        return isConnected() ? getImpl().rewind() : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> seekTo(long j) {
        return isConnected() ? getImpl().seekTo(j) : createDisconnectedFuture();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionResult> selectTrack(@NonNull SessionPlayer.TrackInfo trackInfo) {
        if (trackInfo != null) {
            return isConnected() ? getImpl().selectTrack(trackInfo) : createDisconnectedFuture();
        }
        throw new NullPointerException("TrackInfo shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> sendCustomCommand(@NonNull SessionCommand sessionCommand, @Nullable Bundle bundle) {
        if (sessionCommand == null) {
            throw new NullPointerException("command shouldn't be null");
        } else if (sessionCommand.getCommandCode() == 0) {
            return isConnected() ? getImpl().sendCustomCommand(sessionCommand, bundle) : createDisconnectedFuture();
        } else {
            throw new IllegalArgumentException("command should be a custom command");
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setMediaItem(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().setMediaItem(str) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("mediaId shouldn't be empty");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setPlaybackSpeed(float f) {
        if (f != 0.0f) {
            return isConnected() ? getImpl().setPlaybackSpeed(f) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("speed must not be zero");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setPlaylist(@NonNull List<String> list, @Nullable MediaMetadata mediaMetadata) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                if (TextUtils.isEmpty(list.get(i))) {
                    throw new IllegalArgumentException("list shouldn't contain empty id, index=" + i);
                }
            }
            return isConnected() ? getImpl().setPlaylist(list, mediaMetadata) : createDisconnectedFuture();
        }
        throw new NullPointerException("list shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setRating(@NonNull String str, @NonNull Rating rating) {
        if (str == null) {
            throw new NullPointerException("mediaId shouldn't be null");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("mediaId shouldn't be empty");
        } else if (rating != null) {
            return isConnected() ? getImpl().setRating(str, rating) : createDisconnectedFuture();
        } else {
            throw new NullPointerException("rating shouldn't be null");
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setRepeatMode(int i) {
        return isConnected() ? getImpl().setRepeatMode(i) : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setShuffleMode(int i) {
        return isConnected() ? getImpl().setShuffleMode(i) : createDisconnectedFuture();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionResult> setSurface(@Nullable Surface surface) {
        return isConnected() ? getImpl().setSurface(surface) : createDisconnectedFuture();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setTimeDiff(Long l) {
        this.mTimeDiff = l;
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> setVolumeTo(int i, int i2) {
        return isConnected() ? getImpl().setVolumeTo(i, i2) : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> skipBackward() {
        return isConnected() ? getImpl().skipBackward() : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> skipForward() {
        return isConnected() ? getImpl().skipForward() : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> skipToNextPlaylistItem() {
        return isConnected() ? getImpl().skipToNextItem() : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> skipToPlaylistItem(@IntRange(from = 0) int i) {
        if (i >= 0) {
            return isConnected() ? getImpl().skipToPlaylistItem(i) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> skipToPreviousPlaylistItem() {
        return isConnected() ? getImpl().skipToPreviousItem() : createDisconnectedFuture();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void unregisterExtraCallback(@NonNull ControllerCallback controllerCallback) {
        if (controllerCallback != null) {
            synchronized (this.mLock) {
                int size = this.mExtraCallbacks.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    } else if (this.mExtraCallbacks.get(size).first == controllerCallback) {
                        this.mExtraCallbacks.remove(size);
                        break;
                    } else {
                        size--;
                    }
                }
            }
            return;
        }
        throw new NullPointerException("callback shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionResult> updatePlaylistMetadata(@Nullable MediaMetadata mediaMetadata) {
        return isConnected() ? getImpl().updatePlaylistMetadata(mediaMetadata) : createDisconnectedFuture();
    }
}
