package androidx.media2.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.VolumeProviderCompat;
import androidx.media2.common.BaseResult;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SequencedFutureManager;
import androidx.media2.session.futures.AbstractResolvableFuture;
import androidx.media2.session.futures.ResolvableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase.class */
public class MediaSessionImplBase implements MediaSession.MediaSessionImpl {
    public static final String DEFAULT_MEDIA_SESSION_TAG_DELIM = ".";
    public static final String DEFAULT_MEDIA_SESSION_TAG_PREFIX = "androidx.media2.session.id";
    public static final int ITEM_NONE = -1;
    @GuardedBy("STATIC_LOCK")
    public static boolean sComponentNamesInitialized = false;
    @GuardedBy("STATIC_LOCK")
    public static ComponentName sServiceComponentName;
    public final AudioManager mAudioManager;
    public final BroadcastReceiver mBroadcastReceiver;
    @GuardedBy("mLock")
    public MediaBrowserServiceCompat mBrowserServiceLegacyStub;
    public final MediaSession.SessionCallback mCallback;
    public final Executor mCallbackExecutor;
    public final Context mContext;
    public final MediaSession mInstance;
    public final PendingIntent mMediaButtonIntent;
    @GuardedBy("mLock")
    public MediaController.PlaybackInfo mPlaybackInfo;
    @GuardedBy("mLock")
    public SessionPlayer mPlayer;
    public final PendingIntent mSessionActivity;
    public final MediaSessionCompat mSessionCompat;
    public final String mSessionId;
    public final MediaSessionLegacyStub mSessionLegacyStub;
    public final SessionToken mSessionToken;
    public final Uri mSessionUri;
    public static final Object STATIC_LOCK = new Object();
    public static final String TAG = "MSImplBase";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final SessionResult RESULT_WHEN_CLOSED = new SessionResult(1);
    public final Object mLock = new Object();
    public final HandlerThread mHandlerThread = new HandlerThread("MediaSession_Thread");
    public final Handler mHandler = new Handler(this.mHandlerThread.getLooper());
    public final MediaSessionStub mSessionStub = new MediaSessionStub(this);
    public final SessionPlayer.PlayerCallback mPlayerCallback = new SessionPlayerCallback(this);

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$CombinedCommandResultFuture.class */
    public static final class CombinedCommandResultFuture<T extends BaseResult> extends AbstractResolvableFuture<T> {
        public final AbstractFutureC9382a<T>[] mFutures;
        public AtomicInteger mSuccessCount = new AtomicInteger(0);

        public CombinedCommandResultFuture(Executor executor, AbstractFutureC9382a<T>[] aVarArr) {
            final int i = 0;
            this.mFutures = aVarArr;
            while (true) {
                AbstractFutureC9382a<T>[] aVarArr2 = this.mFutures;
                if (i < aVarArr2.length) {
                    aVarArr2[i].addListener(new Runnable() { // from class: androidx.media2.session.MediaSessionImplBase.CombinedCommandResultFuture.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int i2 = 0;
                            try {
                                T t = CombinedCommandResultFuture.this.mFutures[i].get();
                                int resultCode = t.getResultCode();
                                if (resultCode != 0 && resultCode != 1) {
                                    for (int i3 = 0; i3 < CombinedCommandResultFuture.this.mFutures.length; i3++) {
                                        if (!CombinedCommandResultFuture.this.mFutures[i3].isCancelled() && !CombinedCommandResultFuture.this.mFutures[i3].isDone() && i != i3) {
                                            CombinedCommandResultFuture.this.mFutures[i3].cancel(true);
                                        }
                                    }
                                    CombinedCommandResultFuture.this.set(t);
                                } else if (CombinedCommandResultFuture.this.mSuccessCount.incrementAndGet() == CombinedCommandResultFuture.this.mFutures.length) {
                                    CombinedCommandResultFuture.this.set(t);
                                }
                            } catch (Exception e) {
                                while (true) {
                                    CombinedCommandResultFuture combinedCommandResultFuture = CombinedCommandResultFuture.this;
                                    AbstractFutureC9382a<T>[] aVarArr3 = combinedCommandResultFuture.mFutures;
                                    if (i2 < aVarArr3.length) {
                                        if (!aVarArr3[i2].isCancelled() && !CombinedCommandResultFuture.this.mFutures[i2].isDone() && i != i2) {
                                            CombinedCommandResultFuture.this.mFutures[i2].cancel(true);
                                        }
                                        i2++;
                                    } else {
                                        combinedCommandResultFuture.setException(e);
                                        return;
                                    }
                                }
                            }
                        }
                    }, executor);
                    i++;
                } else {
                    return;
                }
            }
        }

        public static <U extends BaseResult> CombinedCommandResultFuture create(Executor executor, AbstractFutureC9382a<U>... aVarArr) {
            return new CombinedCommandResultFuture(executor, aVarArr);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener.class */
    public static class CurrentMediaItemListener implements MediaItem.OnMetadataChangedListener {
        public final WeakReference<MediaSessionImplBase> mSession;

        public CurrentMediaItemListener(MediaSessionImplBase mediaSessionImplBase) {
            this.mSession = new WeakReference<>(mediaSessionImplBase);
        }

        @Override // androidx.media2.common.MediaItem.OnMetadataChangedListener
        public void onMetadataChanged(final MediaItem mediaItem) {
            MediaItem currentMediaItem;
            final MediaSessionImplBase mediaSessionImplBase = this.mSession.get();
            if (mediaSessionImplBase != null && mediaItem != null && (currentMediaItem = mediaSessionImplBase.getCurrentMediaItem()) != null && mediaItem.equals(currentMediaItem)) {
                mediaSessionImplBase.dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.CurrentMediaItemListener.1
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                        controllerCb.onCurrentMediaItemChanged(i, mediaItem, mediaSessionImplBase.getCurrentMediaItemIndex(), mediaSessionImplBase.getPreviousMediaItemIndex(), mediaSessionImplBase.getNextMediaItemIndex());
                    }
                });
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$MediaButtonReceiver.class */
    public final class MediaButtonReceiver extends BroadcastReceiver {
        public MediaButtonReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyEvent keyEvent;
            if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && ObjectsCompat.equals(intent.getData(), MediaSessionImplBase.this.mSessionUri) && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                MediaSessionImplBase.this.getSessionCompat().getController().dispatchMediaButtonEvent(keyEvent);
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$PlayerTask.class */
    public interface PlayerTask<T> {
        T run(@NonNull SessionPlayer sessionPlayer) throws Exception;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$PlaylistItemListener.class */
    public static class PlaylistItemListener implements MediaItem.OnMetadataChangedListener {
        public final WeakReference<MediaSessionImplBase> mSession;

        public PlaylistItemListener(MediaSessionImplBase mediaSessionImplBase) {
            this.mSession = new WeakReference<>(mediaSessionImplBase);
        }

        @Override // androidx.media2.common.MediaItem.OnMetadataChangedListener
        public void onMetadataChanged(MediaItem mediaItem) {
            final List<MediaItem> playlist;
            final MediaSessionImplBase mediaSessionImplBase = this.mSession.get();
            if (!(mediaSessionImplBase == null || mediaItem == null || (playlist = mediaSessionImplBase.getPlaylist()) == null)) {
                for (int i = 0; i < playlist.size(); i++) {
                    if (mediaItem.equals(playlist.get(i))) {
                        mediaSessionImplBase.dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.PlaylistItemListener.1
                            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                            public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                                controllerCb.onPlaylistChanged(i2, playlist, mediaSessionImplBase.getPlaylistMetadata(), mediaSessionImplBase.getCurrentMediaItemIndex(), mediaSessionImplBase.getPreviousMediaItemIndex(), mediaSessionImplBase.getNextMediaItemIndex());
                            }
                        });
                        return;
                    }
                }
            }
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$RemoteControllerTask.class */
    public interface RemoteControllerTask {
        void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSessionImplBase$SessionPlayerCallback.class */
    public static class SessionPlayerCallback extends SessionPlayer.PlayerCallback {
        public final CurrentMediaItemListener mCurrentItemChangedListener;
        public List<MediaItem> mList;
        public MediaItem mMediaItem;
        public final PlaylistItemListener mPlaylistItemChangedListener;
        public final WeakReference<MediaSessionImplBase> mSession;

        public SessionPlayerCallback(MediaSessionImplBase mediaSessionImplBase) {
            this.mSession = new WeakReference<>(mediaSessionImplBase);
            this.mCurrentItemChangedListener = new CurrentMediaItemListener(mediaSessionImplBase);
            this.mPlaylistItemChangedListener = new PlaylistItemListener(mediaSessionImplBase);
        }

        private void dispatchRemoteControllerTask(@NonNull SessionPlayer sessionPlayer, @NonNull RemoteControllerTask remoteControllerTask) {
            MediaSessionImplBase session = getSession();
            if (session != null && sessionPlayer != null && session.getPlayer() == sessionPlayer) {
                session.dispatchRemoteControllerTaskWithoutReturn(remoteControllerTask);
            }
        }

        private MediaSessionImplBase getSession() {
            MediaSessionImplBase mediaSessionImplBase = this.mSession.get();
            if (mediaSessionImplBase == null && MediaSessionImplBase.DEBUG) {
                new IllegalStateException();
            }
            return mediaSessionImplBase;
        }

        private void updateDurationIfNeeded(@NonNull final SessionPlayer sessionPlayer, @Nullable MediaItem mediaItem) {
            if (mediaItem != null && mediaItem.equals(sessionPlayer.getCurrentMediaItem())) {
                long duration = sessionPlayer.getDuration();
                if (duration > 0 && duration != Long.MIN_VALUE) {
                    MediaMetadata metadata = mediaItem.getMetadata();
                    if (metadata == null) {
                        metadata = new MediaMetadata.Builder().putLong(MediaMetadata.METADATA_KEY_DURATION, duration).putString(MediaMetadata.METADATA_KEY_MEDIA_ID, mediaItem.getMediaId()).putLong(MediaMetadata.METADATA_KEY_PLAYABLE, 1L).build();
                    } else if (!metadata.containsKey(MediaMetadata.METADATA_KEY_DURATION)) {
                        metadata = new MediaMetadata.Builder(metadata).putLong(MediaMetadata.METADATA_KEY_DURATION, duration).build();
                    } else {
                        long j = metadata.getLong(MediaMetadata.METADATA_KEY_DURATION);
                        if (duration != j) {
                            String str = "duration mismatch for an item. duration from player=" + duration + " duration from metadata=" + j + ". May be a timing issue?";
                        } else {
                            return;
                        }
                    }
                    if (metadata != null) {
                        final MediaSessionImplBase session = getSession();
                        mediaItem.setMetadata(metadata);
                        dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.16
                            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                                controllerCb.onPlaylistChanged(i, sessionPlayer.getPlaylist(), sessionPlayer.getPlaylistMetadata(), session.getCurrentMediaItemIndex(), session.getPreviousMediaItemIndex(), session.getNextMediaItemIndex());
                            }
                        });
                    }
                }
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onAudioAttributesChanged(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
            MediaController.PlaybackInfo playbackInfo;
            MediaSessionImplBase session = getSession();
            if (session != null && sessionPlayer != null && session.getPlayer() == sessionPlayer) {
                MediaController.PlaybackInfo createPlaybackInfo = session.createPlaybackInfo(sessionPlayer, audioAttributesCompat);
                synchronized (session.mLock) {
                    playbackInfo = session.mPlaybackInfo;
                    session.mPlaybackInfo = createPlaybackInfo;
                }
                if (!ObjectsCompat.equals(createPlaybackInfo, playbackInfo)) {
                    session.notifyPlaybackInfoChangedNotLocked(createPlaybackInfo);
                }
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onBufferingStateChanged(final SessionPlayer sessionPlayer, final MediaItem mediaItem, final int i) {
            updateDurationIfNeeded(sessionPlayer, mediaItem);
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.3
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                    controllerCb.onBufferingStateChanged(i2, mediaItem, i, sessionPlayer.getBufferedPosition(), SystemClock.elapsedRealtime(), sessionPlayer.getCurrentPosition());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, final MediaItem mediaItem) {
            final MediaSessionImplBase session = getSession();
            if (session != null && sessionPlayer != null && session.getPlayer() == sessionPlayer) {
                synchronized (session.mLock) {
                    if (this.mMediaItem != null) {
                        this.mMediaItem.removeOnMetadataChangedListener(this.mCurrentItemChangedListener);
                    }
                    if (mediaItem != null) {
                        mediaItem.addOnMetadataChangedListener(session.mCallbackExecutor, this.mCurrentItemChangedListener);
                    }
                    this.mMediaItem = mediaItem;
                }
                updateDurationIfNeeded(sessionPlayer, mediaItem);
                session.dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.1
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                        controllerCb.onCurrentMediaItemChanged(i, mediaItem, session.getCurrentMediaItemIndex(), session.getPreviousMediaItemIndex(), session.getNextMediaItemIndex());
                    }
                });
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.10
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onPlaybackCompleted(i);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaybackSpeedChanged(final SessionPlayer sessionPlayer, final float f) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.4
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onPlaybackSpeedChanged(i, SystemClock.elapsedRealtime(), sessionPlayer.getCurrentPosition(), f);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlayerStateChanged(final SessionPlayer sessionPlayer, final int i) {
            MediaSessionImplBase session = getSession();
            if (session != null && sessionPlayer != null && session.getPlayer() == sessionPlayer) {
                session.getCallback().onPlayerStateChanged(session.getInstance(), i);
                updateDurationIfNeeded(sessionPlayer, sessionPlayer.getCurrentMediaItem());
                session.dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.2
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                        controllerCb.onPlayerStateChanged(i2, SystemClock.elapsedRealtime(), sessionPlayer.getCurrentPosition(), i);
                    }
                });
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaylistChanged(SessionPlayer sessionPlayer, final List<MediaItem> list, final MediaMetadata mediaMetadata) {
            final MediaSessionImplBase session = getSession();
            if (!(session == null || sessionPlayer == null || session.getPlayer() != sessionPlayer)) {
                synchronized (session.mLock) {
                    if (this.mList != null) {
                        for (int i = 0; i < this.mList.size(); i++) {
                            this.mList.get(i).removeOnMetadataChangedListener(this.mPlaylistItemChangedListener);
                        }
                    }
                    if (list != null) {
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            list.get(i2).addOnMetadataChangedListener(session.mCallbackExecutor, this.mPlaylistItemChangedListener);
                        }
                    }
                    this.mList = list;
                }
                dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.6
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i3) throws RemoteException {
                        controllerCb.onPlaylistChanged(i3, list, mediaMetadata, session.getCurrentMediaItemIndex(), session.getPreviousMediaItemIndex(), session.getNextMediaItemIndex());
                    }
                });
            }
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onPlaylistMetadataChanged(SessionPlayer sessionPlayer, final MediaMetadata mediaMetadata) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.7
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onPlaylistMetadataChanged(i, mediaMetadata);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onRepeatModeChanged(SessionPlayer sessionPlayer, final int i) {
            final MediaSessionImplBase session = getSession();
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.8
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                    controllerCb.onRepeatModeChanged(i2, i, session.getCurrentMediaItemIndex(), session.getPreviousMediaItemIndex(), session.getNextMediaItemIndex());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onSeekCompleted(final SessionPlayer sessionPlayer, final long j) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.5
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onSeekCompleted(i, SystemClock.elapsedRealtime(), sessionPlayer.getCurrentPosition(), j);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onShuffleModeChanged(SessionPlayer sessionPlayer, final int i) {
            final MediaSessionImplBase session = getSession();
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.9
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                    controllerCb.onShuffleModeChanged(i2, i, session.getCurrentMediaItemIndex(), session.getPreviousMediaItemIndex(), session.getNextMediaItemIndex());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onSubtitleData(@NonNull SessionPlayer sessionPlayer, @NonNull final MediaItem mediaItem, @NonNull final SessionPlayer.TrackInfo trackInfo, @NonNull final SubtitleData subtitleData) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.15
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onSubtitleData(i, mediaItem, trackInfo, subtitleData);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackDeselected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.14
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onTrackDeselected(i, trackInfo);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackInfoChanged(SessionPlayer sessionPlayer, final List<SessionPlayer.TrackInfo> list) {
            final MediaSessionImplBase session = getSession();
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.12
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onTrackInfoChanged(i, list, session.getSelectedTrack(1), session.getSelectedTrack(2), session.getSelectedTrack(4), session.getSelectedTrack(5));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onTrackSelected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.13
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onTrackSelected(i, trackInfo);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        public void onVideoSizeChangedInternal(@NonNull SessionPlayer sessionPlayer, @NonNull final MediaItem mediaItem, @NonNull final VideoSize videoSize) {
            dispatchRemoteControllerTask(sessionPlayer, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.SessionPlayerCallback.11
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onVideoSizeChanged(i, mediaItem, videoSize);
                }
            });
        }
    }

    public MediaSessionImplBase(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.SessionCallback sessionCallback, Bundle bundle) {
        ComponentName componentName;
        this.mContext = context;
        this.mInstance = mediaSession;
        this.mHandlerThread.start();
        this.mSessionActivity = pendingIntent;
        this.mCallback = sessionCallback;
        this.mCallbackExecutor = executor;
        this.mAudioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.mSessionId = str;
        this.mSessionUri = new Uri.Builder().scheme(MediaSessionImplBase.class.getName()).appendPath(str).appendPath(String.valueOf(SystemClock.elapsedRealtime())).build();
        this.mSessionToken = new SessionToken(new SessionTokenImplBase(Process.myUid(), 0, context.getPackageName(), this.mSessionStub, bundle));
        String join = TextUtils.join(DEFAULT_MEDIA_SESSION_TAG_DELIM, new String[]{DEFAULT_MEDIA_SESSION_TAG_PREFIX, str});
        synchronized (STATIC_LOCK) {
            if (!sComponentNamesInitialized) {
                sServiceComponentName = getServiceComponentByAction(MediaLibraryService.SERVICE_INTERFACE);
                if (sServiceComponentName == null) {
                    sServiceComponentName = getServiceComponentByAction(MediaSessionService.SERVICE_INTERFACE);
                }
                sComponentNamesInitialized = true;
            }
            componentName = sServiceComponentName;
        }
        if (componentName == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", this.mSessionUri);
            intent.setPackage(context.getPackageName());
            this.mMediaButtonIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
            componentName = new ComponentName(context, context.getClass());
            this.mBroadcastReceiver = new MediaButtonReceiver();
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
            intentFilter.addDataScheme(this.mSessionUri.getScheme());
            context.registerReceiver(this.mBroadcastReceiver, intentFilter);
        } else {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", this.mSessionUri);
            intent2.setComponent(componentName);
            if (Build.VERSION.SDK_INT >= 26) {
                this.mMediaButtonIntent = PendingIntent.getForegroundService(this.mContext, 0, intent2, 0);
            } else {
                this.mMediaButtonIntent = PendingIntent.getService(this.mContext, 0, intent2, 0);
            }
            this.mBroadcastReceiver = null;
        }
        this.mSessionCompat = new MediaSessionCompat(context, join, componentName, this.mMediaButtonIntent, this.mSessionToken.getExtras(), this.mSessionToken);
        this.mSessionLegacyStub = new MediaSessionLegacyStub(this);
        this.mSessionCompat.setSessionActivity(pendingIntent);
        this.mSessionCompat.setFlags(4);
        updatePlayer(sessionPlayer);
        this.mSessionCompat.setCallback(this.mSessionLegacyStub, this.mHandler);
        this.mSessionCompat.setActive(true);
    }

    private AbstractFutureC9382a<SessionPlayer.PlayerResult> dispatchPlayerTask(@NonNull PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>> playerTask) {
        ResolvableFuture create = ResolvableFuture.create();
        create.set(new SessionPlayer.PlayerResult(-2, null));
        return (AbstractFutureC9382a) dispatchPlayerTask(playerTask, create);
    }

    private <T> T dispatchPlayerTask(@NonNull PlayerTask<T> playerTask, T t) {
        SessionPlayer sessionPlayer;
        synchronized (this.mLock) {
            sessionPlayer = this.mPlayer;
        }
        try {
            if (!isClosed()) {
                T run = playerTask.run(sessionPlayer);
                if (run != null) {
                    return run;
                }
            } else if (DEBUG) {
                new IllegalStateException();
            }
        } catch (Exception e) {
        }
        return t;
    }

    private AbstractFutureC9382a<SessionResult> dispatchRemoteControllerTask(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull RemoteControllerTask remoteControllerTask) {
        SequencedFutureManager.SequencedFuture sequencedFuture;
        if (!isConnected(controllerInfo)) {
            return SessionResult.createFutureWithResult(-100);
        }
        try {
            SequencedFutureManager sequencedFutureManager = this.mSessionStub.getConnectedControllersManager().getSequencedFutureManager(controllerInfo);
            int i = 0;
            if (sequencedFutureManager != null) {
                SequencedFutureManager.SequencedFuture createSequencedFuture = sequencedFutureManager.createSequencedFuture(RESULT_WHEN_CLOSED);
                i = createSequencedFuture.getSequenceNumber();
                sequencedFuture = createSequencedFuture;
            } else {
                sequencedFuture = SessionResult.createFutureWithResult(0);
            }
            remoteControllerTask.run(controllerInfo.getControllerCb(), i);
            return sequencedFuture;
        } catch (DeadObjectException e) {
            onDeadObjectException(controllerInfo, e);
            return SessionResult.createFutureWithResult(-100);
        } catch (RemoteException e2) {
            String str = "Exception in " + controllerInfo.toString();
            return SessionResult.createFutureWithResult(-1);
        }
    }

    @Nullable
    private MediaItem getCurrentMediaItemOrNull() {
        SessionPlayer sessionPlayer;
        synchronized (this.mLock) {
            sessionPlayer = this.mPlayer;
        }
        return sessionPlayer != null ? sessionPlayer.getCurrentMediaItem() : null;
    }

    private int getLegacyStreamType(@Nullable AudioAttributesCompat audioAttributesCompat) {
        int legacyStreamType;
        int i = 3;
        if (!(audioAttributesCompat == null || (legacyStreamType = audioAttributesCompat.getLegacyStreamType()) == Integer.MIN_VALUE)) {
            i = legacyStreamType;
        }
        return i;
    }

    @Nullable
    private List<MediaItem> getPlaylistOrNull() {
        SessionPlayer sessionPlayer;
        synchronized (this.mLock) {
            sessionPlayer = this.mPlayer;
        }
        return sessionPlayer != null ? sessionPlayer.getPlaylist() : null;
    }

    @Nullable
    private ComponentName getServiceComponentByAction(@NonNull String str) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(this.mContext.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            return null;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
    }

    @SuppressLint({"WrongConstant"})
    private void notifyPlayerUpdatedNotLocked(SessionPlayer sessionPlayer) {
        List<MediaItem> playlist = sessionPlayer.getPlaylist();
        final List<MediaItem> playlistOrNull = getPlaylistOrNull();
        if (!ObjectsCompat.equals(playlist, playlistOrNull)) {
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.44
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onPlaylistChanged(i, playlistOrNull, MediaSessionImplBase.this.getPlaylistMetadata(), MediaSessionImplBase.this.getCurrentMediaItemIndex(), MediaSessionImplBase.this.getPreviousMediaItemIndex(), MediaSessionImplBase.this.getNextMediaItemIndex());
                }
            });
        } else {
            MediaMetadata playlistMetadata = sessionPlayer.getPlaylistMetadata();
            final MediaMetadata playlistMetadata2 = getPlaylistMetadata();
            if (!ObjectsCompat.equals(playlistMetadata, playlistMetadata2)) {
                dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.45
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                        controllerCb.onPlaylistMetadataChanged(i, playlistMetadata2);
                    }
                });
            }
        }
        MediaItem currentMediaItem = sessionPlayer.getCurrentMediaItem();
        final MediaItem currentMediaItemOrNull = getCurrentMediaItemOrNull();
        if (!ObjectsCompat.equals(currentMediaItem, currentMediaItemOrNull)) {
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.46
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onCurrentMediaItemChanged(i, currentMediaItemOrNull, MediaSessionImplBase.this.getCurrentMediaItemIndex(), MediaSessionImplBase.this.getPreviousMediaItemIndex(), MediaSessionImplBase.this.getNextMediaItemIndex());
                }
            });
        }
        final int repeatMode = getRepeatMode();
        if (sessionPlayer.getRepeatMode() != repeatMode) {
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.47
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onRepeatModeChanged(i, repeatMode, MediaSessionImplBase.this.getCurrentMediaItemIndex(), MediaSessionImplBase.this.getPreviousMediaItemIndex(), MediaSessionImplBase.this.getNextMediaItemIndex());
                }
            });
        }
        final int shuffleMode = getShuffleMode();
        if (sessionPlayer.getShuffleMode() != shuffleMode) {
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.48
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onShuffleModeChanged(i, shuffleMode, MediaSessionImplBase.this.getCurrentMediaItemIndex(), MediaSessionImplBase.this.getPreviousMediaItemIndex(), MediaSessionImplBase.this.getNextMediaItemIndex());
                }
            });
        }
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        final long currentPosition = getCurrentPosition();
        final int playerState = getPlayerState();
        dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.49
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                controllerCb.onPlayerStateChanged(i, elapsedRealtime, currentPosition, playerState);
            }
        });
        final MediaItem currentMediaItemOrNull2 = getCurrentMediaItemOrNull();
        if (currentMediaItemOrNull2 != null) {
            final int bufferingState = getBufferingState();
            final long bufferedPosition = getBufferedPosition();
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.50
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onBufferingStateChanged(i, currentMediaItemOrNull2, bufferingState, bufferedPosition, SystemClock.elapsedRealtime(), MediaSessionImplBase.this.getCurrentPosition());
                }
            });
        }
        final float playbackSpeed = getPlaybackSpeed();
        if (playbackSpeed != sessionPlayer.getPlaybackSpeed()) {
            dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.51
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onPlaybackSpeedChanged(i, elapsedRealtime, currentPosition, playbackSpeed);
                }
            });
        }
    }

    private void onDeadObjectException(MediaSession.ControllerInfo controllerInfo, DeadObjectException deadObjectException) {
        if (DEBUG) {
            String str = controllerInfo.toString() + " is gone";
        }
        this.mSessionStub.getConnectedControllersManager().removeController(controllerInfo);
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> addPlaylistItem(final int i, @NonNull final MediaItem mediaItem) {
        if (i < 0) {
            throw new IllegalArgumentException("index shouldn't be negative");
        } else if (mediaItem != null) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.26
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.addPlaylistItem(i, mediaItem);
                }
            });
        } else {
            throw new NullPointerException("item shouldn't be null");
        }
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public void broadcastCustomCommand(@NonNull final SessionCommand sessionCommand, @Nullable final Bundle bundle) {
        dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.6
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                controllerCb.sendCustomCommand(i, sessionCommand, bundle);
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            if (!isClosed()) {
                if (DEBUG) {
                    String str = "Closing session, id=" + getId() + ", token=" + getToken();
                }
                this.mPlayer.unregisterPlayerCallback(this.mPlayerCallback);
                this.mSessionCompat.release();
                this.mMediaButtonIntent.cancel();
                if (this.mBroadcastReceiver != null) {
                    this.mContext.unregisterReceiver(this.mBroadcastReceiver);
                }
                this.mCallback.onSessionClosed(this.mInstance);
                dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.3
                    @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                    public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                        controllerCb.onDisconnected(i);
                    }
                });
                this.mHandler.removeCallbacksAndMessages(null);
                if (this.mHandlerThread.isAlive()) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        this.mHandlerThread.quitSafely();
                    } else {
                        this.mHandlerThread.quit();
                    }
                }
            }
        }
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public void connectFromService(IMediaController iMediaController, String str, int i, int i2, @Nullable Bundle bundle) {
        this.mSessionStub.connect(iMediaController, str, i, i2, bundle);
    }

    public MediaBrowserServiceCompat createLegacyBrowserService(Context context, SessionToken sessionToken, MediaSessionCompat.Token token) {
        return new MediaSessionServiceLegacyStub(context, this, token);
    }

    @NonNull
    public MediaController.PlaybackInfo createPlaybackInfo(@NonNull SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat == null) {
            audioAttributesCompat = sessionPlayer.getAudioAttributes();
        }
        if (!(sessionPlayer instanceof RemoteSessionPlayer)) {
            int legacyStreamType = getLegacyStreamType(audioAttributesCompat);
            int i = 2;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 2;
                if (this.mAudioManager.isVolumeFixed()) {
                    i = 0;
                }
            }
            return MediaController.PlaybackInfo.createPlaybackInfo(1, audioAttributesCompat, i, this.mAudioManager.getStreamMaxVolume(legacyStreamType), this.mAudioManager.getStreamVolume(legacyStreamType));
        }
        RemoteSessionPlayer remoteSessionPlayer = (RemoteSessionPlayer) sessionPlayer;
        return MediaController.PlaybackInfo.createPlaybackInfo(2, audioAttributesCompat, remoteSessionPlayer.getVolumeControlType(), remoteSessionPlayer.getMaxVolume(), remoteSessionPlayer.getVolume());
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public PlaybackStateCompat createPlaybackStateCompat() {
        PlaybackStateCompat build;
        synchronized (this.mLock) {
            int convertToPlaybackStateCompatState = MediaUtils.convertToPlaybackStateCompatState(getPlayerState(), getBufferingState());
            PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
            builder.setState(convertToPlaybackStateCompatState, getCurrentPosition(), getPlaybackSpeed(), SystemClock.elapsedRealtime());
            builder.setActions(3670015L);
            builder.setBufferedPosition(getBufferedPosition());
            build = builder.build();
        }
        return build;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> deselectTrack(final SessionPlayer.TrackInfo trackInfo) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.42
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.deselectTrackInternal(trackInfo);
            }
        });
    }

    public void dispatchRemoteControllerTaskWithoutReturn(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull RemoteControllerTask remoteControllerTask) {
        if (isConnected(controllerInfo)) {
            try {
                SequencedFutureManager sequencedFutureManager = this.mSessionStub.getConnectedControllersManager().getSequencedFutureManager(controllerInfo);
                remoteControllerTask.run(controllerInfo.getControllerCb(), sequencedFutureManager != null ? sequencedFutureManager.obtainNextSequenceNumber() : 0);
            } catch (DeadObjectException e) {
                onDeadObjectException(controllerInfo, e);
            } catch (RemoteException e2) {
                String str = "Exception in " + controllerInfo.toString();
            }
        }
    }

    public void dispatchRemoteControllerTaskWithoutReturn(@NonNull RemoteControllerTask remoteControllerTask) {
        List<MediaSession.ControllerInfo> connectedControllers = this.mSessionStub.getConnectedControllersManager().getConnectedControllers();
        connectedControllers.add(this.mSessionLegacyStub.getControllersForAll());
        for (int i = 0; i < connectedControllers.size(); i++) {
            dispatchRemoteControllerTaskWithoutReturn(connectedControllers.get(i), remoteControllerTask);
        }
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public long getBufferedPosition() {
        return ((Long) dispatchPlayerTask(new PlayerTask<Long>() { // from class: androidx.media2.session.MediaSessionImplBase.15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Long run(SessionPlayer sessionPlayer) throws Exception {
                if (MediaSessionImplBase.this.isInPlaybackState(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.getBufferedPosition());
                }
                return null;
            }
        }, Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public int getBufferingState() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getBufferingState());
            }
        }, 0)).intValue();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public MediaSession.SessionCallback getCallback() {
        return this.mCallback;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public Executor getCallbackExecutor() {
        return this.mCallbackExecutor;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    @NonNull
    public List<MediaSession.ControllerInfo> getConnectedControllers() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mSessionStub.getConnectedControllersManager().getConnectedControllers());
        arrayList.addAll(this.mSessionLegacyStub.getConnectedControllersManager().getConnectedControllers());
        return arrayList;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public Context getContext() {
        return this.mContext;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public MediaItem getCurrentMediaItem() {
        return (MediaItem) dispatchPlayerTask(new PlayerTask<MediaItem>() { // from class: androidx.media2.session.MediaSessionImplBase.29
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public MediaItem run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.getCurrentMediaItem();
            }
        }, null);
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public int getCurrentMediaItemIndex() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.30
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getCurrentMediaItemIndex());
            }
        }, -1)).intValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public long getCurrentPosition() {
        return ((Long) dispatchPlayerTask(new PlayerTask<Long>() { // from class: androidx.media2.session.MediaSessionImplBase.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Long run(SessionPlayer sessionPlayer) throws Exception {
                if (MediaSessionImplBase.this.isInPlaybackState(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.getCurrentPosition());
                }
                return null;
            }
        }, Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public long getDuration() {
        return ((Long) dispatchPlayerTask(new PlayerTask<Long>() { // from class: androidx.media2.session.MediaSessionImplBase.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Long run(SessionPlayer sessionPlayer) throws Exception {
                if (MediaSessionImplBase.this.isInPlaybackState(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.getDuration());
                }
                return null;
            }
        }, Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public String getId() {
        return this.mSessionId;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    @NonNull
    public MediaSession getInstance() {
        return this.mInstance;
    }

    public MediaBrowserServiceCompat getLegacyBrowserService() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat;
        synchronized (this.mLock) {
            mediaBrowserServiceCompat = this.mBrowserServiceLegacyStub;
        }
        return mediaBrowserServiceCompat;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public IBinder getLegacyBrowserServiceBinder() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat;
        synchronized (this.mLock) {
            if (this.mBrowserServiceLegacyStub == null) {
                this.mBrowserServiceLegacyStub = createLegacyBrowserService(this.mContext, this.mSessionToken, this.mSessionCompat.getSessionToken());
            }
            mediaBrowserServiceCompat = this.mBrowserServiceLegacyStub;
        }
        return mediaBrowserServiceCompat.onBind(new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE));
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public int getNextMediaItemIndex() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.32
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getNextMediaItemIndex());
            }
        }, -1)).intValue();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public MediaController.PlaybackInfo getPlaybackInfo() {
        MediaController.PlaybackInfo playbackInfo;
        synchronized (this.mLock) {
            playbackInfo = this.mPlaybackInfo;
        }
        return playbackInfo;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public float getPlaybackSpeed() {
        return ((Float) dispatchPlayerTask(new PlayerTask<Float>() { // from class: androidx.media2.session.MediaSessionImplBase.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Float run(SessionPlayer sessionPlayer) throws Exception {
                if (MediaSessionImplBase.this.isInPlaybackState(sessionPlayer)) {
                    return Float.valueOf(sessionPlayer.getPlaybackSpeed());
                }
                return null;
            }
        }, Float.valueOf(1.0f))).floatValue();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    @NonNull
    public SessionPlayer getPlayer() {
        SessionPlayer sessionPlayer;
        synchronized (this.mLock) {
            sessionPlayer = this.mPlayer;
        }
        return sessionPlayer;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public int getPlayerState() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getPlayerState());
            }
        }, 3)).intValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public List<MediaItem> getPlaylist() {
        return (List) dispatchPlayerTask(new PlayerTask<List<MediaItem>>() { // from class: androidx.media2.session.MediaSessionImplBase.19
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public List<MediaItem> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.getPlaylist();
            }
        }, null);
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public MediaMetadata getPlaylistMetadata() {
        return (MediaMetadata) dispatchPlayerTask(new PlayerTask<MediaMetadata>() { // from class: androidx.media2.session.MediaSessionImplBase.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public MediaMetadata run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.getPlaylistMetadata();
            }
        }, null);
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public int getPreviousMediaItemIndex() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.31
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getPreviousMediaItemIndex());
            }
        }, -1)).intValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public int getRepeatMode() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.34
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getRepeatMode());
            }
        }, 0)).intValue();
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public SessionPlayer.TrackInfo getSelectedTrack(final int i) {
        return (SessionPlayer.TrackInfo) dispatchPlayerTask(new PlayerTask<SessionPlayer.TrackInfo>() { // from class: androidx.media2.session.MediaSessionImplBase.43
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public SessionPlayer.TrackInfo run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.getSelectedTrackInternal(i);
            }
        }, null);
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public PendingIntent getSessionActivity() {
        return this.mSessionActivity;
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public MediaSessionCompat getSessionCompat() {
        return this.mSessionCompat;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public int getShuffleMode() {
        return ((Integer) dispatchPlayerTask(new PlayerTask<Integer>() { // from class: androidx.media2.session.MediaSessionImplBase.36
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public Integer run(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.getShuffleMode());
            }
        }, 0)).intValue();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    @NonNull
    public SessionToken getToken() {
        return this.mSessionToken;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        return (List) dispatchPlayerTask(new PlayerTask<List<SessionPlayer.TrackInfo>>() { // from class: androidx.media2.session.MediaSessionImplBase.40
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public List<SessionPlayer.TrackInfo> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.getTrackInfoInternal();
            }
        }, null);
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public Uri getUri() {
        return this.mSessionUri;
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public VideoSize getVideoSize() {
        return (VideoSize) dispatchPlayerTask(new PlayerTask<VideoSize>() { // from class: androidx.media2.session.MediaSessionImplBase.38
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public VideoSize run(@NonNull SessionPlayer sessionPlayer) {
                return sessionPlayer.getVideoSizeInternal();
            }
        }, new VideoSize(0, 0));
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public boolean isClosed() {
        return !this.mHandlerThread.isAlive();
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public boolean isConnected(MediaSession.ControllerInfo controllerInfo) {
        boolean z = false;
        if (controllerInfo == null) {
            return false;
        }
        if (controllerInfo.equals(this.mSessionLegacyStub.getControllersForAll())) {
            return true;
        }
        if (this.mSessionStub.getConnectedControllersManager().isConnected(controllerInfo) || this.mSessionLegacyStub.getConnectedControllersManager().isConnected(controllerInfo)) {
            z = true;
        }
        return z;
    }

    public boolean isInPlaybackState(@NonNull SessionPlayer sessionPlayer) {
        return (isClosed() || sessionPlayer.getPlayerState() == 0 || sessionPlayer.getPlayerState() == 3) ? false : true;
    }

    public void notifyPlaybackInfoChangedNotLocked(final MediaController.PlaybackInfo playbackInfo) {
        dispatchRemoteControllerTaskWithoutReturn(new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.52
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                controllerCb.onPlaybackInfoChanged(i, playbackInfo);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> pause() {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.pause();
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> play() {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                if (sessionPlayer.getPlayerState() != 0) {
                    return sessionPlayer.play();
                }
                AbstractFutureC9382a<SessionPlayer.PlayerResult> prepare = sessionPlayer.prepare();
                AbstractFutureC9382a<SessionPlayer.PlayerResult> play = sessionPlayer.play();
                if (prepare == null || play == null) {
                    return null;
                }
                return CombinedCommandResultFuture.create(MediaUtils.DIRECT_EXECUTOR, prepare, play);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> prepare() {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.prepare();
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> removePlaylistItem(final int i) {
        if (i >= 0) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.27
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.getPlaylist().size() ? SessionPlayer.PlayerResult.createFuture(-3) : sessionPlayer.removePlaylistItem(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> replacePlaylistItem(final int i, @NonNull final MediaItem mediaItem) {
        if (i < 0) {
            throw new IllegalArgumentException("index shouldn't be negative");
        } else if (mediaItem != null) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.28
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.replacePlaylistItem(i, mediaItem);
                }
            });
        } else {
            throw new NullPointerException("item shouldn't be null");
        }
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> seekTo(final long j) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.seekTo(j);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> selectTrack(final SessionPlayer.TrackInfo trackInfo) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.41
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.selectTrackInternal(trackInfo);
            }
        });
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public AbstractFutureC9382a<SessionResult> sendCustomCommand(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull final SessionCommand sessionCommand, @Nullable final Bundle bundle) {
        return dispatchRemoteControllerTask(controllerInfo, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.7
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                controllerCb.sendCustomCommand(i, sessionCommand, bundle);
            }
        });
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public void setAllowedCommands(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull final SessionCommandGroup sessionCommandGroup) {
        if (this.mSessionStub.getConnectedControllersManager().isConnected(controllerInfo)) {
            this.mSessionStub.getConnectedControllersManager().updateAllowedCommands(controllerInfo, sessionCommandGroup);
            dispatchRemoteControllerTaskWithoutReturn(controllerInfo, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.5
                @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
                public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                    controllerCb.onAllowedCommandsChanged(i, sessionCommandGroup);
                }
            });
            return;
        }
        this.mSessionLegacyStub.getConnectedControllersManager().updateAllowedCommands(controllerInfo, sessionCommandGroup);
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public AbstractFutureC9382a<SessionResult> setCustomLayout(@NonNull MediaSession.ControllerInfo controllerInfo, @NonNull final List<MediaSession.CommandButton> list) {
        return dispatchRemoteControllerTask(controllerInfo, new RemoteControllerTask() { // from class: androidx.media2.session.MediaSessionImplBase.4
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i) throws RemoteException {
                controllerCb.setCustomLayout(i, list);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setMediaItem(@NonNull final MediaItem mediaItem) {
        if (mediaItem != null) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.21
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.setMediaItem(mediaItem);
                }
            });
        }
        throw new NullPointerException("item shouldn't be null");
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaybackControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaybackSpeed(final float f) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.setPlaybackSpeed(f);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaylist(@NonNull final List<MediaItem> list, @Nullable final MediaMetadata mediaMetadata) {
        if (list != null) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.20
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.setPlaylist(list, mediaMetadata);
                }
            });
        }
        throw new NullPointerException("list shouldn't be null");
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setRepeatMode(final int i) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.35
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.setRepeatMode(i);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setShuffleMode(final int i) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.37
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.setShuffleMode(i);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlayer
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setSurface(final Surface surface) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.39
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(@NonNull SessionPlayer sessionPlayer) {
                return sessionPlayer.setSurfaceInternal(surface);
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToNextItem() {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.skipToNextPlaylistItem();
            }
        });
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPlaylistItem(final int i) {
        if (i >= 0) {
            return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.22
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
                public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.getPlaylist().size() ? SessionPlayer.PlayerResult.createFuture(-3) : sessionPlayer.skipToPlaylistItem(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPreviousItem() {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.23
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.skipToPreviousPlaylistItem();
            }
        });
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    @SuppressLint({"WrongConstant"})
    public void updatePlayer(@NonNull SessionPlayer sessionPlayer) {
        boolean z;
        SessionPlayer sessionPlayer2;
        MediaController.PlaybackInfo createPlaybackInfo = createPlaybackInfo(sessionPlayer, null);
        synchronized (this.mLock) {
            z = !createPlaybackInfo.equals(this.mPlaybackInfo);
            sessionPlayer2 = this.mPlayer;
            this.mPlayer = sessionPlayer;
            this.mPlaybackInfo = createPlaybackInfo;
            if (sessionPlayer2 != this.mPlayer) {
                if (sessionPlayer2 != null) {
                    sessionPlayer2.unregisterPlayerCallback(this.mPlayerCallback);
                }
                this.mPlayer.registerPlayerCallback(this.mCallbackExecutor, this.mPlayerCallback);
            }
        }
        if (sessionPlayer2 == null) {
            this.mSessionCompat.setPlaybackState(createPlaybackStateCompat());
        } else {
            if (sessionPlayer != sessionPlayer2) {
                final int playerState = getPlayerState();
                this.mCallbackExecutor.execute(new Runnable() { // from class: androidx.media2.session.MediaSessionImplBase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaSessionImplBase mediaSessionImplBase = MediaSessionImplBase.this;
                        mediaSessionImplBase.mCallback.onPlayerStateChanged(mediaSessionImplBase.getInstance(), playerState);
                    }
                });
                notifyPlayerUpdatedNotLocked(sessionPlayer2);
            }
            if (z) {
                notifyPlaybackInfoChangedNotLocked(createPlaybackInfo);
            }
        }
        if (sessionPlayer instanceof RemoteSessionPlayer) {
            final RemoteSessionPlayer remoteSessionPlayer = (RemoteSessionPlayer) sessionPlayer;
            this.mSessionCompat.setPlaybackToRemote(new VolumeProviderCompat(remoteSessionPlayer.getVolumeControlType(), remoteSessionPlayer.getMaxVolume(), remoteSessionPlayer.getVolume()) { // from class: androidx.media2.session.MediaSessionImplBase.2
                @Override // androidx.media.VolumeProviderCompat
                public void onAdjustVolume(int i) {
                    remoteSessionPlayer.adjustVolume(i);
                }

                @Override // androidx.media.VolumeProviderCompat
                public void onSetVolumeTo(int i) {
                    remoteSessionPlayer.setVolume(i);
                }
            });
            return;
        }
        this.mSessionCompat.setPlaybackToLocal(getLegacyStreamType(sessionPlayer.getAudioAttributes()));
    }

    @Override // androidx.media2.session.MediaSession.MediaSessionImpl
    public void updatePlayer(@NonNull SessionPlayer sessionPlayer, @Nullable SessionPlayer sessionPlayer2) {
    }

    @Override // androidx.media2.session.MediaInterface.SessionPlaylistControl
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> updatePlaylistMetadata(@Nullable final MediaMetadata mediaMetadata) {
        return dispatchPlayerTask(new PlayerTask<AbstractFutureC9382a<SessionPlayer.PlayerResult>>() { // from class: androidx.media2.session.MediaSessionImplBase.33
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.media2.session.MediaSessionImplBase.PlayerTask
            public AbstractFutureC9382a<SessionPlayer.PlayerResult> run(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.updatePlaylistMetadata(mediaMetadata);
            }
        });
    }
}
