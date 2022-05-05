package androidx.media2.exoplayer.external;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.BasePlayer;
import androidx.media2.exoplayer.external.ExoPlayer;
import androidx.media2.exoplayer.external.ExoPlayerImpl;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.PlayerMessage;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelectorResult;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImpl.class */
public final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    public static final String TAG = "ExoPlayerImpl";
    public final TrackSelectorResult emptyTrackSelectorResult;
    public final Handler eventHandler;
    public boolean foregroundMode;
    public boolean hasPendingPrepare;
    public boolean hasPendingSeek;
    public boolean internalPlayWhenReady;
    public final ExoPlayerImplInternal internalPlayer;
    public final Handler internalPlayerHandler;
    public final CopyOnWriteArrayList<BasePlayer.ListenerHolder> listeners;
    public int maskingPeriodIndex;
    public int maskingWindowIndex;
    public long maskingWindowPositionMs;
    public MediaSource mediaSource;
    public final ArrayDeque<Runnable> pendingListenerNotifications;
    public int pendingOperationAcks;
    public final Timeline.Period period;
    public boolean playWhenReady;
    @Nullable
    public ExoPlaybackException playbackError;
    public PlaybackInfo playbackInfo;
    public PlaybackParameters playbackParameters;
    public final Renderer[] renderers;
    public int repeatMode;
    public SeekParameters seekParameters;
    public boolean shuffleModeEnabled;
    public final TrackSelector trackSelector;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate.class */
    public static final class PlaybackInfoUpdate implements Runnable {
        public final boolean isLoadingChanged;
        public final CopyOnWriteArrayList<BasePlayer.ListenerHolder> listenerSnapshot;
        public final boolean playWhenReady;
        public final PlaybackInfo playbackInfo;
        public final boolean playbackStateChanged;
        public final boolean positionDiscontinuity;
        public final int positionDiscontinuityReason;
        public final boolean seekProcessed;
        public final int timelineChangeReason;
        public final boolean timelineOrManifestChanged;
        public final TrackSelector trackSelector;
        public final boolean trackSelectorResultChanged;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, CopyOnWriteArrayList<BasePlayer.ListenerHolder> copyOnWriteArrayList, TrackSelector trackSelector, boolean z, int i, int i2, boolean z2, boolean z3) {
            this.playbackInfo = playbackInfo;
            this.listenerSnapshot = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.trackSelector = trackSelector;
            this.positionDiscontinuity = z;
            this.positionDiscontinuityReason = i;
            this.timelineChangeReason = i2;
            this.seekProcessed = z2;
            this.playWhenReady = z3;
            boolean z4 = true;
            this.playbackStateChanged = playbackInfo2.playbackState != playbackInfo.playbackState;
            this.timelineOrManifestChanged = (playbackInfo2.timeline == playbackInfo.timeline && playbackInfo2.manifest == playbackInfo.manifest) ? false : true;
            this.isLoadingChanged = playbackInfo2.isLoading != playbackInfo.isLoading;
            if (playbackInfo2.trackSelectorResult == playbackInfo.trackSelectorResult) {
                z4 = false;
            }
            this.trackSelectorResultChanged = z4;
        }

        public final /* synthetic */ void lambda$run$0$ExoPlayerImpl$PlaybackInfoUpdate(Player.EventListener eventListener) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            eventListener.onTimelineChanged(playbackInfo.timeline, playbackInfo.manifest, this.timelineChangeReason);
        }

        public final /* synthetic */ void lambda$run$1$ExoPlayerImpl$PlaybackInfoUpdate(Player.EventListener eventListener) {
            eventListener.onPositionDiscontinuity(this.positionDiscontinuityReason);
        }

        public final /* synthetic */ void lambda$run$2$ExoPlayerImpl$PlaybackInfoUpdate(Player.EventListener eventListener) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            eventListener.onTracksChanged(playbackInfo.trackGroups, playbackInfo.trackSelectorResult.selections);
        }

        public final /* synthetic */ void lambda$run$3$ExoPlayerImpl$PlaybackInfoUpdate(Player.EventListener eventListener) {
            eventListener.onLoadingChanged(this.playbackInfo.isLoading);
        }

        public final /* synthetic */ void lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(Player.EventListener eventListener) {
            eventListener.onPlayerStateChanged(this.playWhenReady, this.playbackInfo.playbackState);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.timelineOrManifestChanged || this.timelineChangeReason == 0) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new BasePlayer.ListenerInvocation(this) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$0
                    public final ExoPlayerImpl.PlaybackInfoUpdate arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        this.arg$1.lambda$run$0$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.positionDiscontinuity) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new BasePlayer.ListenerInvocation(this) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$1
                    public final ExoPlayerImpl.PlaybackInfoUpdate arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        this.arg$1.lambda$run$1$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.trackSelectorResultChanged) {
                this.trackSelector.onSelectionActivated(this.playbackInfo.trackSelectorResult.info);
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new BasePlayer.ListenerInvocation(this) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$2
                    public final ExoPlayerImpl.PlaybackInfoUpdate arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        this.arg$1.lambda$run$2$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.isLoadingChanged) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new BasePlayer.ListenerInvocation(this) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$3
                    public final ExoPlayerImpl.PlaybackInfoUpdate arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        this.arg$1.lambda$run$3$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.playbackStateChanged) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new BasePlayer.ListenerInvocation(this) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4
                    public final ExoPlayerImpl.PlaybackInfoUpdate arg$1;

                    {
                        this.arg$1 = this;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        this.arg$1.lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.seekProcessed) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$5.$instance);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector, LoadControl loadControl, BandwidthMeter bandwidthMeter, Clock clock, Looper looper) {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = Util.DEVICE_DEBUG_INFO;
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 30 + String.valueOf(str).length());
        sb.append("Init ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(str);
        sb.append("]");
        Log.m37485i(TAG, sb.toString());
        Assertions.checkState(rendererArr.length > 0);
        this.renderers = (Renderer[]) Assertions.checkNotNull(rendererArr);
        this.trackSelector = (TrackSelector) Assertions.checkNotNull(trackSelector);
        this.playWhenReady = false;
        this.repeatMode = 0;
        this.shuffleModeEnabled = false;
        this.listeners = new CopyOnWriteArrayList<>();
        this.emptyTrackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr.length], new TrackSelection[rendererArr.length], null);
        this.period = new Timeline.Period();
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.seekParameters = SeekParameters.DEFAULT;
        this.eventHandler = new Handler(looper) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.playbackInfo = PlaybackInfo.createDummy(0L, this.emptyTrackSelectorResult);
        this.pendingListenerNotifications = new ArrayDeque<>();
        this.internalPlayer = new ExoPlayerImplInternal(rendererArr, trackSelector, this.emptyTrackSelectorResult, loadControl, bandwidthMeter, this.playWhenReady, this.repeatMode, this.shuffleModeEnabled, this.eventHandler, clock);
        this.internalPlayerHandler = new Handler(this.internalPlayer.getPlaybackLooper());
    }

    private PlaybackInfo getResetPlaybackInfo(boolean z, boolean z2, int i) {
        long j = 0;
        boolean z3 = false;
        if (z) {
            this.maskingWindowIndex = 0;
            this.maskingPeriodIndex = 0;
            this.maskingWindowPositionMs = 0L;
        } else {
            this.maskingWindowIndex = getCurrentWindowIndex();
            this.maskingPeriodIndex = getCurrentPeriodIndex();
            this.maskingWindowPositionMs = getCurrentPosition();
        }
        if (z || z2) {
            z3 = true;
        }
        MediaSource.MediaPeriodId dummyFirstMediaPeriodId = z3 ? this.playbackInfo.getDummyFirstMediaPeriodId(this.shuffleModeEnabled, this.window) : this.playbackInfo.periodId;
        if (!z3) {
            j = this.playbackInfo.positionUs;
        }
        return new PlaybackInfo(z2 ? Timeline.EMPTY : this.playbackInfo.timeline, z2 ? null : this.playbackInfo.manifest, dummyFirstMediaPeriodId, j, z3 ? C0463C.TIME_UNSET : this.playbackInfo.contentPositionUs, i, false, z2 ? TrackGroupArray.EMPTY : this.playbackInfo.trackGroups, z2 ? this.emptyTrackSelectorResult : this.playbackInfo.trackSelectorResult, dummyFirstMediaPeriodId, j, 0L, j);
    }

    private void handlePlaybackInfo(PlaybackInfo playbackInfo, int i, boolean z, int i2) {
        this.pendingOperationAcks -= i;
        if (this.pendingOperationAcks == 0) {
            PlaybackInfo playbackInfo2 = playbackInfo;
            if (playbackInfo.startPositionUs == C0463C.TIME_UNSET) {
                playbackInfo2 = playbackInfo.copyWithNewPosition(playbackInfo.periodId, 0L, playbackInfo.contentPositionUs, playbackInfo.totalBufferedDurationUs);
            }
            if (!this.playbackInfo.timeline.isEmpty() && playbackInfo2.timeline.isEmpty()) {
                this.maskingPeriodIndex = 0;
                this.maskingWindowIndex = 0;
                this.maskingWindowPositionMs = 0L;
            }
            int i3 = this.hasPendingPrepare ? 0 : 2;
            boolean z2 = this.hasPendingSeek;
            this.hasPendingPrepare = false;
            this.hasPendingSeek = false;
            updatePlaybackInfo(playbackInfo2, z, i2, i3, z2);
        }
    }

    public static void invokeAll(CopyOnWriteArrayList<BasePlayer.ListenerHolder> copyOnWriteArrayList, BasePlayer.ListenerInvocation listenerInvocation) {
        Iterator<BasePlayer.ListenerHolder> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            it.next().invoke(listenerInvocation);
        }
    }

    private void notifyListeners(final BasePlayer.ListenerInvocation listenerInvocation) {
        final CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList(this.listeners);
        notifyListeners(new Runnable(copyOnWriteArrayList, listenerInvocation) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$6
            public final CopyOnWriteArrayList arg$1;
            public final BasePlayer.ListenerInvocation arg$2;

            {
                this.arg$1 = copyOnWriteArrayList;
                this.arg$2 = listenerInvocation;
            }

            @Override // java.lang.Runnable
            public void run() {
                ExoPlayerImpl.invokeAll(this.arg$1, this.arg$2);
            }
        });
    }

    private void notifyListeners(Runnable runnable) {
        boolean isEmpty = this.pendingListenerNotifications.isEmpty();
        this.pendingListenerNotifications.addLast(runnable);
        if (!(!isEmpty)) {
            while (!this.pendingListenerNotifications.isEmpty()) {
                this.pendingListenerNotifications.peekFirst().run();
                this.pendingListenerNotifications.removeFirst();
            }
        }
    }

    private long periodPositionUsToWindowPositionMs(MediaSource.MediaPeriodId mediaPeriodId, long j) {
        long usToMs = C0463C.usToMs(j);
        this.playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return usToMs + this.period.getPositionInWindowMs();
    }

    private boolean shouldMaskPosition() {
        return this.playbackInfo.timeline.isEmpty() || this.pendingOperationAcks > 0;
    }

    private void updatePlaybackInfo(PlaybackInfo playbackInfo, boolean z, int i, int i2, boolean z2) {
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        notifyListeners(new PlaybackInfoUpdate(playbackInfo, playbackInfo2, this.listeners, this.trackSelector, z, i, i2, z2, this.playWhenReady));
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void addListener(Player.EventListener eventListener) {
        this.listeners.addIfAbsent(new BasePlayer.ListenerHolder(eventListener));
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    @Deprecated
    public void blockingSendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        ArrayList<PlayerMessage> arrayList = new ArrayList();
        for (ExoPlayer.ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            arrayList.add(createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send());
        }
        boolean z = false;
        for (PlayerMessage playerMessage : arrayList) {
            boolean z2 = true;
            while (z2) {
                try {
                    playerMessage.blockUntilDelivered();
                    z2 = false;
                } catch (InterruptedException e) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        return new PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, getCurrentWindowIndex(), this.internalPlayerHandler);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public Looper getApplicationLooper() {
        return this.eventHandler.getLooper();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.AudioComponent getAudioComponent() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getBufferedPosition() {
        if (!isPlayingAd()) {
            return getContentBufferedPosition();
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.loadingMediaPeriodId.equals(playbackInfo.periodId) ? C0463C.usToMs(this.playbackInfo.bufferedPositionUs) : getDuration();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getContentBufferedPosition() {
        if (shouldMaskPosition()) {
            return this.maskingWindowPositionMs;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.loadingMediaPeriodId.windowSequenceNumber != playbackInfo.periodId.windowSequenceNumber) {
            return playbackInfo.timeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
        }
        long j = playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            Timeline.Period periodByUid = playbackInfo2.timeline.getPeriodByUid(playbackInfo2.loadingMediaPeriodId.periodUid, this.period);
            j = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            if (j == Long.MIN_VALUE) {
                j = periodByUid.durationUs;
            }
        }
        return periodPositionUsToWindowPositionMs(this.playbackInfo.loadingMediaPeriodId, j);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getContentPosition() {
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period);
        return this.period.getPositionInWindowMs() + C0463C.usToMs(this.playbackInfo.contentPositionUs);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentAdGroupIndex() {
        return isPlayingAd() ? this.playbackInfo.periodId.adGroupIndex : -1;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentAdIndexInAdGroup() {
        return isPlayingAd() ? this.playbackInfo.periodId.adIndexInAdGroup : -1;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public Object getCurrentManifest() {
        return this.playbackInfo.manifest;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentPeriodIndex() {
        if (shouldMaskPosition()) {
            return this.maskingPeriodIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getIndexOfPeriod(playbackInfo.periodId.periodUid);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getCurrentPosition() {
        if (shouldMaskPosition()) {
            return this.maskingWindowPositionMs;
        }
        if (this.playbackInfo.periodId.isAd()) {
            return C0463C.usToMs(this.playbackInfo.positionUs);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return periodPositionUsToWindowPositionMs(playbackInfo.periodId, playbackInfo.positionUs);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public Timeline getCurrentTimeline() {
        return this.playbackInfo.timeline;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public TrackGroupArray getCurrentTrackGroups() {
        return this.playbackInfo.trackGroups;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        return this.playbackInfo.trackSelectorResult.selections;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentWindowIndex() {
        if (shouldMaskPosition()) {
            return this.maskingWindowIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getDuration() {
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return C0463C.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.MetadataComponent getMetadataComponent() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public ExoPlaybackException getPlaybackError() {
        return this.playbackError;
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getPlaybackState() {
        return this.playbackInfo.playbackState;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRendererCount() {
        return this.renderers.length;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRendererType(int i) {
        return this.renderers[i].getTrackType();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRepeatMode() {
        return this.repeatMode;
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public SeekParameters getSeekParameters() {
        return this.seekParameters;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean getShuffleModeEnabled() {
        return this.shuffleModeEnabled;
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.TextComponent getTextComponent() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getTotalBufferedDuration() {
        return Math.max(0L, C0463C.usToMs(this.playbackInfo.totalBufferedDurationUs));
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.VideoComponent getVideoComponent() {
        return null;
    }

    public void handleEvent(Message message) {
        int i = message.what;
        boolean z = true;
        if (i == 0) {
            PlaybackInfo playbackInfo = (PlaybackInfo) message.obj;
            int i2 = message.arg1;
            if (message.arg2 == -1) {
                z = false;
            }
            handlePlaybackInfo(playbackInfo, i2, z, message.arg2);
        } else if (i == 1) {
            final PlaybackParameters playbackParameters = (PlaybackParameters) message.obj;
            if (!this.playbackParameters.equals(playbackParameters)) {
                this.playbackParameters = playbackParameters;
                notifyListeners(new BasePlayer.ListenerInvocation(playbackParameters) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$4
                    public final PlaybackParameters arg$1;

                    {
                        this.arg$1 = playbackParameters;
                    }

                    @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                    public void invokeListener(Player.EventListener eventListener) {
                        eventListener.onPlaybackParametersChanged(this.arg$1);
                    }
                });
            }
        } else if (i == 2) {
            final ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
            this.playbackError = exoPlaybackException;
            notifyListeners(new BasePlayer.ListenerInvocation(exoPlaybackException) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$5
                public final ExoPlaybackException arg$1;

                {
                    this.arg$1 = exoPlaybackException;
                }

                @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                public void invokeListener(Player.EventListener eventListener) {
                    eventListener.onPlayerError(this.arg$1);
                }
            });
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean isLoading() {
        return this.playbackInfo.isLoading;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean isPlayingAd() {
        return !shouldMaskPosition() && this.playbackInfo.periodId.isAd();
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void prepare(MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        this.playbackError = null;
        this.mediaSource = mediaSource;
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z, z2, 2);
        this.hasPendingPrepare = true;
        this.pendingOperationAcks++;
        this.internalPlayer.prepare(mediaSource, z, z2);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void release() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = Util.DEVICE_DEBUG_INFO;
        String registeredModules = ExoPlayerLibraryInfo.registeredModules();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 36 + String.valueOf(str).length() + String.valueOf(registeredModules).length());
        sb.append("Release ");
        sb.append(hexString);
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(str);
        sb.append("] [");
        sb.append(registeredModules);
        sb.append("]");
        Log.m37485i(TAG, sb.toString());
        this.mediaSource = null;
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
        this.playbackInfo = getResetPlaybackInfo(false, false, 1);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void removeListener(Player.EventListener eventListener) {
        Iterator<BasePlayer.ListenerHolder> it = this.listeners.iterator();
        while (it.hasNext()) {
            BasePlayer.ListenerHolder next = it.next();
            if (next.listener.equals(eventListener)) {
                next.release();
                this.listeners.remove(next);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void retry() {
        if (this.mediaSource == null) {
            return;
        }
        if (this.playbackError != null || this.playbackInfo.playbackState == 1) {
            prepare(this.mediaSource, false, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // androidx.media2.exoplayer.external.Player
    public void seekTo(int i, long j) {
        Timeline timeline = this.playbackInfo.timeline;
        if (i < 0 || (!timeline.isEmpty() && i >= timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(timeline, i, j);
        }
        this.hasPendingSeek = true;
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            Log.m37483w(TAG, "seekTo ignored because an ad is playing");
            this.eventHandler.obtainMessage(0, 1, -1, this.playbackInfo).sendToTarget();
            return;
        }
        this.maskingWindowIndex = i;
        if (timeline.isEmpty()) {
            this.maskingWindowPositionMs = j == C0463C.TIME_UNSET ? 0 : j;
            this.maskingPeriodIndex = 0;
        } else {
            long defaultPositionUs = j == C0463C.TIME_UNSET ? timeline.getWindow(i, this.window).getDefaultPositionUs() : C0463C.msToUs(j);
            Pair<Object, Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, i, defaultPositionUs);
            this.maskingWindowPositionMs = C0463C.usToMs(defaultPositionUs);
            this.maskingPeriodIndex = timeline.getIndexOfPeriod(periodPosition.first);
        }
        this.internalPlayer.seekTo(timeline, i, C0463C.msToUs(j));
        notifyListeners(ExoPlayerImpl$$Lambda$3.$instance);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    @Deprecated
    public void sendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        for (ExoPlayer.ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send();
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void setForegroundMode(boolean z) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            this.internalPlayer.setForegroundMode(z);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setPlayWhenReady(boolean z) {
        setPlayWhenReady(z, false);
    }

    public void setPlayWhenReady(final boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.internalPlayWhenReady != z3) {
            this.internalPlayWhenReady = z3;
            this.internalPlayer.setPlayWhenReady(z3);
        }
        if (this.playWhenReady != z) {
            this.playWhenReady = z;
            final int i = this.playbackInfo.playbackState;
            notifyListeners(new BasePlayer.ListenerInvocation(z, i) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$0
                public final boolean arg$1;
                public final int arg$2;

                {
                    this.arg$1 = z;
                    this.arg$2 = i;
                }

                @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                public void invokeListener(Player.EventListener eventListener) {
                    eventListener.onPlayerStateChanged(this.arg$1, this.arg$2);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters) {
        PlaybackParameters playbackParameters2 = playbackParameters;
        if (playbackParameters == null) {
            playbackParameters2 = PlaybackParameters.DEFAULT;
        }
        this.internalPlayer.setPlaybackParameters(playbackParameters2);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setRepeatMode(final int i) {
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            notifyListeners(new BasePlayer.ListenerInvocation(i) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$1
                public final int arg$1;

                {
                    this.arg$1 = i;
                }

                @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                public void invokeListener(Player.EventListener eventListener) {
                    eventListener.onRepeatModeChanged(this.arg$1);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        SeekParameters seekParameters2 = seekParameters;
        if (seekParameters == null) {
            seekParameters2 = SeekParameters.DEFAULT;
        }
        if (!this.seekParameters.equals(seekParameters2)) {
            this.seekParameters = seekParameters2;
            this.internalPlayer.setSeekParameters(seekParameters2);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setShuffleModeEnabled(final boolean z) {
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            notifyListeners(new BasePlayer.ListenerInvocation(z) { // from class: androidx.media2.exoplayer.external.ExoPlayerImpl$$Lambda$2
                public final boolean arg$1;

                {
                    this.arg$1 = z;
                }

                @Override // androidx.media2.exoplayer.external.BasePlayer.ListenerInvocation
                public void invokeListener(Player.EventListener eventListener) {
                    eventListener.onShuffleModeEnabledChanged(this.arg$1);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void stop(boolean z) {
        if (z) {
            this.playbackError = null;
            this.mediaSource = null;
        }
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z, z, 1);
        this.pendingOperationAcks++;
        this.internalPlayer.stop(z);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false);
    }
}
