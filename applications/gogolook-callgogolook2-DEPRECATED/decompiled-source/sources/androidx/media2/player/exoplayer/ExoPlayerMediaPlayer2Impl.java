package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaDrm;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PersistableBundle;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.MediaTimestamp;
import androidx.media2.player.PlaybackParams;
import androidx.media2.player.TimedMetaData;
import androidx.media2.player.exoplayer.ExoPlayerWrapper;
import androidx.media2.player.futures.ResolvableFuture;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl.class */
public final class ExoPlayerMediaPlayer2Impl extends MediaPlayer2 implements ExoPlayerWrapper.Listener {
    public static final String TAG = "ExoPlayerMediaPlayer2";
    @GuardedBy("mTaskLock")
    public Task mCurrentTask;
    @GuardedBy("mLock")
    public Pair<Executor, MediaPlayer2.DrmEventCallback> mExecutorAndDrmEventCallback;
    @GuardedBy("mLock")
    public Pair<Executor, MediaPlayer2.EventCallback> mExecutorAndEventCallback;
    public final ExoPlayerWrapper mPlayer;
    public final Handler mTaskHandler;
    @GuardedBy("mLock")
    public HandlerThread mHandlerThread = new HandlerThread("ExoMediaPlayer2Thread");
    @GuardedBy("mTaskLock")
    public final ArrayDeque<Task> mPendingTasks = new ArrayDeque<>();
    public final Object mTaskLock = new Object();
    public final Object mLock = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Mp2EventNotifier.class */
    public interface Mp2EventNotifier {
        void notify(MediaPlayer2.EventCallback eventCallback);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl$Task.class */
    public abstract class Task implements Runnable {
        public MediaItem mDSD;
        @GuardedBy("this")
        public boolean mDone;
        public final int mMediaCallType;
        public final boolean mNeedToWaitForEventToComplete;

        public Task(int i, boolean z) {
            this.mMediaCallType = i;
            this.mNeedToWaitForEventToComplete = z;
        }

        public abstract void process() throws IOException, MediaPlayer2.NoDrmSchemeException;

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int i = 0;
            if (this.mMediaCallType == 14) {
                synchronized (ExoPlayerMediaPlayer2Impl.this.mTaskLock) {
                    Task peekFirst = ExoPlayerMediaPlayer2Impl.this.mPendingTasks.peekFirst();
                    z = peekFirst != null && peekFirst.mMediaCallType == 14;
                }
            } else {
                z = false;
            }
            if (!z) {
                try {
                    if (this.mMediaCallType == 1000 || !ExoPlayerMediaPlayer2Impl.this.mPlayer.hasError()) {
                        process();
                    } else {
                        i = 1;
                    }
                } catch (IOException e) {
                    i = 4;
                } catch (IllegalArgumentException e2) {
                    i = 2;
                } catch (IllegalStateException e3) {
                    i = 1;
                } catch (SecurityException e4) {
                    i = 3;
                } catch (Exception e5) {
                    i = Integer.MIN_VALUE;
                }
            } else {
                i = 5;
            }
            this.mDSD = ExoPlayerMediaPlayer2Impl.this.mPlayer.getCurrentMediaItem();
            if (!this.mNeedToWaitForEventToComplete || i != 0 || z) {
                sendCompleteNotification(i);
                synchronized (ExoPlayerMediaPlayer2Impl.this.mTaskLock) {
                    ExoPlayerMediaPlayer2Impl.this.mCurrentTask = null;
                    ExoPlayerMediaPlayer2Impl.this.processPendingTask();
                }
            }
            synchronized (this) {
                this.mDone = true;
                notifyAll();
            }
        }

        public void sendCompleteNotification(final int i) {
            if (this.mMediaCallType < 1000) {
                ExoPlayerMediaPlayer2Impl.this.notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task.1
                    @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
                    public void notify(MediaPlayer2.EventCallback eventCallback) {
                        Task task = Task.this;
                        eventCallback.onCallCompleted(ExoPlayerMediaPlayer2Impl.this, task.mDSD, task.mMediaCallType, i);
                    }
                });
            }
        }
    }

    public ExoPlayerMediaPlayer2Impl(@NonNull Context context) {
        this.mHandlerThread.start();
        this.mPlayer = new ExoPlayerWrapper(context.getApplicationContext(), this, this.mHandlerThread.getLooper());
        this.mTaskHandler = new Handler(this.mPlayer.getLooper());
        resetPlayer();
    }

    private Object addTask(Task task) {
        synchronized (this.mTaskLock) {
            this.mPendingTasks.add(task);
            processPendingTask();
        }
        return task;
    }

    private void notifyOnInfo(MediaItem mediaItem, int i) {
        notifyOnInfo(mediaItem, i, 0);
    }

    private void notifyOnInfo(final MediaItem mediaItem, final int i, final int i2) {
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.43
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onInfo(ExoPlayerMediaPlayer2Impl.this, mediaItem, i, i2);
            }
        });
    }

    private void resetPlayer() {
        runPlayerCallableBlocking(new Callable<Void>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.44
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.reset();
                return null;
            }
        });
    }

    private <T> T runPlayerCallableBlocking(final Callable<T> callable) {
        T t;
        final ResolvableFuture create = ResolvableFuture.create();
        Preconditions.checkState(this.mTaskHandler.post(new Runnable() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.45
            @Override // java.lang.Runnable
            public void run() {
                try {
                    create.set(callable.call());
                } catch (Throwable th) {
                    create.setException(th);
                }
            }
        }));
        boolean z = false;
        while (true) {
            try {
                try {
                    t = (T) create.get();
                    break;
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    Log.e(TAG, "Internal player error", new RuntimeException(cause));
                    throw new IllegalStateException(cause);
                }
            } catch (InterruptedException e2) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return t;
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object attachAuxEffect(final int i) {
        return addTask(new Task(1, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.21
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.attachAuxEffect(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public boolean cancel(Object obj) {
        boolean remove;
        synchronized (this.mTaskLock) {
            remove = this.mPendingTasks.remove(obj);
        }
        return remove;
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void clearDrmEventCallback() {
        synchronized (this.mLock) {
            this.mExecutorAndDrmEventCallback = null;
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void clearEventCallback() {
        synchronized (this.mLock) {
            this.mExecutorAndEventCallback = null;
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void clearPendingCommands() {
        synchronized (this.mTaskLock) {
            this.mPendingTasks.clear();
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void close() {
        clearEventCallback();
        synchronized (this.mLock) {
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                this.mHandlerThread = null;
                runPlayerCallableBlocking(new Callable<Void>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.37
                    @Override // java.util.concurrent.Callable
                    public Void call() {
                        ExoPlayerMediaPlayer2Impl.this.mPlayer.close();
                        return null;
                    }
                });
                handlerThread.quit();
            }
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object deselectTrack(final int i) {
        return addTask(new Task(2, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.33
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.deselectTrack(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public AudioAttributesCompat getAudioAttributes() {
        return (AudioAttributesCompat) runPlayerCallableBlocking(new Callable<AudioAttributesCompat>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.19
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AudioAttributesCompat call() throws Exception {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getAudioAttributes();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public int getAudioSessionId() {
        return ((Integer) runPlayerCallableBlocking(new Callable<Integer>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.20
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                return Integer.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getAudioSessionId());
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public long getBufferedPosition() {
        return ((Long) runPlayerCallableBlocking(new Callable<Long>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                return Long.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getBufferedPosition());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public MediaItem getCurrentMediaItem() {
        return (MediaItem) runPlayerCallableBlocking(new Callable<MediaItem>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public MediaItem call() throws Exception {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getCurrentMediaItem();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public long getCurrentPosition() {
        return ((Long) runPlayerCallableBlocking(new Callable<Long>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                return Long.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getCurrentPosition());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public MediaPlayer2.DrmInfo getDrmInfo() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    @NonNull
    public MediaDrm.KeyRequest getDrmKeyRequest(byte[] bArr, byte[] bArr2, String str, int i, Map<String, String> map) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    @NonNull
    public String getDrmPropertyString(@NonNull String str) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public long getDuration() {
        return ((Long) runPlayerCallableBlocking(new Callable<Long>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                return Long.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getDuration());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    @RequiresApi(21)
    public PersistableBundle getMetrics() {
        return (PersistableBundle) runPlayerCallableBlocking(new Callable<PersistableBundle>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.34
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public PersistableBundle call() throws Exception {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getMetricsV21();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    @NonNull
    public PlaybackParams getPlaybackParams() {
        return (PlaybackParams) runPlayerCallableBlocking(new Callable<PlaybackParams>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public PlaybackParams call() throws Exception {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getPlaybackParams();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public float getPlayerVolume() {
        return ((Float) runPlayerCallableBlocking(new Callable<Float>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.29
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Float call() throws Exception {
                return Float.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getVolume());
            }
        })).floatValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public int getSelectedTrack(final int i) {
        return ((Integer) runPlayerCallableBlocking(new Callable<Integer>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.31
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() {
                return Integer.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getSelectedTrack(i));
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public int getState() {
        return ((Integer) runPlayerCallableBlocking(new Callable<Integer>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                return Integer.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getState());
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public MediaTimestamp getTimestamp() {
        return (MediaTimestamp) runPlayerCallableBlocking(new Callable<MediaTimestamp>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.35
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public MediaTimestamp call() {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getTimestamp();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public List<MediaPlayer2.TrackInfo> getTrackInfo() {
        return (List) runPlayerCallableBlocking(new Callable<List<MediaPlayer2.TrackInfo>>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.30
            @Override // java.util.concurrent.Callable
            public List<MediaPlayer2.TrackInfo> call() throws Exception {
                return ExoPlayerMediaPlayer2Impl.this.mPlayer.getTrackInfo();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public int getVideoHeight() {
        return ((Integer) runPlayerCallableBlocking(new Callable<Integer>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.26
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                return Integer.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getVideoHeight());
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public int getVideoWidth() {
        return ((Integer) runPlayerCallableBlocking(new Callable<Integer>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                return Integer.valueOf(ExoPlayerMediaPlayer2Impl.this.mPlayer.getVideoWidth());
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object loopCurrent(final boolean z) {
        return addTask(new Task(3, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.14
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.loopCurrent(z);
            }
        });
    }

    public void notifyMediaPlayer2Event(final Mp2EventNotifier mp2EventNotifier) {
        Pair<Executor, MediaPlayer2.EventCallback> pair;
        synchronized (this.mLock) {
            pair = this.mExecutorAndEventCallback;
        }
        if (pair != null) {
            Executor executor = (Executor) pair.first;
            final MediaPlayer2.EventCallback eventCallback = (MediaPlayer2.EventCallback) pair.second;
            try {
                executor.execute(new Runnable() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.2
                    @Override // java.lang.Runnable
                    public void run() {
                        mp2EventNotifier.notify(eventCallback);
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object notifyWhenCommandLabelReached(@NonNull final Object obj) {
        return addTask(new Task(1000, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.1
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.1.1
                    @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
                    public void notify(MediaPlayer2.EventCallback eventCallback) {
                        C06111 r0 = C06111.this;
                        eventCallback.onCommandLabelReached(ExoPlayerMediaPlayer2Impl.this, obj);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onBandwidthSample(MediaItem mediaItem, int i) {
        notifyOnInfo(mediaItem, 703, i);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onBufferingEnded(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 702);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onBufferingStarted(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 701);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onBufferingUpdate(MediaItem mediaItem, int i) {
        notifyOnInfo(mediaItem, 704, i);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onError(final MediaItem mediaItem, final int i) {
        synchronized (this.mTaskLock) {
            if (this.mCurrentTask != null && this.mCurrentTask.mNeedToWaitForEventToComplete) {
                this.mCurrentTask.sendCompleteNotification(Integer.MIN_VALUE);
                this.mCurrentTask = null;
                processPendingTask();
            }
        }
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.42
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onError(ExoPlayerMediaPlayer2Impl.this, mediaItem, i, 0);
            }
        });
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onLoop(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 7);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onMediaItemEnded(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 5);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onMediaItemStartedAsNext(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 2);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onMediaTimeDiscontinuity(final MediaItem mediaItem, final MediaTimestamp mediaTimestamp) {
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.41
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onMediaTimeDiscontinuity(ExoPlayerMediaPlayer2Impl.this, mediaItem, mediaTimestamp);
            }
        });
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onMetadataChanged(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 802);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onPlaybackEnded(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 6);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onPrepared(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 100);
        synchronized (this.mTaskLock) {
            if (this.mCurrentTask != null && this.mCurrentTask.mMediaCallType == 6 && ObjectsCompat.equals(this.mCurrentTask.mDSD, mediaItem) && this.mCurrentTask.mNeedToWaitForEventToComplete) {
                this.mCurrentTask.sendCompleteNotification(0);
                this.mCurrentTask = null;
                processPendingTask();
            }
        }
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onSeekCompleted() {
        synchronized (this.mTaskLock) {
            if (this.mCurrentTask != null && this.mCurrentTask.mMediaCallType == 14 && this.mCurrentTask.mNeedToWaitForEventToComplete) {
                this.mCurrentTask.sendCompleteNotification(0);
                this.mCurrentTask = null;
                processPendingTask();
            }
        }
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onSubtitleData(final MediaItem mediaItem, final int i, final SubtitleData subtitleData) {
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.39
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onSubtitleData(ExoPlayerMediaPlayer2Impl.this, mediaItem, i, subtitleData);
            }
        });
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onTimedMetadata(final MediaItem mediaItem, final TimedMetaData timedMetaData) {
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.40
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onTimedMetaDataAvailable(ExoPlayerMediaPlayer2Impl.this, mediaItem, timedMetaData);
            }
        });
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onVideoRenderingStart(MediaItem mediaItem) {
        notifyOnInfo(mediaItem, 3);
    }

    @Override // androidx.media2.player.exoplayer.ExoPlayerWrapper.Listener
    public void onVideoSizeChanged(final MediaItem mediaItem, final int i, final int i2) {
        notifyMediaPlayer2Event(new Mp2EventNotifier() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.38
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Mp2EventNotifier
            public void notify(MediaPlayer2.EventCallback eventCallback) {
                eventCallback.onVideoSizeChanged(ExoPlayerMediaPlayer2Impl.this, mediaItem, i, i2);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object pause() {
        return addTask(new Task(4, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.8
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.pause();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object play() {
        return addTask(new Task(5, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.7
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.play();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object prepare() {
        return addTask(new Task(6, true) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.6
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.prepare();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object prepareDrm(@NonNull UUID uuid) {
        throw new UnsupportedOperationException();
    }

    @GuardedBy("mTaskLock")
    public void processPendingTask() {
        if (this.mCurrentTask == null && !this.mPendingTasks.isEmpty()) {
            Task removeFirst = this.mPendingTasks.removeFirst();
            this.mCurrentTask = removeFirst;
            this.mTaskHandler.post(removeFirst);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public byte[] provideDrmKeyResponse(@Nullable byte[] bArr, @NonNull byte[] bArr2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void releaseDrm() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void reset() {
        Task task;
        clearPendingCommands();
        synchronized (this.mTaskLock) {
            task = this.mCurrentTask;
        }
        if (task != null) {
            synchronized (task) {
                while (!task.mDone) {
                    try {
                        task.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
        this.mTaskHandler.removeCallbacksAndMessages(null);
        runPlayerCallableBlocking(new Callable<Void>() { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.36
            @Override // java.util.concurrent.Callable
            public Void call() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.reset();
                return null;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void restoreDrmKeys(@NonNull byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object seekTo(final long j, final int i) {
        return addTask(new Task(14, true) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.9
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.seekTo(j, i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object selectTrack(final int i) {
        return addTask(new Task(15, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.32
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.selectTrack(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setAudioAttributes(@NonNull final AudioAttributesCompat audioAttributesCompat) {
        return addTask(new Task(16, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.18
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setAudioAttributes(audioAttributesCompat);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setAudioSessionId(final int i) {
        return addTask(new Task(17, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.3
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setAudioSessionId(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setAuxEffectSendLevel(final float f) {
        return addTask(new Task(18, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.22
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setAuxEffectSendLevel(f);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void setDrmEventCallback(@NonNull Executor executor, @NonNull MediaPlayer2.DrmEventCallback drmEventCallback) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(drmEventCallback);
        synchronized (this.mLock) {
            this.mExecutorAndDrmEventCallback = Pair.create(executor, drmEventCallback);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void setDrmPropertyString(@NonNull String str, @NonNull String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void setEventCallback(@NonNull Executor executor, @NonNull MediaPlayer2.EventCallback eventCallback) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(eventCallback);
        synchronized (this.mLock) {
            this.mExecutorAndEventCallback = Pair.create(executor, eventCallback);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setMediaItem(@NonNull final MediaItem mediaItem) {
        return addTask(new Task(19, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.4
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setMediaItem(mediaItem);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setNextMediaItem(@NonNull final MediaItem mediaItem) {
        return addTask(new Task(22, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.16
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setNextMediaItem(mediaItem);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setNextMediaItems(@NonNull final List<MediaItem> list) {
        return addTask(new Task(23, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.17
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setNextMediaItems(list);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public void setOnDrmConfigHelper(MediaPlayer2.OnDrmConfigHelper onDrmConfigHelper) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setPlaybackParams(@NonNull final PlaybackParams playbackParams) {
        return addTask(new Task(24, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.23
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setPlaybackParams(playbackParams);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setPlayerVolume(final float f) {
        return addTask(new Task(26, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.28
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setVolume(f);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object setSurface(final Surface surface) {
        return addTask(new Task(27, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.27
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.setSurface(surface);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public Object skipToNext() {
        return addTask(new Task(29, false) { // from class: androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.15
            @Override // androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl.Task
            public void process() {
                ExoPlayerMediaPlayer2Impl.this.mPlayer.skipToNext();
            }
        });
    }
}
