package androidx.media2.exoplayer.external.analytics;

import android.view.Surface;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import java.io.IOException;
@Deprecated
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/DefaultAnalyticsListener.class */
public abstract class DefaultAnalyticsListener implements AnalyticsListener {
    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        AnalyticsListener$$CC.onAudioAttributesChanged$$dflt$$(this, eventTime, audioAttributes);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioSessionId(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener$$CC.onAudioSessionId$$dflt$$(this, eventTime, i);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        AnalyticsListener$$CC.onAudioUnderrun$$dflt$$(this, eventTime, i, j, j2);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        AnalyticsListener$$CC.onBandwidthEstimate$$dflt$$(this, eventTime, i, j, j2);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener$$CC.onDecoderDisabled$$dflt$$(this, eventTime, i, decoderCounters);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener$$CC.onDecoderEnabled$$dflt$$(this, eventTime, i, decoderCounters);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i, String str, long j) {
        AnalyticsListener$$CC.onDecoderInitialized$$dflt$$(this, eventTime, i, str, j);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i, Format format) {
        AnalyticsListener$$CC.onDecoderInputFormatChanged$$dflt$$(this, eventTime, i, format);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener$$CC.onDownstreamFormatChanged$$dflt$$(this, eventTime, mediaLoadData);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onDrmKeysLoaded$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onDrmKeysRemoved$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onDrmKeysRestored$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onDrmSessionAcquired$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener$$CC.onDrmSessionManagerError$$dflt$$(this, eventTime, exc);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onDrmSessionReleased$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        AnalyticsListener$$CC.onDroppedVideoFrames$$dflt$$(this, eventTime, i, j);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadCanceled(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener$$CC.onLoadCanceled$$dflt$$(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadCompleted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener$$CC.onLoadCompleted$$dflt$$(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener$$CC.onLoadError$$dflt$$(this, eventTime, loadEventInfo, mediaLoadData, iOException, z);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadStarted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener$$CC.onLoadStarted$$dflt$$(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener$$CC.onLoadingChanged$$dflt$$(this, eventTime, z);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMediaPeriodCreated(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onMediaPeriodCreated$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMediaPeriodReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onMediaPeriodReleased$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        AnalyticsListener$$CC.onMetadata$$dflt$$(this, eventTime, metadata);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        AnalyticsListener$$CC.onPlaybackParametersChanged$$dflt$$(this, eventTime, playbackParameters);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlayerError(AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
        AnalyticsListener$$CC.onPlayerError$$dflt$$(this, eventTime, exoPlaybackException);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        AnalyticsListener$$CC.onPlayerStateChanged$$dflt$$(this, eventTime, z, i);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener$$CC.onPositionDiscontinuity$$dflt$$(this, eventTime, i);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onReadingStarted(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onReadingStarted$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Surface surface) {
        AnalyticsListener$$CC.onRenderedFirstFrame$$dflt$$(this, eventTime, surface);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener$$CC.onRepeatModeChanged$$dflt$$(this, eventTime, i);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onSeekProcessed$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener$$CC.onSeekStarted$$dflt$$(this, eventTime);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener$$CC.onShuffleModeChanged$$dflt$$(this, eventTime, z);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
        AnalyticsListener$$CC.onSurfaceSizeChanged$$dflt$$(this, eventTime, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener$$CC.onTimelineChanged$$dflt$$(this, eventTime, i);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        AnalyticsListener$$CC.onTracksChanged$$dflt$$(this, eventTime, trackGroupArray, trackSelectionArray);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener$$CC.onUpstreamDiscarded$$dflt$$(this, eventTime, mediaLoadData);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
        AnalyticsListener$$CC.onVideoSizeChanged$$dflt$$(this, eventTime, i, i2, i3, f);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
        AnalyticsListener$$CC.onVolumeChanged$$dflt$$(this, eventTime, f);
    }
}
