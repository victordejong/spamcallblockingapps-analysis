package com.google.android.exoplayer2;

import android.util.Log;
import com.google.android.exoplayer2.source.ClippingMediaPeriod;
import com.google.android.exoplayer2.source.EmptySampleStream;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Assertions;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/MediaPeriodHolder.class */
public final class MediaPeriodHolder {
    private static final String TAG = "MediaPeriodHolder";
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    public final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    private final MediaSource mediaSource;
    public MediaPeriodHolder next;
    private TrackSelectorResult periodTrackSelectorResult;
    public boolean prepared;
    private final RendererCapabilities[] rendererCapabilities;
    public long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    public TrackGroupArray trackGroups;
    private final TrackSelector trackSelector;
    public TrackSelectorResult trackSelectorResult;
    public final Object uid;

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, Object obj, MediaPeriodInfo mediaPeriodInfo) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j - mediaPeriodInfo.startPositionUs;
        this.trackSelector = trackSelector;
        this.mediaSource = mediaSource;
        this.uid = Assertions.checkNotNull(obj);
        this.info = mediaPeriodInfo;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        ClippingMediaPeriod createPeriod = mediaSource.createPeriod(mediaPeriodInfo.f3597id, allocator);
        long j2 = mediaPeriodInfo.endPositionUs;
        this.mediaPeriod = j2 != Long.MIN_VALUE ? new ClippingMediaPeriod(createPeriod, true, 0L, j2) : createPeriod;
    }

    private void associateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i < rendererCapabilitiesArr.length) {
                if (rendererCapabilitiesArr[i].getTrackType() == 5 && this.trackSelectorResult.isRendererEnabled(i)) {
                    sampleStreamArr[i] = new EmptySampleStream();
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void disableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i = 0; i < trackSelectorResult.length; i++) {
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i);
            if (isRendererEnabled && trackSelection != null) {
                trackSelection.disable();
            }
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i < rendererCapabilitiesArr.length) {
                if (rendererCapabilitiesArr[i].getTrackType() == 5) {
                    sampleStreamArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    private void enableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i = 0; i < trackSelectorResult.length; i++) {
            boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i);
            if (isRendererEnabled && trackSelection != null) {
                trackSelection.enable();
            }
        }
    }

    private void updatePeriodTrackSelectorResult(TrackSelectorResult trackSelectorResult) {
        TrackSelectorResult trackSelectorResult2 = this.periodTrackSelectorResult;
        if (trackSelectorResult2 != null) {
            disableTrackSelectionsInResult(trackSelectorResult2);
        }
        this.periodTrackSelectorResult = trackSelectorResult;
        if (trackSelectorResult != null) {
            enableTrackSelectionsInResult(trackSelectorResult);
        }
    }

    public long applyTrackSelection(long j, boolean z) {
        return applyTrackSelection(j, z, new boolean[this.rendererCapabilities.length]);
    }

    public long applyTrackSelection(long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            boolean z2 = true;
            if (i >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z || !trackSelectorResult.isEquivalent(this.periodTrackSelectorResult, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        updatePeriodTrackSelectorResult(this.trackSelectorResult);
        TrackSelectionArray trackSelectionArray = this.trackSelectorResult.selections;
        long selectTracks = this.mediaPeriod.selectTracks(trackSelectionArray.getAll(), this.mayRetainStreamFlags, this.sampleStreams, zArr, j);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i2 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i2 < sampleStreamArr.length) {
                if (sampleStreamArr[i2] != null) {
                    Assertions.checkState(this.trackSelectorResult.isRendererEnabled(i2));
                    if (this.rendererCapabilities[i2].getTrackType() != 5) {
                        this.hasEnabledTracks = true;
                    }
                } else {
                    Assertions.checkState(trackSelectionArray.get(i2) == null);
                }
                i2++;
            } else {
                return selectTracks;
            }
        }
    }

    public void continueLoading(long j) {
        this.mediaPeriod.continueLoading(toPeriodTime(j));
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    public long getBufferedPositionUs(boolean z) {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        ?? bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        char c = bufferedPositionUs;
        if (bufferedPositionUs == Long.MIN_VALUE) {
            c = bufferedPositionUs;
            if (z) {
                c = this.info.durationUs;
            }
        }
        return c;
    }

    public long getDurationUs() {
        return this.info.durationUs;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public long getNextLoadPositionUs() {
        return !this.prepared ? (char) 0 : this.mediaPeriod.getNextLoadPositionUs();
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public void handlePrepared(float f) {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        selectTracks(f);
        long applyTrackSelection = applyTrackSelection(this.info.startPositionUs, false);
        long j = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo = this.info;
        this.rendererPositionOffsetUs = j + (mediaPeriodInfo.startPositionUs - applyTrackSelection);
        this.info = mediaPeriodInfo.copyWithStartPositionUs(applyTrackSelection);
    }

    public boolean isFullyBuffered() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void reevaluateBuffer(long j) {
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j));
        }
    }

    public void release() {
        MediaSource mediaSource;
        MediaPeriod mediaPeriod;
        updatePeriodTrackSelectorResult(null);
        try {
            if (this.info.endPositionUs != Long.MIN_VALUE) {
                mediaSource = this.mediaSource;
                mediaPeriod = this.mediaPeriod.mediaPeriod;
            } else {
                mediaSource = this.mediaSource;
                mediaPeriod = this.mediaPeriod;
            }
            mediaSource.releasePeriod(mediaPeriod);
        } catch (RuntimeException e) {
            Log.e(TAG, "Period release failed.", e);
        }
    }

    public boolean selectTracks(float f) {
        TrackSelection[] all;
        TrackSelectorResult selectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, this.trackGroups);
        if (selectTracks.isEquivalent(this.periodTrackSelectorResult)) {
            return false;
        }
        this.trackSelectorResult = selectTracks;
        for (TrackSelection trackSelection : selectTracks.selections.getAll()) {
            if (trackSelection != null) {
                trackSelection.onPlaybackSpeed(f);
            }
        }
        return true;
    }

    public long toPeriodTime(long j) {
        return j - getRendererOffset();
    }

    public long toRendererTime(long j) {
        return j + getRendererOffset();
    }
}
