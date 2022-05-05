package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.DefaultLoadControl;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.ExoPlayerFactory;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.SimpleExoPlayer;
import androidx.media2.exoplayer.external.analytics.AnalyticsCollector;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.audio.AudioCapabilities;
import androidx.media2.exoplayer.external.audio.AudioListener;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.AuxEffectInfo;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
import androidx.media2.exoplayer.external.source.ConcatenatingMediaSource;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DefaultBandwidthMeter;
import androidx.media2.exoplayer.external.upstream.DefaultDataSourceFactory;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.MediaTimestamp;
import androidx.media2.player.PlaybackParams;
import androidx.media2.player.TimedMetaData;
import androidx.media2.player.exoplayer.TextRenderer;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper.class */
public final class ExoPlayerWrapper {
    public static final int POLL_BUFFER_INTERVAL_MS = 1000;
    public static final String TAG = "ExoPlayerWrapper";
    public static final String USER_AGENT_NAME = "MediaPlayer2";
    public int mAudioSessionId;
    public DefaultAudioSink mAudioSink;
    public int mAuxEffectId;
    public float mAuxEffectSendLevel;
    public final Context mContext;
    public final Handler mHandler;
    public boolean mHasAudioAttributes;
    public final Listener mListener;
    public final Looper mLooper;
    public MediaItemQueue mMediaItemQueue;
    public boolean mNewlyPrepared;
    public boolean mPendingSeek;
    public PlaybackParams mPlaybackParams;
    public SimpleExoPlayer mPlayer;
    public Handler mPlayerHandler;
    public boolean mPrepared;
    public boolean mRebuffering;
    public TrackSelector mTrackSelector;
    public int mVideoHeight;
    public int mVideoWidth;
    public final DefaultBandwidthMeter mBandwidthMeter = new DefaultBandwidthMeter();
    public final Runnable mPollBufferRunnable = new PollBufferRunnable();

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener.class */
    public final class ComponentListener extends Player.DefaultEventListener implements VideoRendererEventListener, AudioListener, TextRenderer.Output, MetadataOutput {
        public ComponentListener() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioListener
        public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioListener
        public void onAudioSessionId(int i) {
            ExoPlayerWrapper.this.handleAudioSessionId(i);
        }

        @Override // androidx.media2.player.exoplayer.TextRenderer.Output
        public void onCcData(byte[] bArr, long j) {
            ExoPlayerWrapper.this.handleSubtitleData(bArr, j);
        }

        @Override // androidx.media2.player.exoplayer.TextRenderer.Output
        public void onChannelAvailable(int i, int i2) {
            ExoPlayerWrapper.this.handleTextRendererChannelAvailable(i, i2);
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
        }

        @Override // androidx.media2.exoplayer.external.metadata.MetadataOutput
        public void onMetadata(Metadata metadata) {
            ExoPlayerWrapper.this.handleMetadata(metadata);
        }

        @Override // androidx.media2.exoplayer.external.Player.DefaultEventListener, androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
            ExoPlayerWrapper.this.handlePlayerError(exoPlaybackException);
        }

        @Override // androidx.media2.exoplayer.external.Player.DefaultEventListener, androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            ExoPlayerWrapper.this.handlePlayerStateChanged(z, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.DefaultEventListener, androidx.media2.exoplayer.external.Player.EventListener
        public void onPositionDiscontinuity(int i) {
            ExoPlayerWrapper.this.handlePositionDiscontinuity(i);
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onRenderedFirstFrame(@Nullable Surface surface) {
            ExoPlayerWrapper.this.handleRenderedFirstFrame();
        }

        @Override // androidx.media2.exoplayer.external.Player.DefaultEventListener, androidx.media2.exoplayer.external.Player.EventListener
        public void onSeekProcessed() {
            ExoPlayerWrapper.this.handleSeekProcessed();
        }

        @Override // androidx.media2.exoplayer.external.Player.DefaultEventListener, androidx.media2.exoplayer.external.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            ExoPlayerWrapper.this.handlePlayerTracksChanged();
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j, long j2) {
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters decoderCounters) {
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters decoderCounters) {
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format) {
            if (MimeTypes.isVideo(format.sampleMimeType)) {
                ExoPlayerWrapper.this.handleVideoSizeChanged(format.width, format.height, format.pixelWidthHeightRatio);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            ExoPlayerWrapper.this.handleVideoSizeChanged(i, i2, f);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioListener
        public void onVolumeChanged(float f) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry.class */
    public static final class FileDescriptorRegistry {
        public final Map<FileDescriptor, Entry> mEntries = new HashMap();

        /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry$Entry.class */
        public static final class Entry {
            public final Object mLock = new Object();
            public int mMediaItemCount;
        }

        public Object registerMediaItemAndGetLock(FileDescriptor fileDescriptor) {
            if (!this.mEntries.containsKey(fileDescriptor)) {
                this.mEntries.put(fileDescriptor, new Entry());
            }
            Entry entry = (Entry) Preconditions.checkNotNull(this.mEntries.get(fileDescriptor));
            entry.mMediaItemCount++;
            return entry.mLock;
        }

        public void unregisterMediaItem(FileDescriptor fileDescriptor) {
            Entry entry = (Entry) Preconditions.checkNotNull(this.mEntries.get(fileDescriptor));
            int i = entry.mMediaItemCount - 1;
            entry.mMediaItemCount = i;
            if (i == 0) {
                this.mEntries.remove(fileDescriptor);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$Listener.class */
    public interface Listener {
        void onBandwidthSample(MediaItem mediaItem, int i);

        void onBufferingEnded(MediaItem mediaItem);

        void onBufferingStarted(MediaItem mediaItem);

        void onBufferingUpdate(MediaItem mediaItem, int i);

        void onError(MediaItem mediaItem, int i);

        void onLoop(MediaItem mediaItem);

        void onMediaItemEnded(MediaItem mediaItem);

        void onMediaItemStartedAsNext(MediaItem mediaItem);

        void onMediaTimeDiscontinuity(MediaItem mediaItem, MediaTimestamp mediaTimestamp);

        void onMetadataChanged(MediaItem mediaItem);

        void onPlaybackEnded(MediaItem mediaItem);

        void onPrepared(MediaItem mediaItem);

        void onSeekCompleted();

        void onSubtitleData(MediaItem mediaItem, int i, SubtitleData subtitleData);

        void onTimedMetadata(MediaItem mediaItem, TimedMetaData timedMetaData);

        void onVideoRenderingStart(MediaItem mediaItem);

        void onVideoSizeChanged(MediaItem mediaItem, int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo.class */
    public static final class MediaItemInfo {
        @Nullable
        public final DurationProvidingMediaSource mDurationProvidingMediaSource;
        public final boolean mIsRemote;
        public final MediaItem mMediaItem;

        public MediaItemInfo(MediaItem mediaItem, @Nullable DurationProvidingMediaSource durationProvidingMediaSource, boolean z) {
            this.mMediaItem = mediaItem;
            this.mDurationProvidingMediaSource = durationProvidingMediaSource;
            this.mIsRemote = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue.class */
    public static final class MediaItemQueue {
        public final Context mContext;
        public long mCurrentMediaItemPlayingTimeUs;
        public final DataSource.Factory mDataSourceFactory;
        public final Listener mListener;
        public final SimpleExoPlayer mPlayer;
        public final ConcatenatingMediaSource mConcatenatingMediaSource = new ConcatenatingMediaSource(new MediaSource[0]);
        public final ArrayDeque<MediaItemInfo> mMediaItemInfos = new ArrayDeque<>();
        public final FileDescriptorRegistry mFileDescriptorRegistry = new FileDescriptorRegistry();
        public long mStartPlayingTimeNs = -1;

        public MediaItemQueue(Context context, SimpleExoPlayer simpleExoPlayer, Listener listener) {
            this.mContext = context;
            this.mPlayer = simpleExoPlayer;
            this.mListener = listener;
            this.mDataSourceFactory = new DefaultDataSourceFactory(context, Util.getUserAgent(context, ExoPlayerWrapper.USER_AGENT_NAME));
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0068, code lost:
            if (r0 != 576460752303423487L) goto L_0x006b;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void appendMediaItem(androidx.media2.common.MediaItem r12, java.util.Collection<androidx.media2.player.exoplayer.ExoPlayerWrapper.MediaItemInfo> r13, java.util.Collection<androidx.media2.exoplayer.external.source.MediaSource> r14) {
            /*
                r11 = this;
                r0 = r11
                androidx.media2.exoplayer.external.upstream.DataSource$Factory r0 = r0.mDataSourceFactory
                r15 = r0
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.FileMediaItem
                if (r0 == 0) goto L_0x003c
                r0 = r12
                androidx.media2.common.FileMediaItem r0 = (androidx.media2.common.FileMediaItem) r0
                r16 = r0
                r0 = r16
                r0.increaseRefCount()
                r0 = r16
                android.os.ParcelFileDescriptor r0 = r0.getParcelFileDescriptor()
                java.io.FileDescriptor r0 = r0.getFileDescriptor()
                r15 = r0
                r0 = r15
                r1 = r16
                long r1 = r1.getFileDescriptorOffset()
                r2 = r16
                long r2 = r2.getFileDescriptorLength()
                r3 = r11
                androidx.media2.player.exoplayer.ExoPlayerWrapper$FileDescriptorRegistry r3 = r3.mFileDescriptorRegistry
                r4 = r15
                java.lang.Object r3 = r3.registerMediaItemAndGetLock(r4)
                androidx.media2.exoplayer.external.upstream.DataSource$Factory r0 = androidx.media2.player.exoplayer.FileDescriptorDataSource.getFactory(r0, r1, r2, r3)
                r15 = r0
            L_0x003c:
                r0 = r11
                android.content.Context r0 = r0.mContext
                r1 = r15
                r2 = r12
                androidx.media2.exoplayer.external.source.MediaSource r0 = androidx.media2.player.exoplayer.ExoPlayerUtils.createUnclippedMediaSource(r0, r1, r2)
                r17 = r0
                r0 = 0
                r15 = r0
                r0 = r12
                long r0 = r0.getStartPosition()
                r18 = r0
                r0 = r12
                long r0 = r0.getEndPosition()
                r20 = r0
                r0 = r18
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006b
                r0 = r17
                r16 = r0
                r0 = r20
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x008e
            L_0x006b:
                androidx.media2.player.exoplayer.DurationProvidingMediaSource r0 = new androidx.media2.player.exoplayer.DurationProvidingMediaSource
                r1 = r0
                r2 = r17
                r1.<init>(r2)
                r15 = r0
                androidx.media2.exoplayer.external.source.ClippingMediaSource r0 = new androidx.media2.exoplayer.external.source.ClippingMediaSource
                r1 = r0
                r2 = r15
                r3 = r18
                long r3 = androidx.media2.exoplayer.external.C0463C.msToUs(r3)
                r4 = r20
                long r4 = androidx.media2.exoplayer.external.C0463C.msToUs(r4)
                r5 = 0
                r6 = 0
                r7 = 1
                r1.<init>(r2, r3, r4, r5, r6, r7)
                r16 = r0
            L_0x008e:
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.UriMediaItem
                if (r0 == 0) goto L_0x00a8
                r0 = r12
                androidx.media2.common.UriMediaItem r0 = (androidx.media2.common.UriMediaItem) r0
                android.net.Uri r0 = r0.getUri()
                boolean r0 = androidx.media2.exoplayer.external.util.Util.isLocalFileUri(r0)
                if (r0 != 0) goto L_0x00a8
                r0 = 1
                r22 = r0
                goto L_0x00ab
            L_0x00a8:
                r0 = 0
                r22 = r0
            L_0x00ab:
                r0 = r14
                r1 = r16
                boolean r0 = r0.add(r1)
                r0 = r13
                androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemInfo r1 = new androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemInfo
                r2 = r1
                r3 = r12
                r4 = r15
                r5 = r22
                r2.<init>(r3, r4, r5)
                boolean r0 = r0.add(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.MediaItemQueue.appendMediaItem(androidx.media2.common.MediaItem, java.util.Collection, java.util.Collection):void");
        }

        private void releaseMediaItem(MediaItemInfo mediaItemInfo) {
            MediaItem mediaItem = mediaItemInfo.mMediaItem;
            try {
                if (mediaItem instanceof FileMediaItem) {
                    this.mFileDescriptorRegistry.unregisterMediaItem(((FileMediaItem) mediaItem).getParcelFileDescriptor().getFileDescriptor());
                    ((FileMediaItem) mediaItem).decreaseRefCount();
                } else if (mediaItem instanceof CallbackMediaItem) {
                    ((CallbackMediaItem) mediaItem).getDataSourceCallback().close();
                }
            } catch (IOException e) {
                String str = "Error releasing media item " + mediaItem;
            }
        }

        public void clear() {
            while (!this.mMediaItemInfos.isEmpty()) {
                releaseMediaItem(this.mMediaItemInfos.remove());
            }
        }

        @Nullable
        public MediaItem getCurrentMediaItem() {
            return this.mMediaItemInfos.isEmpty() ? null : this.mMediaItemInfos.peekFirst().mMediaItem;
        }

        public long getCurrentMediaItemDuration() {
            DurationProvidingMediaSource durationProvidingMediaSource = this.mMediaItemInfos.peekFirst().mDurationProvidingMediaSource;
            return durationProvidingMediaSource != null ? durationProvidingMediaSource.getDurationMs() : this.mPlayer.getDuration();
        }

        public boolean getCurrentMediaItemIsRemote() {
            return !this.mMediaItemInfos.isEmpty() && this.mMediaItemInfos.peekFirst().mIsRemote;
        }

        public long getCurrentMediaItemPlayingTimeMs() {
            return C0463C.usToMs(this.mCurrentMediaItemPlayingTimeUs);
        }

        public boolean isEmpty() {
            return this.mConcatenatingMediaSource.getSize() == 0;
        }

        public void onPlayerEnded() {
            MediaItem currentMediaItem = getCurrentMediaItem();
            this.mListener.onMediaItemEnded(currentMediaItem);
            this.mListener.onPlaybackEnded(currentMediaItem);
        }

        public void onPlaying() {
            if (this.mStartPlayingTimeNs == -1) {
                this.mStartPlayingTimeNs = System.nanoTime();
            }
        }

        public void onPositionDiscontinuity(boolean z) {
            MediaItem currentMediaItem = getCurrentMediaItem();
            if (z && this.mPlayer.getRepeatMode() != 0) {
                this.mListener.onLoop(currentMediaItem);
            }
            int currentWindowIndex = this.mPlayer.getCurrentWindowIndex();
            if (currentWindowIndex > 0) {
                if (z) {
                    this.mListener.onMediaItemEnded(getCurrentMediaItem());
                }
                for (int i = 0; i < currentWindowIndex; i++) {
                    releaseMediaItem(this.mMediaItemInfos.removeFirst());
                }
                if (z) {
                    this.mListener.onMediaItemStartedAsNext(getCurrentMediaItem());
                }
                this.mConcatenatingMediaSource.removeMediaSourceRange(0, currentWindowIndex);
                this.mCurrentMediaItemPlayingTimeUs = 0L;
                this.mStartPlayingTimeNs = -1L;
                if (this.mPlayer.getPlaybackState() == 3) {
                    onPlaying();
                }
            }
        }

        public void onStopped() {
            if (this.mStartPlayingTimeNs != -1) {
                this.mCurrentMediaItemPlayingTimeUs += ((System.nanoTime() - this.mStartPlayingTimeNs) + 500) / 1000;
                this.mStartPlayingTimeNs = -1L;
            }
        }

        public void preparePlayer() {
            this.mPlayer.prepare(this.mConcatenatingMediaSource);
        }

        public void setMediaItem(MediaItem mediaItem) {
            clear();
            this.mConcatenatingMediaSource.clear();
            setNextMediaItems(Collections.singletonList(mediaItem));
        }

        public void setNextMediaItems(List<MediaItem> list) {
            int size = this.mConcatenatingMediaSource.getSize();
            if (size > 1) {
                this.mConcatenatingMediaSource.removeMediaSourceRange(1, size);
                while (this.mMediaItemInfos.size() > 1) {
                    releaseMediaItem(this.mMediaItemInfos.removeLast());
                }
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (MediaItem mediaItem : list) {
                if (mediaItem == null) {
                    this.mListener.onError(null, 1);
                    return;
                }
                appendMediaItem(mediaItem, this.mMediaItemInfos, arrayList);
            }
            this.mConcatenatingMediaSource.addMediaSources(arrayList);
        }

        public void skipToNext() {
            releaseMediaItem(this.mMediaItemInfos.removeFirst());
            this.mConcatenatingMediaSource.removeMediaSource(0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable.class */
    public final class PollBufferRunnable implements Runnable {
        public PollBufferRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ExoPlayerWrapper.this.updateBufferingAndScheduleNextPollBuffer();
        }
    }

    public ExoPlayerWrapper(Context context, Listener listener, Looper looper) {
        this.mContext = context.getApplicationContext();
        this.mListener = listener;
        this.mLooper = looper;
        this.mHandler = new Handler(looper);
    }

    private void maybeNotifyBufferingEvents() {
        if (this.mPrepared && !this.mRebuffering) {
            this.mRebuffering = true;
            if (this.mMediaItemQueue.getCurrentMediaItemIsRemote()) {
                this.mListener.onBandwidthSample(getCurrentMediaItem(), (int) (this.mBandwidthMeter.getBitrateEstimate() / 1000));
            }
            this.mListener.onBufferingStarted(getCurrentMediaItem());
        }
    }

    private void maybeNotifyEndedEvents() {
        if (this.mPendingSeek) {
            this.mPendingSeek = false;
            this.mListener.onSeekCompleted();
        }
        if (this.mPlayer.getPlayWhenReady()) {
            this.mMediaItemQueue.onPlayerEnded();
            this.mPlayer.setPlayWhenReady(false);
        }
    }

    private void maybeNotifyReadyEvents() {
        MediaItem currentMediaItem = this.mMediaItemQueue.getCurrentMediaItem();
        boolean z = this.mPrepared;
        boolean z2 = this.mPendingSeek;
        if (!z) {
            this.mPrepared = true;
            this.mNewlyPrepared = true;
            this.mMediaItemQueue.onPositionDiscontinuity(false);
            this.mListener.onPrepared(currentMediaItem);
        } else if (z2) {
            this.mPendingSeek = false;
            this.mListener.onSeekCompleted();
        }
        if (this.mRebuffering) {
            this.mRebuffering = false;
            if (this.mMediaItemQueue.getCurrentMediaItemIsRemote()) {
                this.mListener.onBandwidthSample(getCurrentMediaItem(), (int) (this.mBandwidthMeter.getBitrateEstimate() / 1000));
            }
            this.mListener.onBufferingEnded(getCurrentMediaItem());
        }
    }

    private void maybeUpdateTimerForPlaying() {
        this.mMediaItemQueue.onPlaying();
    }

    private void maybeUpdateTimerForStopped() {
        this.mMediaItemQueue.onStopped();
    }

    public static void updatePlayerAudioSessionId(Handler handler, final DefaultAudioSink defaultAudioSink, final int i) {
        handler.post(new Runnable() { // from class: androidx.media2.player.exoplayer.ExoPlayerWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultAudioSink.this.setAudioSessionId(i);
            }
        });
    }

    public void attachAuxEffect(int i) {
        this.mAuxEffectId = i;
        this.mPlayer.setAuxEffectInfo(new AuxEffectInfo(i, this.mAuxEffectSendLevel));
    }

    public void close() {
        if (this.mPlayer != null) {
            this.mHandler.removeCallbacks(this.mPollBufferRunnable);
            this.mPlayer.release();
            this.mPlayer = null;
            this.mMediaItemQueue.clear();
            this.mHasAudioAttributes = false;
        }
    }

    public void deselectTrack(int i) {
        this.mTrackSelector.deselectTrack(i);
    }

    public AudioAttributesCompat getAudioAttributes() {
        return this.mHasAudioAttributes ? ExoPlayerUtils.getAudioAttributesCompat(this.mPlayer.getAudioAttributes()) : null;
    }

    public int getAudioSessionId() {
        if (Build.VERSION.SDK_INT >= 21 && this.mAudioSessionId == 0) {
            setAudioSessionId(C0463C.generateAudioSessionIdV21(this.mContext));
        }
        int i = this.mAudioSessionId;
        int i2 = i;
        if (i == 0) {
            i2 = 0;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getBufferedPosition() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.getState()
            r1 = 1001(0x3e9, float:1.403E-42)
            if (r0 == r1) goto L_0x000f
            r0 = 1
            r6 = r0
            goto L_0x0011
        L_0x000f:
            r0 = 0
            r6 = r0
        L_0x0011:
            r0 = r6
            androidx.core.util.Preconditions.checkState(r0)
            r0 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r0 = r0.mPlayer
            long r0 = r0.getBufferedPosition()
            r7 = r0
            r0 = r5
            androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemQueue r0 = r0.mMediaItemQueue
            androidx.media2.common.MediaItem r0 = r0.getCurrentMediaItem()
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0037
            r0 = r7
            r1 = r9
            long r1 = r1.getStartPosition()
            long r0 = r0 + r1
            r10 = r0
        L_0x0037:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.getBufferedPosition():long");
    }

    public MediaItem getCurrentMediaItem() {
        return this.mMediaItemQueue.getCurrentMediaItem();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getCurrentPosition() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.getState()
            r1 = 1001(0x3e9, float:1.403E-42)
            if (r0 == r1) goto L_0x000f
            r0 = 1
            r6 = r0
            goto L_0x0011
        L_0x000f:
            r0 = 0
            r6 = r0
        L_0x0011:
            r0 = r6
            androidx.core.util.Preconditions.checkState(r0)
            r0 = 0
            r1 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r1 = r1.mPlayer
            long r1 = r1.getCurrentPosition()
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r5
            androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemQueue r0 = r0.mMediaItemQueue
            androidx.media2.common.MediaItem r0 = r0.getCurrentMediaItem()
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x003b
            r0 = r7
            r1 = r9
            long r1 = r1.getStartPosition()
            long r0 = r0 + r1
            r10 = r0
        L_0x003b:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.getCurrentPosition():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDuration() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemQueue r0 = r0.mMediaItemQueue
            long r0 = r0.getCurrentMediaItemDuration()
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0016
            r0 = -1
            r8 = r0
        L_0x0016:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.getDuration():long");
    }

    public Looper getLooper() {
        return this.mLooper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.RequiresApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.PersistableBundle getMetricsV21() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r0 = r0.mPlayer
            androidx.media2.exoplayer.external.source.TrackGroupArray r0 = r0.getCurrentTrackGroups()
            r6 = r0
            r0 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r0 = r0.mPlayer
            long r0 = r0.getDuration()
            r7 = r0
            r0 = r5
            androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemQueue r0 = r0.mMediaItemQueue
            long r0 = r0.getCurrentMediaItemPlayingTimeMs()
            r9 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = 0
            r13 = r0
        L_0x0023:
            r0 = r13
            r1 = r6
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0086
            r0 = r6
            r1 = r13
            androidx.media2.exoplayer.external.source.TrackGroup r0 = r0.get(r1)
            r1 = 0
            androidx.media2.exoplayer.external.Format r0 = r0.getFormat(r1)
            java.lang.String r0 = r0.sampleMimeType
            r14 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0053
            r0 = r14
            boolean r0 = androidx.media2.exoplayer.external.util.MimeTypes.isVideo(r0)
            if (r0 == 0) goto L_0x0053
            r0 = r14
            r15 = r0
            r0 = r12
            r16 = r0
            goto L_0x0078
        L_0x0053:
            r0 = r11
            r15 = r0
            r0 = r12
            r16 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0078
            r0 = r11
            r15 = r0
            r0 = r12
            r16 = r0
            r0 = r14
            boolean r0 = androidx.media2.exoplayer.external.util.MimeTypes.isAudio(r0)
            if (r0 == 0) goto L_0x0078
            r0 = r14
            r16 = r0
            r0 = r11
            r15 = r0
        L_0x0078:
            int r13 = r13 + 1
            r0 = r15
            r11 = r0
            r0 = r16
            r12 = r0
            goto L_0x0023
        L_0x0086:
            android.os.PersistableBundle r0 = new android.os.PersistableBundle
            r1 = r0
            r1.<init>()
            r16 = r0
            r0 = r11
            if (r0 == 0) goto L_0x009e
            r0 = r16
            java.lang.String r1 = "android.media.mediaplayer.video.mime"
            r2 = r11
            r0.putString(r1, r2)
        L_0x009e:
            r0 = r12
            if (r0 == 0) goto L_0x00ad
            r0 = r16
            java.lang.String r1 = "android.media.mediaplayer.audio.mime"
            r2 = r12
            r0.putString(r1, r2)
        L_0x00ad:
            r0 = r7
            r17 = r0
            r0 = r7
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00bd
            r0 = -1
            r17 = r0
        L_0x00bd:
            r0 = r16
            java.lang.String r1 = "android.media.mediaplayer.durationMs"
            r2 = r17
            r0.putLong(r1, r2)
            r0 = r16
            java.lang.String r1 = "android.media.mediaplayer.playingMs"
            r2 = r9
            r0.putLong(r1, r2)
            r0 = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.getMetricsV21():android.os.PersistableBundle");
    }

    public PlaybackParams getPlaybackParams() {
        return this.mPlaybackParams;
    }

    public int getSelectedTrack(int i) {
        return this.mTrackSelector.getSelectedTrack(i);
    }

    public int getState() {
        if (hasError()) {
            return MediaPlayer2.PLAYER_STATE_ERROR;
        }
        if (this.mNewlyPrepared) {
            return 1002;
        }
        int playbackState = this.mPlayer.getPlaybackState();
        boolean playWhenReady = this.mPlayer.getPlayWhenReady();
        if (playbackState == 1) {
            return 1001;
        }
        int i = 1003;
        if (playbackState != 2) {
            if (playbackState == 3) {
                i = 1003;
                if (playWhenReady) {
                    i = 1004;
                }
            } else if (playbackState == 4) {
                i = 1003;
            } else {
                throw new IllegalStateException();
            }
        }
        return i;
    }

    public MediaTimestamp getTimestamp() {
        return new MediaTimestamp(this.mPlayer.getPlaybackState() == 1 ? 0L : C0463C.msToUs(getCurrentPosition()), System.nanoTime(), (this.mPlayer.getPlaybackState() != 3 || !this.mPlayer.getPlayWhenReady()) ? 0.0f : this.mPlaybackParams.getSpeed().floatValue());
    }

    public List<MediaPlayer2.TrackInfo> getTrackInfo() {
        return this.mTrackSelector.getTrackInfos();
    }

    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public float getVolume() {
        return this.mPlayer.getVolume();
    }

    public void handleAudioSessionId(int i) {
        this.mAudioSessionId = i;
    }

    public void handleMetadata(Metadata metadata) {
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            ByteArrayFrame byteArrayFrame = (ByteArrayFrame) metadata.get(i);
            this.mListener.onTimedMetadata(getCurrentMediaItem(), new TimedMetaData(byteArrayFrame.mTimestamp, byteArrayFrame.mData));
        }
    }

    public void handlePlayerError(ExoPlaybackException exoPlaybackException) {
        this.mListener.onMediaTimeDiscontinuity(getCurrentMediaItem(), getTimestamp());
        this.mListener.onError(getCurrentMediaItem(), ExoPlayerUtils.getError(exoPlaybackException));
    }

    public void handlePlayerStateChanged(boolean z, int i) {
        this.mListener.onMediaTimeDiscontinuity(getCurrentMediaItem(), getTimestamp());
        if (i != 3 || !z) {
            maybeUpdateTimerForStopped();
        } else {
            maybeUpdateTimerForPlaying();
        }
        if (i == 3 || i == 2) {
            this.mHandler.post(this.mPollBufferRunnable);
        } else {
            this.mHandler.removeCallbacks(this.mPollBufferRunnable);
        }
        if (i == 1) {
            return;
        }
        if (i == 2) {
            maybeNotifyBufferingEvents();
        } else if (i == 3) {
            maybeNotifyReadyEvents();
        } else if (i == 4) {
            maybeNotifyEndedEvents();
        } else {
            throw new IllegalStateException();
        }
    }

    public void handlePlayerTracksChanged() {
        this.mTrackSelector.handlePlayerTracksChanged(this.mPlayer);
        if (this.mTrackSelector.hasPendingMetadataUpdate()) {
            this.mListener.onMetadataChanged(getCurrentMediaItem());
        }
    }

    public void handlePositionDiscontinuity(int i) {
        this.mListener.onMediaTimeDiscontinuity(getCurrentMediaItem(), getTimestamp());
        this.mMediaItemQueue.onPositionDiscontinuity(i == 0);
    }

    public void handleRenderedFirstFrame() {
        this.mListener.onVideoRenderingStart(this.mMediaItemQueue.getCurrentMediaItem());
    }

    public void handleSeekProcessed() {
        if (getCurrentMediaItem() == null) {
            this.mListener.onSeekCompleted();
            return;
        }
        this.mPendingSeek = true;
        if (this.mPlayer.getPlaybackState() == 3) {
            maybeNotifyReadyEvents();
        }
    }

    public void handleSubtitleData(byte[] bArr, long j) {
        int selectedTrack = this.mTrackSelector.getSelectedTrack(4);
        this.mListener.onSubtitleData(getCurrentMediaItem(), selectedTrack, new SubtitleData(j, 0L, bArr));
    }

    public void handleTextRendererChannelAvailable(int i, int i2) {
        this.mTrackSelector.handleTextRendererChannelAvailable(i, i2);
        if (this.mTrackSelector.hasPendingMetadataUpdate()) {
            this.mListener.onMetadataChanged(getCurrentMediaItem());
        }
    }

    public void handleVideoSizeChanged(int i, int i2, float f) {
        if (f != 1.0f) {
            this.mVideoWidth = (int) (f * i);
        } else {
            this.mVideoWidth = i;
        }
        this.mVideoHeight = i2;
        this.mListener.onVideoSizeChanged(this.mMediaItemQueue.getCurrentMediaItem(), i, i2);
    }

    public boolean hasError() {
        return this.mPlayer.getPlaybackError() != null;
    }

    public void loopCurrent(boolean z) {
        this.mPlayer.setRepeatMode(z ? 1 : 0);
    }

    public void pause() {
        this.mNewlyPrepared = false;
        this.mPlayer.setPlayWhenReady(false);
    }

    public void play() {
        this.mNewlyPrepared = false;
        if (this.mPlayer.getPlaybackState() == 4) {
            this.mPlayer.seekTo(0L);
        }
        this.mPlayer.setPlayWhenReady(true);
    }

    public void prepare() {
        Preconditions.checkState(!this.mPrepared);
        this.mMediaItemQueue.preparePlayer();
    }

    public void reset() {
        SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setPlayWhenReady(false);
            if (getState() != 1001) {
                this.mListener.onMediaTimeDiscontinuity(getCurrentMediaItem(), getTimestamp());
            }
            this.mPlayer.release();
            this.mMediaItemQueue.clear();
        }
        ComponentListener componentListener = new ComponentListener();
        this.mAudioSink = new DefaultAudioSink(AudioCapabilities.getCapabilities(this.mContext), new AudioProcessor[0]);
        TextRenderer textRenderer = new TextRenderer(componentListener);
        this.mTrackSelector = new TrackSelector(textRenderer);
        Context context = this.mContext;
        this.mPlayer = ExoPlayerFactory.newSimpleInstance(context, new RenderersFactory(context, this.mAudioSink, textRenderer), this.mTrackSelector.getPlayerTrackSelector(), new DefaultLoadControl(), null, this.mBandwidthMeter, new AnalyticsCollector.Factory(), this.mLooper);
        this.mPlayerHandler = new Handler(this.mPlayer.getPlaybackLooper());
        this.mMediaItemQueue = new MediaItemQueue(this.mContext, this.mPlayer, this.mListener);
        this.mPlayer.addListener(componentListener);
        this.mPlayer.setVideoDebugListener(componentListener);
        this.mPlayer.addMetadataOutput(componentListener);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mPrepared = false;
        this.mNewlyPrepared = false;
        this.mRebuffering = false;
        this.mPendingSeek = false;
        this.mHasAudioAttributes = false;
        this.mAudioSessionId = 0;
        this.mAuxEffectId = 0;
        this.mAuxEffectSendLevel = 0.0f;
        this.mPlaybackParams = new PlaybackParams.Builder().setSpeed(1.0f).setPitch(1.0f).setAudioFallbackMode(0).build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.media2.exoplayer.external.BasePlayer, androidx.media2.exoplayer.external.SimpleExoPlayer] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void seekTo(long r6, int r8) {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r0 = r0.mPlayer
            r1 = r8
            androidx.media2.exoplayer.external.SeekParameters r1 = androidx.media2.player.exoplayer.ExoPlayerUtils.getSeekParameters(r1)
            r0.setSeekParameters(r1)
            r0 = r5
            androidx.media2.player.exoplayer.ExoPlayerWrapper$MediaItemQueue r0 = r0.mMediaItemQueue
            androidx.media2.common.MediaItem r0 = r0.getCurrentMediaItem()
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0065
            r0 = r9
            long r0 = r0.getStartPosition()
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0036
            r0 = r9
            long r0 = r0.getEndPosition()
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0036
            r0 = 1
            r12 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 0
            r12 = r0
        L_0x0039:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Requested seek position is out of range : "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r13
            java.lang.String r1 = r1.toString()
            androidx.core.util.Preconditions.checkArgument(r0, r1)
            r0 = r6
            r1 = r9
            long r1 = r1.getStartPosition()
            long r0 = r0 - r1
            r10 = r0
        L_0x0065:
            r0 = r5
            androidx.media2.exoplayer.external.SimpleExoPlayer r0 = r0.mPlayer
            r1 = r10
            r0.seekTo(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.exoplayer.ExoPlayerWrapper.seekTo(long, int):void");
    }

    public void selectTrack(int i) {
        this.mTrackSelector.selectTrack(i);
    }

    public void setAudioAttributes(AudioAttributesCompat audioAttributesCompat) {
        this.mHasAudioAttributes = true;
        this.mPlayer.setAudioAttributes(ExoPlayerUtils.getAudioAttributes(audioAttributesCompat));
        int i = this.mAudioSessionId;
        if (i != 0) {
            updatePlayerAudioSessionId(this.mPlayerHandler, this.mAudioSink, i);
        }
    }

    public void setAudioSessionId(int i) {
        this.mAudioSessionId = i;
        if (this.mPlayer != null) {
            updatePlayerAudioSessionId(this.mPlayerHandler, this.mAudioSink, this.mAudioSessionId);
        }
    }

    public void setAuxEffectSendLevel(float f) {
        this.mAuxEffectSendLevel = f;
        this.mPlayer.setAuxEffectInfo(new AuxEffectInfo(this.mAuxEffectId, f));
    }

    public void setMediaItem(MediaItem mediaItem) {
        this.mMediaItemQueue.setMediaItem((MediaItem) Preconditions.checkNotNull(mediaItem));
    }

    public void setNextMediaItem(MediaItem mediaItem) {
        if (this.mMediaItemQueue.isEmpty()) {
            if (mediaItem instanceof FileMediaItem) {
                FileMediaItem fileMediaItem = (FileMediaItem) mediaItem;
                fileMediaItem.increaseRefCount();
                fileMediaItem.decreaseRefCount();
            }
            throw new IllegalStateException();
        }
        this.mMediaItemQueue.setNextMediaItems(Collections.singletonList(mediaItem));
    }

    public void setNextMediaItems(List<MediaItem> list) {
        if (this.mMediaItemQueue.isEmpty()) {
            Iterator<MediaItem> it = list.iterator();
            while (it.hasNext()) {
                FileMediaItem fileMediaItem = (FileMediaItem) it.next();
                fileMediaItem.increaseRefCount();
                fileMediaItem.decreaseRefCount();
            }
            throw new IllegalStateException();
        }
        this.mMediaItemQueue.setNextMediaItems((List) Preconditions.checkNotNull(list));
    }

    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.mPlaybackParams = playbackParams;
        this.mPlayer.setPlaybackParameters(ExoPlayerUtils.getPlaybackParameters(this.mPlaybackParams));
        if (getState() == 1004) {
            this.mListener.onMediaTimeDiscontinuity(getCurrentMediaItem(), getTimestamp());
        }
    }

    public void setSurface(Surface surface) {
        this.mPlayer.setVideoSurface(surface);
    }

    public void setVolume(float f) {
        this.mPlayer.setVolume(f);
    }

    public void skipToNext() {
        this.mMediaItemQueue.skipToNext();
    }

    public void updateBufferingAndScheduleNextPollBuffer() {
        if (this.mMediaItemQueue.getCurrentMediaItemIsRemote()) {
            this.mListener.onBufferingUpdate(getCurrentMediaItem(), this.mPlayer.getBufferedPercentage());
        }
        this.mHandler.removeCallbacks(this.mPollBufferRunnable);
        this.mHandler.postDelayed(this.mPollBufferRunnable, 1000L);
    }
}
