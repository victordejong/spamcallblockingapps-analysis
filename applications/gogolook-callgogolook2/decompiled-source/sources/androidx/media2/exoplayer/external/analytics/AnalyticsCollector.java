package androidx.media2.exoplayer.external.analytics;

import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.audio.AudioListener;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.video.VideoListener;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/AnalyticsCollector.class */
public class AnalyticsCollector implements Player.EventListener, MetadataOutput, AudioRendererEventListener, VideoRendererEventListener, MediaSourceEventListener, BandwidthMeter.EventListener, DefaultDrmSessionEventListener, VideoListener, AudioListener {
    public final Clock clock;
    public final CopyOnWriteArraySet<AnalyticsListener> listeners;
    public final MediaPeriodQueueTracker mediaPeriodQueueTracker;
    public Player player;
    public final Timeline.Window window;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory.class */
    public static class Factory {
        public AnalyticsCollector createAnalyticsCollector(@Nullable Player player, Clock clock) {
            return new AnalyticsCollector(player, clock);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodInfo.class */
    public static final class MediaPeriodInfo {
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final Timeline timeline;
        public final int windowIndex;

        public MediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline, int i) {
            this.mediaPeriodId = mediaPeriodId;
            this.timeline = timeline;
            this.windowIndex = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/AnalyticsCollector$MediaPeriodQueueTracker.class */
    public static final class MediaPeriodQueueTracker {
        public boolean isSeeking;
        @Nullable
        public MediaPeriodInfo lastReportedPlayingMediaPeriod;
        @Nullable
        public MediaPeriodInfo readingMediaPeriod;
        public final ArrayList<MediaPeriodInfo> mediaPeriodInfoQueue = new ArrayList<>();
        public final HashMap<MediaSource.MediaPeriodId, MediaPeriodInfo> mediaPeriodIdToInfo = new HashMap<>();
        public final Timeline.Period period = new Timeline.Period();
        public Timeline timeline = Timeline.EMPTY;

        private void updateLastReportedPlayingMediaPeriod() {
            if (!this.mediaPeriodInfoQueue.isEmpty()) {
                this.lastReportedPlayingMediaPeriod = this.mediaPeriodInfoQueue.get(0);
            }
        }

        private MediaPeriodInfo updateMediaPeriodInfoToNewTimeline(MediaPeriodInfo mediaPeriodInfo, Timeline timeline) {
            int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodInfo.mediaPeriodId.periodUid);
            if (indexOfPeriod == -1) {
                return mediaPeriodInfo;
            }
            return new MediaPeriodInfo(mediaPeriodInfo.mediaPeriodId, timeline, timeline.getPeriod(indexOfPeriod, this.period).windowIndex);
        }

        @Nullable
        public MediaPeriodInfo getLastReportedPlayingMediaPeriod() {
            return this.lastReportedPlayingMediaPeriod;
        }

        @Nullable
        public MediaPeriodInfo getLoadingMediaPeriod() {
            MediaPeriodInfo mediaPeriodInfo;
            if (this.mediaPeriodInfoQueue.isEmpty()) {
                mediaPeriodInfo = null;
            } else {
                ArrayList<MediaPeriodInfo> arrayList = this.mediaPeriodInfoQueue;
                mediaPeriodInfo = arrayList.get(arrayList.size() - 1);
            }
            return mediaPeriodInfo;
        }

        @Nullable
        public MediaPeriodInfo getMediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId) {
            return this.mediaPeriodIdToInfo.get(mediaPeriodId);
        }

        @Nullable
        public MediaPeriodInfo getPlayingMediaPeriod() {
            return (this.mediaPeriodInfoQueue.isEmpty() || this.timeline.isEmpty() || this.isSeeking) ? null : this.mediaPeriodInfoQueue.get(0);
        }

        @Nullable
        public MediaPeriodInfo getReadingMediaPeriod() {
            return this.readingMediaPeriod;
        }

        public boolean isSeeking() {
            return this.isSeeking;
        }

        public void onMediaPeriodCreated(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaPeriodInfo mediaPeriodInfo = new MediaPeriodInfo(mediaPeriodId, this.timeline.getIndexOfPeriod(mediaPeriodId.periodUid) != -1 ? this.timeline : Timeline.EMPTY, i);
            this.mediaPeriodInfoQueue.add(mediaPeriodInfo);
            this.mediaPeriodIdToInfo.put(mediaPeriodId, mediaPeriodInfo);
            if (this.mediaPeriodInfoQueue.size() == 1 && !this.timeline.isEmpty()) {
                updateLastReportedPlayingMediaPeriod();
            }
        }

        public boolean onMediaPeriodReleased(MediaSource.MediaPeriodId mediaPeriodId) {
            MediaPeriodInfo remove = this.mediaPeriodIdToInfo.remove(mediaPeriodId);
            if (remove == null) {
                return false;
            }
            this.mediaPeriodInfoQueue.remove(remove);
            MediaPeriodInfo mediaPeriodInfo = this.readingMediaPeriod;
            if (mediaPeriodInfo == null || !mediaPeriodId.equals(mediaPeriodInfo.mediaPeriodId)) {
                return true;
            }
            this.readingMediaPeriod = this.mediaPeriodInfoQueue.isEmpty() ? null : this.mediaPeriodInfoQueue.get(0);
            return true;
        }

        public void onPositionDiscontinuity(int i) {
            updateLastReportedPlayingMediaPeriod();
        }

        public void onReadingStarted(MediaSource.MediaPeriodId mediaPeriodId) {
            this.readingMediaPeriod = this.mediaPeriodIdToInfo.get(mediaPeriodId);
        }

        public void onSeekProcessed() {
            this.isSeeking = false;
            updateLastReportedPlayingMediaPeriod();
        }

        public void onSeekStarted() {
            this.isSeeking = true;
        }

        public void onTimelineChanged(Timeline timeline) {
            for (int i = 0; i < this.mediaPeriodInfoQueue.size(); i++) {
                MediaPeriodInfo updateMediaPeriodInfoToNewTimeline = updateMediaPeriodInfoToNewTimeline(this.mediaPeriodInfoQueue.get(i), timeline);
                this.mediaPeriodInfoQueue.set(i, updateMediaPeriodInfoToNewTimeline);
                this.mediaPeriodIdToInfo.put(updateMediaPeriodInfoToNewTimeline.mediaPeriodId, updateMediaPeriodInfoToNewTimeline);
            }
            MediaPeriodInfo mediaPeriodInfo = this.readingMediaPeriod;
            if (mediaPeriodInfo != null) {
                this.readingMediaPeriod = updateMediaPeriodInfoToNewTimeline(mediaPeriodInfo, timeline);
            }
            this.timeline = timeline;
            updateLastReportedPlayingMediaPeriod();
        }

        @Nullable
        public MediaPeriodInfo tryResolveWindowIndex(int i) {
            MediaPeriodInfo mediaPeriodInfo = null;
            for (int i2 = 0; i2 < this.mediaPeriodInfoQueue.size(); i2++) {
                MediaPeriodInfo mediaPeriodInfo2 = this.mediaPeriodInfoQueue.get(i2);
                int indexOfPeriod = this.timeline.getIndexOfPeriod(mediaPeriodInfo2.mediaPeriodId.periodUid);
                mediaPeriodInfo = mediaPeriodInfo;
                if (indexOfPeriod != -1) {
                    mediaPeriodInfo = mediaPeriodInfo;
                    if (this.timeline.getPeriod(indexOfPeriod, this.period).windowIndex != i) {
                        continue;
                    } else if (mediaPeriodInfo != null) {
                        return null;
                    } else {
                        mediaPeriodInfo = mediaPeriodInfo2;
                    }
                }
            }
            return mediaPeriodInfo;
        }
    }

    public AnalyticsCollector(@Nullable Player player, Clock clock) {
        if (player != null) {
            this.player = player;
        }
        this.clock = (Clock) Assertions.checkNotNull(clock);
        this.listeners = new CopyOnWriteArraySet<>();
        this.mediaPeriodQueueTracker = new MediaPeriodQueueTracker();
        this.window = new Timeline.Window();
    }

    private AnalyticsListener.EventTime generateEventTime(@Nullable MediaPeriodInfo mediaPeriodInfo) {
        Assertions.checkNotNull(this.player);
        MediaPeriodInfo mediaPeriodInfo2 = mediaPeriodInfo;
        if (mediaPeriodInfo == null) {
            int currentWindowIndex = this.player.getCurrentWindowIndex();
            mediaPeriodInfo2 = this.mediaPeriodQueueTracker.tryResolveWindowIndex(currentWindowIndex);
            if (mediaPeriodInfo2 == null) {
                Timeline currentTimeline = this.player.getCurrentTimeline();
                if (!(currentWindowIndex < currentTimeline.getWindowCount())) {
                    currentTimeline = Timeline.EMPTY;
                }
                return generateEventTime(currentTimeline, currentWindowIndex, null);
            }
        }
        return generateEventTime(mediaPeriodInfo2.timeline, mediaPeriodInfo2.windowIndex, mediaPeriodInfo2.mediaPeriodId);
    }

    private AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLastReportedPlayingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLoadingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateMediaPeriodEventTime(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        Assertions.checkNotNull(this.player);
        if (mediaPeriodId != null) {
            MediaPeriodInfo mediaPeriodInfo = this.mediaPeriodQueueTracker.getMediaPeriodInfo(mediaPeriodId);
            return mediaPeriodInfo != null ? generateEventTime(mediaPeriodInfo) : generateEventTime(Timeline.EMPTY, i, mediaPeriodId);
        }
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!(i < currentTimeline.getWindowCount())) {
            currentTimeline = Timeline.EMPTY;
        }
        return generateEventTime(currentTimeline, i, null);
    }

    private AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getPlayingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateReadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getReadingMediaPeriod());
    }

    public void addListener(AnalyticsListener analyticsListener) {
        this.listeners.add(analyticsListener);
    }

    public AnalyticsListener.EventTime generateEventTime(Timeline timeline, int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        if (timeline.isEmpty()) {
            mediaPeriodId = null;
        }
        long elapsedRealtime = this.clock.elapsedRealtime();
        boolean z = true;
        boolean z2 = timeline == this.player.getCurrentTimeline() && i == this.player.getCurrentWindowIndex();
        long j = 0;
        if (mediaPeriodId != null && mediaPeriodId.isAd()) {
            if (!z2 || this.player.getCurrentAdGroupIndex() != mediaPeriodId.adGroupIndex || this.player.getCurrentAdIndexInAdGroup() != mediaPeriodId.adIndexInAdGroup) {
                z = false;
            }
            if (z) {
                j = this.player.getCurrentPosition();
            }
        } else if (z2) {
            j = this.player.getContentPosition();
        } else if (!timeline.isEmpty()) {
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return new AnalyticsListener.EventTime(elapsedRealtime, timeline, i, mediaPeriodId, j, this.player.getCurrentPosition(), this.player.getTotalBufferedDuration());
    }

    public Set<AnalyticsListener> getListeners() {
        return Collections.unmodifiableSet(this.listeners);
    }

    public final void notifySeekStarted() {
        if (!this.mediaPeriodQueueTracker.isSeeking()) {
            AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
            this.mediaPeriodQueueTracker.onSeekStarted();
            Iterator<AnalyticsListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onSeekStarted(generatePlayingMediaPeriodEventTime);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioListener
    public void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioAttributesChanged(generateReadingMediaPeriodEventTime, audioAttributes);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioDecoderInitialized(String str, long j, long j2) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(generateReadingMediaPeriodEventTime, 1, str, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioDisabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(generateLastReportedPlayingMediaPeriodEventTime, 1, decoderCounters);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioEnabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(generatePlayingMediaPeriodEventTime, 1, decoderCounters);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioInputFormatChanged(Format format) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(generateReadingMediaPeriodEventTime, 1, format);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioSessionId(int i) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionId(generateReadingMediaPeriodEventTime, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
    public final void onAudioSinkUnderrun(int i, long j, long j2) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioUnderrun(generateReadingMediaPeriodEventTime, i, j, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.BandwidthMeter.EventListener
    public final void onBandwidthSample(int i, long j, long j2) {
        AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime = generateLoadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onBandwidthEstimate(generateLoadingMediaPeriodEventTime, i, j, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onDownstreamFormatChanged(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDownstreamFormatChanged(generateMediaPeriodEventTime, mediaLoadData);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysLoaded() {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysLoaded(generateReadingMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysRemoved() {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRemoved(generateReadingMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysRestored() {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRestored(generateReadingMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmSessionAcquired() {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionAcquired(generateReadingMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmSessionManagerError(Exception exc) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionManagerError(generateReadingMediaPeriodEventTime, exc);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
    public final void onDrmSessionReleased() {
        AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionReleased(generateLastReportedPlayingMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onDroppedFrames(int i, long j) {
        AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDroppedVideoFrames(generateLastReportedPlayingMediaPeriodEventTime, i, j);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onLoadCanceled(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadCanceled(generateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onLoadCompleted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadCompleted(generateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadError(generateMediaPeriodEventTime, loadEventInfo, mediaLoadData, iOException, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onLoadStarted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadStarted(generateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onLoadingChanged(boolean z) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadingChanged(generatePlayingMediaPeriodEventTime, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onMediaPeriodCreated(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onMediaPeriodCreated(i, mediaPeriodId);
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodCreated(generateMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onMediaPeriodReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        if (this.mediaPeriodQueueTracker.onMediaPeriodReleased(mediaPeriodId)) {
            Iterator<AnalyticsListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onMediaPeriodReleased(generateMediaPeriodEventTime);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.metadata.MetadataOutput
    public final void onMetadata(Metadata metadata) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onMetadata(generatePlayingMediaPeriodEventTime, metadata);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaybackParametersChanged(generatePlayingMediaPeriodEventTime, playbackParameters);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onPlayerError(ExoPlaybackException exoPlaybackException) {
        AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime = exoPlaybackException.type == 0 ? generateLoadingMediaPeriodEventTime() : generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayerError(generateLoadingMediaPeriodEventTime, exoPlaybackException);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onPlayerStateChanged(boolean z, int i) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayerStateChanged(generatePlayingMediaPeriodEventTime, z, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onPositionDiscontinuity(int i) {
        this.mediaPeriodQueueTracker.onPositionDiscontinuity(i);
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(generatePlayingMediaPeriodEventTime, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onReadingStarted(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onReadingStarted(mediaPeriodId);
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onReadingStarted(generateMediaPeriodEventTime);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoListener
    public final void onRenderedFirstFrame() {
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onRenderedFirstFrame(@Nullable Surface surface) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRenderedFirstFrame(generateReadingMediaPeriodEventTime, surface);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onRepeatModeChanged(int i) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRepeatModeChanged(generatePlayingMediaPeriodEventTime, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onSeekProcessed() {
        if (this.mediaPeriodQueueTracker.isSeeking()) {
            this.mediaPeriodQueueTracker.onSeekProcessed();
            AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
            Iterator<AnalyticsListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed(generatePlayingMediaPeriodEventTime);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onShuffleModeEnabledChanged(boolean z) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onShuffleModeChanged(generatePlayingMediaPeriodEventTime, z);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoListener
    public void onSurfaceSizeChanged(int i, int i2) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onSurfaceSizeChanged(generateReadingMediaPeriodEventTime, i, i2);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i) {
        this.mediaPeriodQueueTracker.onTimelineChanged(timeline);
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTimelineChanged(generatePlayingMediaPeriodEventTime, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.EventListener
    public final void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTracksChanged(generatePlayingMediaPeriodEventTime, trackGroupArray, trackSelectionArray);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSourceEventListener
    public final void onUpstreamDiscarded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime generateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onUpstreamDiscarded(generateMediaPeriodEventTime, mediaLoadData);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onVideoDecoderInitialized(String str, long j, long j2) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(generateReadingMediaPeriodEventTime, 2, str, j2);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onVideoDisabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(generateLastReportedPlayingMediaPeriodEventTime, 2, decoderCounters);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onVideoEnabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(generatePlayingMediaPeriodEventTime, 2, decoderCounters);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onVideoInputFormatChanged(Format format) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(generateReadingMediaPeriodEventTime, 2, format);
        }
    }

    @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
    public final void onVideoSizeChanged(int i, int i2, int i3, float f) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(generateReadingMediaPeriodEventTime, i, i2, i3, f);
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioListener
    public void onVolumeChanged(float f) {
        AnalyticsListener.EventTime generateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onVolumeChanged(generateReadingMediaPeriodEventTime, f);
        }
    }

    public void removeListener(AnalyticsListener analyticsListener) {
        this.listeners.remove(analyticsListener);
    }

    public final void resetForNewMediaSource() {
        for (MediaPeriodInfo mediaPeriodInfo : new ArrayList(this.mediaPeriodQueueTracker.mediaPeriodInfoQueue)) {
            onMediaPeriodReleased(mediaPeriodInfo.windowIndex, mediaPeriodInfo.mediaPeriodId);
        }
    }

    public void setPlayer(Player player) {
        Assertions.checkState(this.player == null || this.mediaPeriodQueueTracker.mediaPeriodInfoQueue.isEmpty());
        this.player = (Player) Assertions.checkNotNull(player);
    }
}
