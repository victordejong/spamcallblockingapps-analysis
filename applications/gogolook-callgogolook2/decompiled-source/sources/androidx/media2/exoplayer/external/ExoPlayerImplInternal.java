package androidx.media2.exoplayer.external;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.DefaultMediaClock;
import androidx.media2.exoplayer.external.PlayerMessage;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.SampleStream;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelectorResult;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.HandlerWrapper;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.TraceUtil;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImplInternal.class */
public final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSource.SourceInfoRefreshListener, DefaultMediaClock.PlaybackParameterListener, PlayerMessage.Sender {
    public static final int IDLE_INTERVAL_MS = 1000;
    public static final int MSG_DO_SOME_WORK = 2;
    public static final int MSG_ERROR = 2;
    public static final int MSG_PERIOD_PREPARED = 9;
    public static final int MSG_PLAYBACK_INFO_CHANGED = 0;
    public static final int MSG_PLAYBACK_PARAMETERS_CHANGED = 1;
    public static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 17;
    public static final int MSG_PREPARE = 0;
    public static final int MSG_REFRESH_SOURCE_INFO = 8;
    public static final int MSG_RELEASE = 7;
    public static final int MSG_SEEK_TO = 3;
    public static final int MSG_SEND_MESSAGE = 15;
    public static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 16;
    public static final int MSG_SET_FOREGROUND_MODE = 14;
    public static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    public static final int MSG_SET_PLAY_WHEN_READY = 1;
    public static final int MSG_SET_REPEAT_MODE = 12;
    public static final int MSG_SET_SEEK_PARAMETERS = 5;
    public static final int MSG_SET_SHUFFLE_ENABLED = 13;
    public static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 10;
    public static final int MSG_STOP = 6;
    public static final int MSG_TRACK_SELECTION_INVALIDATED = 11;
    public static final int PREPARING_SOURCE_INTERVAL_MS = 10;
    public static final int RENDERING_INTERVAL_MS = 10;
    public static final String TAG = "ExoPlayerImplInternal";
    public final long backBufferDurationUs;
    public final BandwidthMeter bandwidthMeter;
    public final Clock clock;
    public final TrackSelectorResult emptyTrackSelectorResult;
    public Renderer[] enabledRenderers;
    public final Handler eventHandler;
    public boolean foregroundMode;
    public final HandlerWrapper handler;
    public final HandlerThread internalPlaybackThread;
    public final LoadControl loadControl;
    public final DefaultMediaClock mediaClock;
    public MediaSource mediaSource;
    public int nextPendingMessageIndex;
    public SeekPosition pendingInitialSeekPosition;
    public final ArrayList<PendingMessageInfo> pendingMessages;
    public int pendingPrepareCount;
    public final Timeline.Period period;
    public boolean playWhenReady;
    public PlaybackInfo playbackInfo;
    public boolean rebuffering;
    public boolean released;
    public final RendererCapabilities[] rendererCapabilities;
    public long rendererPositionUs;
    public final Renderer[] renderers;
    public int repeatMode;
    public final boolean retainBackBufferFromKeyframe;
    public boolean shuffleModeEnabled;
    public final TrackSelector trackSelector;
    public final Timeline.Window window;
    public final MediaPeriodQueue queue = new MediaPeriodQueue();
    public SeekParameters seekParameters = SeekParameters.DEFAULT;
    public final PlaybackInfoUpdate playbackInfoUpdate = new PlaybackInfoUpdate();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImplInternal$MediaSourceRefreshInfo.class */
    public static final class MediaSourceRefreshInfo {
        public final Object manifest;
        public final MediaSource source;
        public final Timeline timeline;

        public MediaSourceRefreshInfo(MediaSource mediaSource, Timeline timeline, Object obj) {
            this.source = mediaSource;
            this.timeline = timeline;
            this.manifest = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo.class */
    public static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;
        @Nullable
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.message = playerMessage;
        }

        public int compareTo(@NonNull PendingMessageInfo pendingMessageInfo) {
            int i = 1;
            if ((this.resolvedPeriodUid == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                if (this.resolvedPeriodUid != null) {
                    i = -1;
                }
                return i;
            } else if (this.resolvedPeriodUid == null) {
                return 0;
            } else {
                int i2 = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
                return i2 != 0 ? i2 : Util.compareLong(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
            }
        }

        public void setResolvedPosition(int i, long j, Object obj) {
            this.resolvedPeriodIndex = i;
            this.resolvedPeriodTimeUs = j;
            this.resolvedPeriodUid = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate.class */
    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        public PlaybackInfo lastPlaybackInfo;
        public int operationAcks;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate() {
        }

        public boolean hasPendingUpdate(PlaybackInfo playbackInfo) {
            return playbackInfo != this.lastPlaybackInfo || this.operationAcks > 0 || this.positionDiscontinuity;
        }

        public void incrementPendingOperationAcks(int i) {
            this.operationAcks += i;
        }

        public void reset(PlaybackInfo playbackInfo) {
            this.lastPlaybackInfo = playbackInfo;
            this.operationAcks = 0;
            this.positionDiscontinuity = false;
        }

        public void setPositionDiscontinuity(int i) {
            boolean z = true;
            if (!this.positionDiscontinuity || this.discontinuityReason == 4) {
                this.positionDiscontinuity = true;
                this.discontinuityReason = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            Assertions.checkArgument(z);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImplInternal$SeekPosition.class */
    public static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int i, long j) {
            this.timeline = timeline;
            this.windowIndex = i;
            this.windowPositionUs = j;
        }
    }

    public ExoPlayerImplInternal(Renderer[] rendererArr, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, boolean z, int i, boolean z2, Handler handler, Clock clock) {
        this.renderers = rendererArr;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.playWhenReady = z;
        this.repeatMode = i;
        this.shuffleModeEnabled = z2;
        this.eventHandler = handler;
        this.clock = clock;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe();
        this.playbackInfo = PlaybackInfo.createDummy(C0463C.TIME_UNSET, trackSelectorResult);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            rendererArr[i2].setIndex(i2);
            this.rendererCapabilities[i2] = rendererArr[i2].getCapabilities();
        }
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.enabledRenderers = new Renderer[0];
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.internalPlaybackThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.internalPlaybackThread.start();
        this.handler = clock.createHandler(this.internalPlaybackThread.getLooper(), this);
    }

    private void deliverMessage(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (!playerMessage.isCanceled()) {
            try {
                playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
            } finally {
                playerMessage.markAsProcessed(true);
            }
        }
    }

    private void disableRenderer(Renderer renderer) throws ExoPlaybackException {
        this.mediaClock.onRendererDisabled(renderer);
        ensureStopped(renderer);
        renderer.disable();
    }

    private void doSomeWork() throws ExoPlaybackException, IOException {
        Renderer[] rendererArr;
        int i;
        long uptimeMillis = this.clock.uptimeMillis();
        updatePeriods();
        if (!this.queue.hasPlayingPeriod()) {
            maybeThrowPeriodPrepareError();
            scheduleNextWork(uptimeMillis, 10L);
            return;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        playingPeriod.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
        boolean z = true;
        boolean z2 = true;
        for (Renderer renderer : this.enabledRenderers) {
            renderer.render(this.rendererPositionUs, elapsedRealtime * 1000);
            z2 = z2 && renderer.isEnded();
            boolean z3 = renderer.isReady() || renderer.isEnded() || rendererWaitingForNextStream(renderer);
            if (!z3) {
                renderer.maybeThrowStreamError();
            }
            z = z && z3;
        }
        if (!z) {
            maybeThrowPeriodPrepareError();
        }
        long j = playingPeriod.info.durationUs;
        if (z2 && ((j == C0463C.TIME_UNSET || j <= this.playbackInfo.positionUs) && playingPeriod.info.isFinal)) {
            setState(4);
            stopRenderers();
        } else if (this.playbackInfo.playbackState == 2 && shouldTransitionToReadyState(z)) {
            setState(3);
            if (this.playWhenReady) {
                startRenderers();
            }
        } else if (this.playbackInfo.playbackState == 3 && (this.enabledRenderers.length != 0 ? !z : !isTimelineReady())) {
            this.rebuffering = this.playWhenReady;
            setState(2);
            stopRenderers();
        }
        if (this.playbackInfo.playbackState == 2) {
            for (Renderer renderer2 : this.enabledRenderers) {
                renderer2.maybeThrowStreamError();
            }
        }
        if ((this.playWhenReady && this.playbackInfo.playbackState == 3) || (i = this.playbackInfo.playbackState) == 2) {
            scheduleNextWork(uptimeMillis, 10L);
        } else if (this.enabledRenderers.length == 0 || i == 4) {
            this.handler.removeMessages(2);
        } else {
            scheduleNextWork(uptimeMillis, 1000L);
        }
        TraceUtil.endSection();
    }

    private void enableRenderer(int i, boolean z, int i2) throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        Renderer renderer = this.renderers[i];
        this.enabledRenderers[i2] = renderer;
        if (renderer.getState() == 0) {
            TrackSelectorResult trackSelectorResult = playingPeriod.getTrackSelectorResult();
            RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i];
            Format[] formats = getFormats(trackSelectorResult.selections.get(i));
            boolean z2 = this.playWhenReady && this.playbackInfo.playbackState == 3;
            renderer.enable(rendererConfiguration, formats, playingPeriod.sampleStreams[i], this.rendererPositionUs, !z && z2, playingPeriod.getRendererOffset());
            this.mediaClock.onRendererEnabled(renderer);
            if (z2) {
                renderer.start();
            }
        }
    }

    private void enableRenderers(boolean[] zArr, int i) throws ExoPlaybackException {
        this.enabledRenderers = new Renderer[i];
        TrackSelectorResult trackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
        for (int i2 = 0; i2 < this.renderers.length; i2++) {
            if (!trackSelectorResult.isRendererEnabled(i2)) {
                this.renderers[i2].reset();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.renderers.length; i4++) {
            i3 = i3;
            if (trackSelectorResult.isRendererEnabled(i4)) {
                enableRenderer(i4, zArr[i4], i3);
                i3++;
            }
        }
    }

    private void ensureStopped(Renderer renderer) throws ExoPlaybackException {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    public static Format[] getFormats(TrackSelection trackSelection) {
        int length = trackSelection != null ? trackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = trackSelection.getFormat(i);
        }
        return formatArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getMaxRendererReadPositionUs() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.MediaPeriodQueue r0 = r0.queue
            androidx.media2.exoplayer.external.MediaPeriodHolder r0 = r0.getReadingPeriod()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r6
            long r0 = r0.getRendererOffset()
            r7 = r0
            r0 = 0
            r9 = r0
        L_0x0016:
            r0 = r5
            androidx.media2.exoplayer.external.Renderer[] r0 = r0.renderers
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 >= r1) goto L_0x007c
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r9
            r0 = r0[r1]
            int r0 = r0.getState()
            if (r0 == 0) goto L_0x0073
            r0 = r5
            androidx.media2.exoplayer.external.Renderer[] r0 = r0.renderers
            r1 = r9
            r0 = r0[r1]
            androidx.media2.exoplayer.external.source.SampleStream r0 = r0.getStream()
            r1 = r6
            androidx.media2.exoplayer.external.source.SampleStream[] r1 = r1.sampleStreams
            r2 = r9
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0050
            r0 = r7
            r11 = r0
            goto L_0x0073
        L_0x0050:
            r0 = r5
            androidx.media2.exoplayer.external.Renderer[] r0 = r0.renderers
            r1 = r9
            r0 = r0[r1]
            long r0 = r0.getReadingPositionUs()
            r11 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006b
            r0 = -9223372036854775808
            return r0
        L_0x006b:
            r0 = r11
            r1 = r7
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
        L_0x0073:
            int r9 = r9 + 1
            r0 = r11
            r7 = r0
            goto L_0x0016
        L_0x007c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.getMaxRendererReadPositionUs():long");
    }

    private Pair<Object, Long> getPeriodPosition(Timeline timeline, int i, long j) {
        return timeline.getPeriodPosition(this.window, this.period, i, j);
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private long getTotalBufferedDurationUs(long j) {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        return loadingPeriod == null ? 0L : j - loadingPeriod.toPeriodTime(this.rendererPositionUs);
    }

    private void handleContinueLoadingRequested(MediaPeriod mediaPeriod) {
        if (this.queue.isLoading(mediaPeriod)) {
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        }
    }

    private void handleLoadingMediaPeriodChanged(boolean z) {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        MediaSource.MediaPeriodId mediaPeriodId = loadingPeriod == null ? this.playbackInfo.periodId : loadingPeriod.info.f80id;
        boolean z2 = !this.playbackInfo.loadingMediaPeriodId.equals(mediaPeriodId);
        if (z2) {
            this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.bufferedPositionUs = loadingPeriod == null ? playbackInfo.positionUs : loadingPeriod.getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if ((z2 || z) && loadingPeriod != null && loadingPeriod.prepared) {
            updateLoadControlTrackSelection(loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
        }
    }

    private void handlePeriodPrepared(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        if (this.queue.isLoading(mediaPeriod)) {
            MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
            loadingPeriod.handlePrepared(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline);
            updateLoadControlTrackSelection(loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
            if (!this.queue.hasPlayingPeriod()) {
                resetRendererPosition(this.queue.advancePlayingPeriod().info.startPositionUs);
                updatePlayingPeriodRenderers(null);
            }
            maybeContinueLoading();
        }
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters) throws ExoPlaybackException {
        Renderer[] rendererArr;
        this.eventHandler.obtainMessage(1, playbackParameters).sendToTarget();
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
        for (Renderer renderer : this.renderers) {
            if (renderer != null) {
                renderer.setOperatingRate(playbackParameters.speed);
            }
        }
    }

    private void handleSourceInfoRefreshEndedPlayback() {
        setState(4);
        resetInternal(false, false, true, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [androidx.media2.exoplayer.external.MediaPeriodQueue] */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.media2.exoplayer.external.ExoPlayerImplInternal] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r17v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.media2.exoplayer.external.PlaybackInfo] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleSourceInfoRefreshed(androidx.media2.exoplayer.external.ExoPlayerImplInternal.MediaSourceRefreshInfo r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.handleSourceInfoRefreshed(androidx.media2.exoplayer.external.ExoPlayerImplInternal$MediaSourceRefreshInfo):void");
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder next = playingPeriod.getNext();
        long j = playingPeriod.info.durationUs;
        return j == C0463C.TIME_UNSET || this.playbackInfo.positionUs < j || (next != null && (next.prepared || next.info.f80id.isAd()));
    }

    private void maybeContinueLoading() {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        long nextLoadPositionUs = loadingPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            setIsLoading(false);
            return;
        }
        boolean shouldContinueLoading = this.loadControl.shouldContinueLoading(getTotalBufferedDurationUs(nextLoadPositionUs), this.mediaClock.getPlaybackParameters().speed);
        setIsLoading(shouldContinueLoading);
        if (shouldContinueLoading) {
            loadingPeriod.continueLoading(this.rendererPositionUs);
        }
    }

    private void maybeNotifyPlaybackInfoChanged() {
        if (this.playbackInfoUpdate.hasPendingUpdate(this.playbackInfo)) {
            this.eventHandler.obtainMessage(0, this.playbackInfoUpdate.operationAcks, this.playbackInfoUpdate.positionDiscontinuity ? this.playbackInfoUpdate.discontinuityReason : -1, this.playbackInfo).sendToTarget();
            this.playbackInfoUpdate.reset(this.playbackInfo);
        }
    }

    private void maybeThrowPeriodPrepareError() throws IOException {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (!(loadingPeriod == null || loadingPeriod.prepared)) {
            if (readingPeriod == null || readingPeriod.getNext() == loadingPeriod) {
                for (Renderer renderer : this.enabledRenderers) {
                    if (!renderer.hasReadStreamToEnd()) {
                        return;
                    }
                }
                loadingPeriod.mediaPeriod.maybeThrowPrepareError();
            }
        }
    }

    private void maybeThrowSourceInfoRefreshError() throws IOException {
        if (this.queue.getLoadingPeriod() != null) {
            for (Renderer renderer : this.enabledRenderers) {
                if (!renderer.hasReadStreamToEnd()) {
                    return;
                }
            }
        }
        this.mediaSource.maybeThrowSourceInfoRefreshError();
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0154 A[EDGE_INSN: B:80:0x0154->B:95:0x0154 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x006b -> B:13:0x0071). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00e4 -> B:28:0x00ea). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void maybeTriggerPendingMessages(long r6, long r8) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.maybeTriggerPendingMessages(long, long):void");
    }

    private void maybeUpdateLoadingPeriod() throws IOException {
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        if (this.queue.shouldLoadNextMediaPeriod()) {
            MediaPeriodInfo nextMediaPeriodInfo = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo);
            if (nextMediaPeriodInfo == null) {
                maybeThrowSourceInfoRefreshError();
                return;
            }
            this.queue.enqueueNextMediaPeriod(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSource, nextMediaPeriodInfo).prepare(this, nextMediaPeriodInfo.startPositionUs);
            setIsLoading(true);
            handleLoadingMediaPeriodChanged(false);
        }
    }

    private void notifyTrackSelectionDiscontinuity() {
        TrackSelection[] all;
        for (MediaPeriodHolder frontPeriod = this.queue.getFrontPeriod(); frontPeriod != null; frontPeriod = frontPeriod.getNext()) {
            TrackSelectorResult trackSelectorResult = frontPeriod.getTrackSelectorResult();
            if (trackSelectorResult != null) {
                for (TrackSelection trackSelection : trackSelectorResult.selections.getAll()) {
                    if (trackSelection != null) {
                        trackSelection.onDiscontinuity();
                    }
                }
            }
        }
    }

    private void prepareInternal(MediaSource mediaSource, boolean z, boolean z2) {
        this.pendingPrepareCount++;
        resetInternal(false, true, z, z2);
        this.loadControl.onPrepared();
        this.mediaSource = mediaSource;
        setState(2);
        mediaSource.prepareSource(this, this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
    }

    private void releaseInternal() {
        resetInternal(true, true, true, true);
        this.loadControl.onReleased();
        setState(1);
        this.internalPlaybackThread.quit();
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private boolean rendererWaitingForNextStream(Renderer renderer) {
        MediaPeriodHolder next = this.queue.getReadingPeriod().getNext();
        return next != null && next.prepared && renderer.hasReadStreamToEnd();
    }

    private void reselectTracksInternal() throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            float f = this.mediaClock.getPlaybackParameters().speed;
            MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
            boolean z = true;
            for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null && playingPeriod.prepared; playingPeriod = playingPeriod.getNext()) {
                TrackSelectorResult selectTracks = playingPeriod.selectTracks(f, this.playbackInfo.timeline);
                if (selectTracks != null) {
                    if (z) {
                        MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
                        boolean removeAfter = this.queue.removeAfter(playingPeriod2);
                        boolean[] zArr = new boolean[this.renderers.length];
                        long applyTrackSelection = playingPeriod2.applyTrackSelection(selectTracks, this.playbackInfo.positionUs, removeAfter, zArr);
                        PlaybackInfo playbackInfo = this.playbackInfo;
                        if (!(playbackInfo.playbackState == 4 || applyTrackSelection == playbackInfo.positionUs)) {
                            PlaybackInfo playbackInfo2 = this.playbackInfo;
                            this.playbackInfo = playbackInfo2.copyWithNewPosition(playbackInfo2.periodId, applyTrackSelection, playbackInfo2.contentPositionUs, getTotalBufferedDurationUs());
                            this.playbackInfoUpdate.setPositionDiscontinuity(4);
                            resetRendererPosition(applyTrackSelection);
                        }
                        boolean[] zArr2 = new boolean[this.renderers.length];
                        int i = 0;
                        int i2 = 0;
                        while (true) {
                            Renderer[] rendererArr = this.renderers;
                            if (i >= rendererArr.length) {
                                break;
                            }
                            Renderer renderer = rendererArr[i];
                            zArr2[i] = renderer.getState() != 0;
                            SampleStream sampleStream = playingPeriod2.sampleStreams[i];
                            i2 = i2;
                            if (sampleStream != null) {
                                i2++;
                            }
                            if (zArr2[i]) {
                                if (sampleStream != renderer.getStream()) {
                                    disableRenderer(renderer);
                                } else if (zArr[i]) {
                                    renderer.resetPosition(this.rendererPositionUs);
                                }
                            }
                            i++;
                        }
                        this.playbackInfo = this.playbackInfo.copyWithTrackInfo(playingPeriod2.getTrackGroups(), playingPeriod2.getTrackSelectorResult());
                        enableRenderers(zArr2, i2);
                    } else {
                        this.queue.removeAfter(playingPeriod);
                        if (playingPeriod.prepared) {
                            playingPeriod.applyTrackSelection(selectTracks, Math.max(playingPeriod.info.startPositionUs, playingPeriod.toPeriodTime(this.rendererPositionUs)), false);
                        }
                    }
                    handleLoadingMediaPeriodChanged(true);
                    if (this.playbackInfo.playbackState != 4) {
                        maybeContinueLoading();
                        updatePlaybackPositions();
                        this.handler.sendEmptyMessage(2);
                        return;
                    }
                    return;
                }
                if (playingPeriod == readingPeriod) {
                    z = false;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0203  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void resetInternal(boolean r23, boolean r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.resetInternal(boolean, boolean, boolean, boolean):void");
    }

    private void resetRendererPosition(long j) throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            j = this.queue.getPlayingPeriod().toRendererTime(j);
        }
        this.rendererPositionUs = j;
        this.mediaClock.resetPosition(this.rendererPositionUs);
        for (Renderer renderer : this.enabledRenderers) {
            renderer.resetPosition(this.rendererPositionUs);
        }
        notifyTrackSelectionDiscontinuity();
    }

    private boolean resolvePendingMessagePosition(PendingMessageInfo pendingMessageInfo) {
        Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            Pair<Object, Long> resolveSeekPosition = resolveSeekPosition(new SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getWindowIndex(), C0463C.msToUs(pendingMessageInfo.message.getPositionMs())), false);
            if (resolveSeekPosition == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(this.playbackInfo.timeline.getIndexOfPeriod(resolveSeekPosition.first), ((Long) resolveSeekPosition.second).longValue(), resolveSeekPosition.first);
            return true;
        }
        int indexOfPeriod = this.playbackInfo.timeline.getIndexOfPeriod(obj);
        if (indexOfPeriod == -1) {
            return false;
        }
        pendingMessageInfo.resolvedPeriodIndex = indexOfPeriod;
        return true;
    }

    private void resolvePendingMessagePositions() {
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!resolvePendingMessagePosition(this.pendingMessages.get(size))) {
                this.pendingMessages.get(size).message.markAsProcessed(false);
                this.pendingMessages.remove(size);
            }
        }
        Collections.sort(this.pendingMessages);
    }

    private Pair<Object, Long> resolveSeekPosition(SeekPosition seekPosition, boolean z) {
        int indexOfPeriod;
        Timeline timeline = this.playbackInfo.timeline;
        Timeline timeline2 = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        Timeline timeline3 = timeline2;
        if (timeline2.isEmpty()) {
            timeline3 = timeline;
        }
        try {
            Pair<Object, Long> periodPosition = timeline3.getPeriodPosition(this.window, this.period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            if (timeline != timeline3 && (indexOfPeriod = timeline.getIndexOfPeriod(periodPosition.first)) == -1) {
                if (!z || resolveSubsequentPeriod(periodPosition.first, timeline3, timeline) == null) {
                    return null;
                }
                return getPeriodPosition(timeline, timeline.getPeriod(indexOfPeriod, this.period).windowIndex, C0463C.TIME_UNSET);
            }
            return periodPosition;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    @Nullable
    private Object resolveSubsequentPeriod(Object obj, Timeline timeline, Timeline timeline2) {
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        int periodCount = timeline.getPeriodCount();
        int i = -1;
        for (int i2 = 0; i2 < periodCount && i == -1; i2++) {
            indexOfPeriod = timeline.getNextPeriodIndex(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (indexOfPeriod == -1) {
                break;
            }
            i = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(indexOfPeriod));
        }
        return i == -1 ? null : timeline2.getUidOfPeriod(i);
    }

    private void scheduleNextWork(long j, long j2) {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessageAtTime(2, j + j2);
    }

    private void seekToCurrentPosition(boolean z) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.queue.getPlayingPeriod().info.f80id;
        long seekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, this.playbackInfo.positionUs, true);
        if (seekToPeriodPosition != this.playbackInfo.positionUs) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = playbackInfo.copyWithNewPosition(mediaPeriodId, seekToPeriodPosition, playbackInfo.contentPositionUs, getTotalBufferedDurationUs());
            if (z) {
                this.playbackInfoUpdate.setPositionDiscontinuity(4);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6 A[Catch: all -> 0x017f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x017f, blocks: (B:14:0x008c, B:16:0x0093, B:21:0x00a6, B:22:0x00b6, B:24:0x00c4, B:28:0x00d7, B:31:0x00f3, B:33:0x0106, B:39:0x0135, B:44:0x0158), top: B:56:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6 A[Catch: all -> 0x017f, TRY_ENTER, TryCatch #0 {all -> 0x017f, blocks: (B:14:0x008c, B:16:0x0093, B:21:0x00a6, B:22:0x00b6, B:24:0x00c4, B:28:0x00d7, B:31:0x00f3, B:33:0x0106, B:39:0x0135, B:44:0x0158), top: B:56:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [androidx.media2.exoplayer.external.source.MediaPeriod] */
    /* JADX WARN: Type inference failed for: r0v64, types: [androidx.media2.exoplayer.external.MediaPeriodQueue] */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.media2.exoplayer.external.ExoPlayerImplInternal] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r17v5, types: [long] */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.media2.exoplayer.external.PlaybackInfo] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void seekToInternal(androidx.media2.exoplayer.external.ExoPlayerImplInternal.SeekPosition r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.seekToInternal(androidx.media2.exoplayer.external.ExoPlayerImplInternal$SeekPosition):void");
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j) throws ExoPlaybackException {
        return seekToPeriodPosition(mediaPeriodId, j, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.media2.exoplayer.external.ExoPlayerImplInternal] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) throws ExoPlaybackException {
        char c;
        stopRenderers();
        this.rebuffering = false;
        setState(2);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder mediaPeriodHolder = playingPeriod;
        while (true) {
            if (mediaPeriodHolder == null) {
                break;
            }
            if (mediaPeriodId.equals(mediaPeriodHolder.info.f80id) && mediaPeriodHolder.prepared) {
                this.queue.removeAfter(mediaPeriodHolder);
                break;
            }
            mediaPeriodHolder = this.queue.advancePlayingPeriod();
        }
        if (playingPeriod != mediaPeriodHolder || z) {
            for (Renderer renderer : this.enabledRenderers) {
                disableRenderer(renderer);
            }
            this.enabledRenderers = new Renderer[0];
            playingPeriod = null;
        }
        if (mediaPeriodHolder != null) {
            updatePlayingPeriodRenderers(playingPeriod);
            char c2 = j;
            if (mediaPeriodHolder.hasEnabledTracks) {
                long seekToUs = mediaPeriodHolder.mediaPeriod.seekToUs(j);
                mediaPeriodHolder.mediaPeriod.discardBuffer(seekToUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
                c2 = seekToUs;
            }
            resetRendererPosition(c2);
            maybeContinueLoading();
            c = c2;
        } else {
            this.queue.clear(true);
            this.playbackInfo = this.playbackInfo.copyWithTrackInfo(TrackGroupArray.EMPTY, this.emptyTrackSelectorResult);
            resetRendererPosition(j);
            c = j;
        }
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return c;
    }

    private void sendMessageInternal(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getPositionMs() == C0463C.TIME_UNSET) {
            sendMessageToTarget(playerMessage);
        } else if (this.mediaSource == null || this.pendingPrepareCount > 0) {
            this.pendingMessages.add(new PendingMessageInfo(playerMessage));
        } else {
            PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(playerMessage);
            if (resolvePendingMessagePosition(pendingMessageInfo)) {
                this.pendingMessages.add(pendingMessageInfo);
                Collections.sort(this.pendingMessages);
                return;
            }
            playerMessage.markAsProcessed(false);
        }
    }

    private void sendMessageToTarget(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getHandler().getLooper() == this.handler.getLooper()) {
            deliverMessage(playerMessage);
            int i = this.playbackInfo.playbackState;
            if (i == 3 || i == 2) {
                this.handler.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.handler.obtainMessage(16, playerMessage).sendToTarget();
    }

    private void sendMessageToTargetThread(final PlayerMessage playerMessage) {
        playerMessage.getHandler().post(new Runnable(this, playerMessage) { // from class: androidx.media2.exoplayer.external.ExoPlayerImplInternal$$Lambda$0
            public final ExoPlayerImplInternal arg$1;
            public final PlayerMessage arg$2;

            {
                this.arg$1 = this;
                this.arg$2 = playerMessage;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$sendMessageToTargetThread$0$ExoPlayerImplInternal(this.arg$2);
            }
        });
    }

    private void setForegroundModeInternal(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        Renderer[] rendererArr;
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (!z) {
                for (Renderer renderer : this.renderers) {
                    if (renderer.getState() == 0) {
                        renderer.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void setIsLoading(boolean z) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.isLoading != z) {
            this.playbackInfo = playbackInfo.copyWithIsLoading(z);
        }
    }

    private void setPlayWhenReadyInternal(boolean z) throws ExoPlaybackException {
        this.rebuffering = false;
        this.playWhenReady = z;
        if (!z) {
            stopRenderers();
            updatePlaybackPositions();
            return;
        }
        int i = this.playbackInfo.playbackState;
        if (i == 3) {
            startRenderers();
            this.handler.sendEmptyMessage(2);
        } else if (i == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setPlaybackParametersInternal(PlaybackParameters playbackParameters) {
        this.mediaClock.setPlaybackParameters(playbackParameters);
    }

    private void setRepeatModeInternal(int i) throws ExoPlaybackException {
        this.repeatMode = i;
        if (!this.queue.updateRepeatMode(i)) {
            seekToCurrentPosition(true);
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setSeekParametersInternal(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setShuffleModeEnabledInternal(boolean z) throws ExoPlaybackException {
        this.shuffleModeEnabled = z;
        if (!this.queue.updateShuffleModeEnabled(z)) {
            seekToCurrentPosition(true);
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setState(int i) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i) {
            this.playbackInfo = playbackInfo.copyWithPlaybackState(i);
        }
    }

    private boolean shouldTransitionToReadyState(boolean z) {
        if (this.enabledRenderers.length == 0) {
            return isTimelineReady();
        }
        boolean z2 = false;
        if (!z) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        if ((loadingPeriod.isFullyBuffered() && loadingPeriod.info.isFinal) || this.loadControl.shouldStartPlayback(getTotalBufferedDurationUs(), this.mediaClock.getPlaybackParameters().speed, this.rebuffering)) {
            z2 = true;
        }
        return z2;
    }

    private void startRenderers() throws ExoPlaybackException {
        this.rebuffering = false;
        this.mediaClock.start();
        for (Renderer renderer : this.enabledRenderers) {
            renderer.start();
        }
    }

    private void stopInternal(boolean z, boolean z2, boolean z3) {
        resetInternal(z || !this.foregroundMode, true, z2, z2);
        this.playbackInfoUpdate.incrementPendingOperationAcks(this.pendingPrepareCount + (z3 ? 1 : 0));
        this.pendingPrepareCount = 0;
        this.loadControl.onStopped();
        setState(1);
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        for (Renderer renderer : this.enabledRenderers) {
            ensureStopped(renderer);
        }
    }

    private void updateLoadControlTrackSelection(TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        this.loadControl.onTracksSelected(this.renderers, trackGroupArray, trackSelectorResult.selections);
    }

    private void updatePeriods() throws ExoPlaybackException, IOException {
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            if (this.pendingPrepareCount > 0) {
                mediaSource.maybeThrowSourceInfoRefreshError();
                return;
            }
            maybeUpdateLoadingPeriod();
            MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
            int i = 0;
            if (loadingPeriod == null || loadingPeriod.isFullyBuffered()) {
                setIsLoading(false);
            } else if (!this.playbackInfo.isLoading) {
                maybeContinueLoading();
            }
            if (this.queue.hasPlayingPeriod()) {
                MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
                boolean z = false;
                while (this.playWhenReady && playingPeriod != readingPeriod && this.rendererPositionUs >= playingPeriod.getNext().getStartPositionRendererTime()) {
                    if (z) {
                        maybeNotifyPlaybackInfoChanged();
                    }
                    int i2 = playingPeriod.info.isLastInTimelinePeriod ? 0 : 3;
                    MediaPeriodHolder advancePlayingPeriod = this.queue.advancePlayingPeriod();
                    updatePlayingPeriodRenderers(playingPeriod);
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    MediaPeriodInfo mediaPeriodInfo = advancePlayingPeriod.info;
                    this.playbackInfo = playbackInfo.copyWithNewPosition(mediaPeriodInfo.f80id, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.contentPositionUs, getTotalBufferedDurationUs());
                    this.playbackInfoUpdate.setPositionDiscontinuity(i2);
                    updatePlaybackPositions();
                    playingPeriod = advancePlayingPeriod;
                    z = true;
                }
                if (readingPeriod.info.isFinal) {
                    while (true) {
                        Renderer[] rendererArr = this.renderers;
                        if (i < rendererArr.length) {
                            Renderer renderer = rendererArr[i];
                            SampleStream sampleStream = readingPeriod.sampleStreams[i];
                            if (sampleStream != null && renderer.getStream() == sampleStream && renderer.hasReadStreamToEnd()) {
                                renderer.setCurrentStreamFinal();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                } else if (readingPeriod.getNext() != null) {
                    int i3 = 0;
                    while (true) {
                        Renderer[] rendererArr2 = this.renderers;
                        if (i3 < rendererArr2.length) {
                            Renderer renderer2 = rendererArr2[i3];
                            SampleStream sampleStream2 = readingPeriod.sampleStreams[i3];
                            if (renderer2.getStream() != sampleStream2) {
                                return;
                            }
                            if (sampleStream2 == null || renderer2.hasReadStreamToEnd()) {
                                i3++;
                            } else {
                                return;
                            }
                        } else if (!readingPeriod.getNext().prepared) {
                            maybeThrowPeriodPrepareError();
                            return;
                        } else {
                            TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
                            MediaPeriodHolder advanceReadingPeriod = this.queue.advanceReadingPeriod();
                            TrackSelectorResult trackSelectorResult2 = advanceReadingPeriod.getTrackSelectorResult();
                            boolean z2 = advanceReadingPeriod.mediaPeriod.readDiscontinuity() != C0463C.TIME_UNSET;
                            int i4 = 0;
                            while (true) {
                                Renderer[] rendererArr3 = this.renderers;
                                if (i4 < rendererArr3.length) {
                                    Renderer renderer3 = rendererArr3[i4];
                                    if (trackSelectorResult.isRendererEnabled(i4)) {
                                        if (z2) {
                                            renderer3.setCurrentStreamFinal();
                                        } else if (!renderer3.isCurrentStreamFinal()) {
                                            TrackSelection trackSelection = trackSelectorResult2.selections.get(i4);
                                            boolean isRendererEnabled = trackSelectorResult2.isRendererEnabled(i4);
                                            boolean z3 = this.rendererCapabilities[i4].getTrackType() == 6;
                                            RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i4];
                                            RendererConfiguration rendererConfiguration2 = trackSelectorResult2.rendererConfigurations[i4];
                                            if (!isRendererEnabled || !rendererConfiguration2.equals(rendererConfiguration) || z3) {
                                                renderer3.setCurrentStreamFinal();
                                            } else {
                                                renderer3.replaceStream(getFormats(trackSelection), advanceReadingPeriod.sampleStreams[i4], advanceReadingPeriod.getRendererOffset());
                                            }
                                        }
                                    }
                                    i4++;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void updatePlaybackPositions() throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            long readDiscontinuity = playingPeriod.mediaPeriod.readDiscontinuity();
            if (readDiscontinuity != C0463C.TIME_UNSET) {
                resetRendererPosition(readDiscontinuity);
                if (readDiscontinuity != this.playbackInfo.positionUs) {
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    this.playbackInfo = playbackInfo.copyWithNewPosition(playbackInfo.periodId, readDiscontinuity, playbackInfo.contentPositionUs, getTotalBufferedDurationUs());
                    this.playbackInfoUpdate.setPositionDiscontinuity(4);
                }
            } else {
                this.rendererPositionUs = this.mediaClock.syncAndGetPositionUs();
                long periodTime = playingPeriod.toPeriodTime(this.rendererPositionUs);
                maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodTime);
                this.playbackInfo.positionUs = periodTime;
            }
            MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
            this.playbackInfo.bufferedPositionUs = loadingPeriod.getBufferedPositionUs();
            this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        }
    }

    private void updatePlayingPeriodRenderers(@Nullable MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod != null && mediaPeriodHolder != playingPeriod) {
            boolean[] zArr = new boolean[this.renderers.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                Renderer[] rendererArr = this.renderers;
                if (i < rendererArr.length) {
                    Renderer renderer = rendererArr[i];
                    zArr[i] = renderer.getState() != 0;
                    i2 = i2;
                    if (playingPeriod.getTrackSelectorResult().isRendererEnabled(i)) {
                        i2++;
                    }
                    if (zArr[i] && (!playingPeriod.getTrackSelectorResult().isRendererEnabled(i) || (renderer.isCurrentStreamFinal() && renderer.getStream() == mediaPeriodHolder.sampleStreams[i]))) {
                        disableRenderer(renderer);
                    }
                    i++;
                } else {
                    this.playbackInfo = this.playbackInfo.copyWithTrackInfo(playingPeriod.getTrackGroups(), playingPeriod.getTrackSelectorResult());
                    enableRenderers(zArr, i2);
                    return;
                }
            }
        }
    }

    private void updateTrackSelectionPlaybackSpeed(float f) {
        TrackSelection[] all;
        for (MediaPeriodHolder frontPeriod = this.queue.getFrontPeriod(); frontPeriod != null && frontPeriod.prepared; frontPeriod = frontPeriod.getNext()) {
            for (TrackSelection trackSelection : frontPeriod.getTrackSelectorResult().selections.getAll()) {
                if (trackSelection != null) {
                    trackSelection.onPlaybackSpeed(f);
                }
            }
        }
    }

    public Looper getPlaybackLooper() {
        return this.internalPlaybackThread.getLooper();
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01b1  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ExoPlayerImplInternal.handleMessage(android.os.Message):boolean");
    }

    public final /* synthetic */ void lambda$sendMessageToTargetThread$0$ExoPlayerImplInternal(PlayerMessage playerMessage) {
        try {
            deliverMessage(playerMessage);
        } catch (ExoPlaybackException e) {
            Log.m37486e(TAG, "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(10, mediaPeriod).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.DefaultMediaClock.PlaybackParameterListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(17, playbackParameters).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource.SourceInfoRefreshListener
    public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline, Object obj) {
        this.handler.obtainMessage(8, new MediaSourceRefreshInfo(mediaSource, timeline, obj)).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(11);
    }

    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        this.handler.obtainMessage(0, z ? 1 : 0, z2 ? 1 : 0, mediaSource).sendToTarget();
    }

    public void release() {
        synchronized (this) {
            if (!this.released) {
                this.handler.sendEmptyMessage(7);
                boolean z = false;
                while (!this.released) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public void seekTo(Timeline timeline, int i, long j) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, i, j)).sendToTarget();
    }

    @Override // androidx.media2.exoplayer.external.PlayerMessage.Sender
    public void sendMessage(PlayerMessage playerMessage) {
        synchronized (this) {
            if (this.released) {
                Log.m37483w(TAG, "Ignoring messages sent after release.");
                playerMessage.markAsProcessed(false);
                return;
            }
            this.handler.obtainMessage(15, playerMessage).sendToTarget();
        }
    }

    public void setForegroundMode(boolean z) {
        synchronized (this) {
            boolean z2 = false;
            if (z) {
                this.handler.obtainMessage(14, 1, 0).sendToTarget();
            } else {
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                this.handler.obtainMessage(14, 0, 0, atomicBoolean).sendToTarget();
                while (!atomicBoolean.get() && !this.released) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z2 = true;
                    }
                }
                if (z2) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public void setPlayWhenReady(boolean z) {
        this.handler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setRepeatMode(int i) {
        this.handler.obtainMessage(12, i, 0).sendToTarget();
    }

    public void setSeekParameters(SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z) {
        this.handler.obtainMessage(13, z ? 1 : 0, 0).sendToTarget();
    }

    public void stop(boolean z) {
        this.handler.obtainMessage(6, z ? 1 : 0, 0).sendToTarget();
    }
}
