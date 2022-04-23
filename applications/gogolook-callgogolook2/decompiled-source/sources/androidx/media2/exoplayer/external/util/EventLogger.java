package androidx.media2.exoplayer.external.util;

import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener$$CC;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.trackselection.MappingTrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EventLogger.class */
public class EventLogger implements AnalyticsListener {
    public static final String DEFAULT_TAG = "EventLogger";
    public static final int MAX_TIMELINE_ITEM_LINES = 3;
    public static final NumberFormat TIME_FORMAT = NumberFormat.getInstance(Locale.US);
    public final Timeline.Period period;
    public final long startTimeMs;
    public final String tag;
    @Nullable
    public final MappingTrackSelector trackSelector;
    public final Timeline.Window window;

    static {
        TIME_FORMAT.setMinimumFractionDigits(2);
        TIME_FORMAT.setMaximumFractionDigits(2);
        TIME_FORMAT.setGroupingUsed(false);
    }

    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector) {
        this(mappingTrackSelector, DEFAULT_TAG);
    }

    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector, String str) {
        this.trackSelector = mappingTrackSelector;
        this.tag = str;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.startTimeMs = SystemClock.elapsedRealtime();
    }

    public static String getAdaptiveSupportString(int i, int i2) {
        return i < 2 ? "N/A" : i2 != 0 ? i2 != 8 ? i2 != 16 ? "?" : "YES" : "YES_NOT_SEAMLESS" : "NO";
    }

    public static String getDiscontinuityReasonString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "INTERNAL" : "AD_INSERTION" : "SEEK_ADJUSTMENT" : "SEEK" : "PERIOD_TRANSITION";
    }

    private String getEventString(AnalyticsListener.EventTime eventTime, String str) {
        String eventTimeString = getEventTimeString(eventTime);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(eventTimeString).length());
        sb.append(str);
        sb.append(" [");
        sb.append(eventTimeString);
        sb.append("]");
        return sb.toString();
    }

    private String getEventString(AnalyticsListener.EventTime eventTime, String str, String str2) {
        String eventTimeString = getEventTimeString(eventTime);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(eventTimeString).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" [");
        sb.append(eventTimeString);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }

    private String getEventTimeString(AnalyticsListener.EventTime eventTime) {
        int i = eventTime.windowIndex;
        StringBuilder sb = new StringBuilder(18);
        sb.append("window=");
        sb.append(i);
        String sb2 = sb.toString();
        String str = sb2;
        if (eventTime.mediaPeriodId != null) {
            String valueOf = String.valueOf(sb2);
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(eventTime.mediaPeriodId.periodUid);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb3.append(valueOf);
            sb3.append(", period=");
            sb3.append(indexOfPeriod);
            String sb4 = sb3.toString();
            str = sb4;
            if (eventTime.mediaPeriodId.isAd()) {
                String valueOf2 = String.valueOf(sb4);
                int i2 = eventTime.mediaPeriodId.adGroupIndex;
                StringBuilder sb5 = new StringBuilder(String.valueOf(valueOf2).length() + 21);
                sb5.append(valueOf2);
                sb5.append(", adGroup=");
                sb5.append(i2);
                String valueOf3 = String.valueOf(sb5.toString());
                int i3 = eventTime.mediaPeriodId.adIndexInAdGroup;
                StringBuilder sb6 = new StringBuilder(String.valueOf(valueOf3).length() + 16);
                sb6.append(valueOf3);
                sb6.append(", ad=");
                sb6.append(i3);
                str = sb6.toString();
            }
        }
        String timeString = getTimeString(eventTime.realtimeMs - this.startTimeMs);
        String timeString2 = getTimeString(eventTime.currentPlaybackPositionMs);
        StringBuilder sb7 = new StringBuilder(String.valueOf(timeString).length() + 4 + String.valueOf(timeString2).length() + String.valueOf(str).length());
        sb7.append(timeString);
        sb7.append(UserProfile.CARD_CATE_SEPARATOR);
        sb7.append(timeString2);
        sb7.append(UserProfile.CARD_CATE_SEPARATOR);
        sb7.append(str);
        return sb7.toString();
    }

    public static String getFormatSupportString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "YES" : "NO_EXCEEDS_CAPABILITIES" : "NO_UNSUPPORTED_DRM" : "NO_UNSUPPORTED_TYPE" : "NO";
    }

    public static String getRepeatModeString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF";
    }

    public static String getStateString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE";
    }

    public static String getTimeString(long j) {
        return j == C0463C.TIME_UNSET ? "?" : TIME_FORMAT.format(((float) j) / 1000.0f);
    }

    public static String getTimelineChangeReasonString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "DYNAMIC" : "RESET" : "PREPARED";
    }

    public static String getTrackStatusString(@Nullable TrackSelection trackSelection, TrackGroup trackGroup, int i) {
        return getTrackStatusString((trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i) == -1) ? false : true);
    }

    public static String getTrackStatusString(boolean z) {
        return z ? "[X]" : "[ ]";
    }

    public static String getTrackTypeString(int i) {
        String str;
        switch (i) {
            case 0:
                return "default";
            case 1:
                return MimeTypes.BASE_TYPE_AUDIO;
            case 2:
                return MimeTypes.BASE_TYPE_VIDEO;
            case 3:
                return "text";
            case 4:
                return TtmlNode.TAG_METADATA;
            case 5:
                return "camera motion";
            case 6:
                return "none";
            default:
                if (i >= 10000) {
                    StringBuilder sb = new StringBuilder(20);
                    sb.append("custom (");
                    sb.append(i);
                    sb.append(")");
                    str = sb.toString();
                } else {
                    str = "?";
                }
                return str;
        }
    }

    private void logd(AnalyticsListener.EventTime eventTime, String str) {
        logd(getEventString(eventTime, str));
    }

    private void logd(AnalyticsListener.EventTime eventTime, String str, String str2) {
        logd(getEventString(eventTime, str, str2));
    }

    private void loge(AnalyticsListener.EventTime eventTime, String str, String str2, @Nullable Throwable th) {
        loge(getEventString(eventTime, str, str2), th);
    }

    private void loge(AnalyticsListener.EventTime eventTime, String str, @Nullable Throwable th) {
        loge(getEventString(eventTime, str), th);
    }

    private void printInternalError(AnalyticsListener.EventTime eventTime, String str, Exception exc) {
        loge(eventTime, "internalError", str, exc);
    }

    private void printMetadata(Metadata metadata, String str) {
        for (int i = 0; i < metadata.length(); i++) {
            String valueOf = String.valueOf(metadata.get(i));
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(valueOf).length());
            sb.append(str);
            sb.append(valueOf);
            logd(sb.toString());
        }
    }

    public void logd(String str) {
        Log.m37489d(this.tag, str);
    }

    public void loge(String str, @Nullable Throwable th) {
        Log.m37486e(this.tag, str, th);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        AnalyticsListener$$CC.onAudioAttributesChanged$$dflt$$(this, eventTime, audioAttributes);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioSessionId(AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "audioSessionId", Integer.toString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder(56);
        sb.append(i);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(j);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(j2);
        sb.append("]");
        loge(eventTime, "audioTrackUnderrun", sb.toString(), null);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        logd(eventTime, "decoderDisabled", getTrackTypeString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        logd(eventTime, "decoderEnabled", getTrackTypeString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i, String str, long j) {
        String trackTypeString = getTrackTypeString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(trackTypeString).length() + 2 + String.valueOf(str).length());
        sb.append(trackTypeString);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str);
        logd(eventTime, "decoderInitialized", sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i, Format format) {
        String trackTypeString = getTrackTypeString(i);
        String logString = Format.toLogString(format);
        StringBuilder sb = new StringBuilder(String.valueOf(trackTypeString).length() + 2 + String.valueOf(logString).length());
        sb.append(trackTypeString);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(logString);
        logd(eventTime, "decoderInputFormatChanged", sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        logd(eventTime, "downstreamFormatChanged", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysLoaded");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRemoved");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRestored");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmSessionAcquired");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        printInternalError(eventTime, "drmSessionManagerError", exc);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmSessionReleased");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        logd(eventTime, "droppedFrames", Integer.toString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadCanceled(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadCompleted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        printInternalError(eventTime, "loadError", iOException);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadStarted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "loading", Boolean.toString(z));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMediaPeriodCreated(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodCreated");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMediaPeriodReleased(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodReleased");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        String eventTimeString = getEventTimeString(eventTime);
        StringBuilder sb = new StringBuilder(String.valueOf(eventTimeString).length() + 12);
        sb.append("metadata [");
        sb.append(eventTimeString);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        logd(sb.toString());
        printMetadata(metadata, "  ");
        logd("]");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        logd(eventTime, "playbackParameters", Util.formatInvariant("speed=%.2f, pitch=%.2f, skipSilence=%s", Float.valueOf(playbackParameters.speed), Float.valueOf(playbackParameters.pitch), Boolean.valueOf(playbackParameters.skipSilence)));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlayerError(AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
        loge(eventTime, "playerFailed", exoPlaybackException);
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        String stateString = getStateString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(stateString).length() + 7);
        sb.append(z);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(stateString);
        logd(eventTime, IapProductRealmObject.STATE, sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "positionDiscontinuity", getDiscontinuityReasonString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onReadingStarted(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodReadingStarted");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, @Nullable Surface surface) {
        logd(eventTime, "renderedFirstFrame", String.valueOf(surface));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "repeatMode", getRepeatModeString(i));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "seekProcessed");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "seekStarted");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "shuffleModeEnabled", Boolean.toString(z));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(i);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(i2);
        logd(eventTime, "surfaceSizeChanged", sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
        int periodCount = eventTime.timeline.getPeriodCount();
        int windowCount = eventTime.timeline.getWindowCount();
        String eventTimeString = getEventTimeString(eventTime);
        String timelineChangeReasonString = getTimelineChangeReasonString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(eventTimeString).length() + 76 + String.valueOf(timelineChangeReasonString).length());
        sb.append("timelineChanged [");
        sb.append(eventTimeString);
        sb.append(", periodCount=");
        sb.append(periodCount);
        sb.append(", windowCount=");
        sb.append(windowCount);
        sb.append(", reason=");
        sb.append(timelineChangeReasonString);
        logd(sb.toString());
        for (int i2 = 0; i2 < Math.min(periodCount, 3); i2++) {
            eventTime.timeline.getPeriod(i2, this.period);
            String timeString = getTimeString(this.period.getDurationMs());
            StringBuilder sb2 = new StringBuilder(String.valueOf(timeString).length() + 11);
            sb2.append("  period [");
            sb2.append(timeString);
            sb2.append("]");
            logd(sb2.toString());
        }
        int i3 = 0;
        if (periodCount > 3) {
            logd("  ...");
            i3 = 0;
        }
        while (i3 < Math.min(windowCount, 3)) {
            eventTime.timeline.getWindow(i3, this.window);
            String timeString2 = getTimeString(this.window.getDurationMs());
            Timeline.Window window = this.window;
            boolean z = window.isSeekable;
            boolean z2 = window.isDynamic;
            StringBuilder sb3 = new StringBuilder(String.valueOf(timeString2).length() + 25);
            sb3.append("  window [");
            sb3.append(timeString2);
            sb3.append(UserProfile.CARD_CATE_SEPARATOR);
            sb3.append(z);
            sb3.append(UserProfile.CARD_CATE_SEPARATOR);
            sb3.append(z2);
            sb3.append("]");
            logd(sb3.toString());
            i3++;
        }
        if (windowCount > 3) {
            logd("  ...");
        }
        logd("]");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        MappingTrackSelector mappingTrackSelector = this.trackSelector;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = mappingTrackSelector != null ? mappingTrackSelector.getCurrentMappedTrackInfo() : null;
        if (currentMappedTrackInfo == null) {
            logd(eventTime, "tracksChanged", "[]");
            return;
        }
        String eventTimeString = getEventTimeString(eventTime);
        StringBuilder sb = new StringBuilder(String.valueOf(eventTimeString).length() + 17);
        sb.append("tracksChanged [");
        sb.append(eventTimeString);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        logd(sb.toString());
        int rendererCount = currentMappedTrackInfo.getRendererCount();
        for (int i = 0; i < rendererCount; i++) {
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i);
            TrackSelection trackSelection = trackSelectionArray.get(i);
            if (trackGroups.length > 0) {
                StringBuilder sb2 = new StringBuilder(24);
                sb2.append("  Renderer:");
                sb2.append(i);
                sb2.append(" [");
                logd(sb2.toString());
                for (int i2 = 0; i2 < trackGroups.length; i2++) {
                    TrackGroup trackGroup = trackGroups.get(i2);
                    String adaptiveSupportString = getAdaptiveSupportString(trackGroup.length, currentMappedTrackInfo.getAdaptiveSupport(i, i2, false));
                    StringBuilder sb3 = new StringBuilder(String.valueOf(adaptiveSupportString).length() + 44);
                    sb3.append("    Group:");
                    sb3.append(i2);
                    sb3.append(", adaptive_supported=");
                    sb3.append(adaptiveSupportString);
                    sb3.append(" [");
                    logd(sb3.toString());
                    for (int i3 = 0; i3 < trackGroup.length; i3++) {
                        String trackStatusString = getTrackStatusString(trackSelection, trackGroup, i3);
                        String formatSupportString = getFormatSupportString(currentMappedTrackInfo.getTrackSupport(i, i2, i3));
                        String logString = Format.toLogString(trackGroup.getFormat(i3));
                        StringBuilder sb4 = new StringBuilder(String.valueOf(trackStatusString).length() + 38 + String.valueOf(logString).length() + String.valueOf(formatSupportString).length());
                        sb4.append("      ");
                        sb4.append(trackStatusString);
                        sb4.append(" Track:");
                        sb4.append(i3);
                        sb4.append(UserProfile.CARD_CATE_SEPARATOR);
                        sb4.append(logString);
                        sb4.append(", supported=");
                        sb4.append(formatSupportString);
                        logd(sb4.toString());
                    }
                    logd("    ]");
                }
                if (trackSelection != null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= trackSelection.length()) {
                            break;
                        }
                        Metadata metadata = trackSelection.getFormat(i4).metadata;
                        if (metadata != null) {
                            logd("    Metadata [");
                            printMetadata(metadata, "      ");
                            logd("    ]");
                            break;
                        }
                        i4++;
                    }
                }
                logd("  ]");
            }
        }
        TrackGroupArray unmappedTrackGroups = currentMappedTrackInfo.getUnmappedTrackGroups();
        if (unmappedTrackGroups.length > 0) {
            logd("  Renderer:None [");
            for (int i5 = 0; i5 < unmappedTrackGroups.length; i5++) {
                StringBuilder sb5 = new StringBuilder(23);
                sb5.append("    Group:");
                sb5.append(i5);
                sb5.append(" [");
                logd(sb5.toString());
                TrackGroup trackGroup2 = unmappedTrackGroups.get(i5);
                for (int i6 = 0; i6 < trackGroup2.length; i6++) {
                    String trackStatusString2 = getTrackStatusString(false);
                    String formatSupportString2 = getFormatSupportString(0);
                    String logString2 = Format.toLogString(trackGroup2.getFormat(i6));
                    StringBuilder sb6 = new StringBuilder(String.valueOf(trackStatusString2).length() + 38 + String.valueOf(logString2).length() + String.valueOf(formatSupportString2).length());
                    sb6.append("      ");
                    sb6.append(trackStatusString2);
                    sb6.append(" Track:");
                    sb6.append(i6);
                    sb6.append(UserProfile.CARD_CATE_SEPARATOR);
                    sb6.append(logString2);
                    sb6.append(", supported=");
                    sb6.append(formatSupportString2);
                    logd(sb6.toString());
                }
                logd("    ]");
            }
            logd("  ]");
        }
        logd("]");
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        logd(eventTime, "upstreamDiscarded", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(i);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(i2);
        logd(eventTime, "videoSizeChanged", sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.analytics.AnalyticsListener
    public void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
        AnalyticsListener$$CC.onVolumeChanged$$dflt$$(this, eventTime, f);
    }
}
