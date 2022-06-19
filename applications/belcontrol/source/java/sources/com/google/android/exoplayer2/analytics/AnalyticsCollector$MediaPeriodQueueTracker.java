package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/analytics/AnalyticsCollector$MediaPeriodQueueTracker.class */
public final class AnalyticsCollector$MediaPeriodQueueTracker {
    private boolean isSeeking;
    private AnalyticsCollector$WindowAndMediaPeriodId lastReportedPlayingMediaPeriod;
    private AnalyticsCollector$WindowAndMediaPeriodId readingMediaPeriod;
    private final ArrayList<AnalyticsCollector$WindowAndMediaPeriodId> activeMediaPeriods = new ArrayList<>();
    private final Timeline.Period period = new Timeline.Period();
    private Timeline timeline = Timeline.EMPTY;

    private void updateLastReportedPlayingMediaPeriod() {
        if (!this.activeMediaPeriods.isEmpty()) {
            this.lastReportedPlayingMediaPeriod = this.activeMediaPeriods.get(0);
        }
    }

    private AnalyticsCollector$WindowAndMediaPeriodId updateMediaPeriodToNewTimeline(AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId, Timeline timeline) {
        if (timeline.isEmpty() || this.timeline.isEmpty()) {
            return analyticsCollector$WindowAndMediaPeriodId;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(this.timeline.getPeriod(analyticsCollector$WindowAndMediaPeriodId.mediaPeriodId.periodIndex, this.period, true).uid);
        return indexOfPeriod == -1 ? analyticsCollector$WindowAndMediaPeriodId : new AnalyticsCollector$WindowAndMediaPeriodId(timeline.getPeriod(indexOfPeriod, this.period).windowIndex, analyticsCollector$WindowAndMediaPeriodId.mediaPeriodId.copyWithPeriodIndex(indexOfPeriod));
    }

    public AnalyticsCollector$WindowAndMediaPeriodId getLastReportedPlayingMediaPeriod() {
        return this.lastReportedPlayingMediaPeriod;
    }

    public AnalyticsCollector$WindowAndMediaPeriodId getLoadingMediaPeriod() {
        AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId;
        if (this.activeMediaPeriods.isEmpty()) {
            analyticsCollector$WindowAndMediaPeriodId = null;
        } else {
            ArrayList<AnalyticsCollector$WindowAndMediaPeriodId> arrayList = this.activeMediaPeriods;
            analyticsCollector$WindowAndMediaPeriodId = arrayList.get(arrayList.size() - 1);
        }
        return analyticsCollector$WindowAndMediaPeriodId;
    }

    public AnalyticsCollector$WindowAndMediaPeriodId getPlayingMediaPeriod() {
        return (this.activeMediaPeriods.isEmpty() || this.timeline.isEmpty() || this.isSeeking) ? null : this.activeMediaPeriods.get(0);
    }

    public AnalyticsCollector$WindowAndMediaPeriodId getReadingMediaPeriod() {
        return this.readingMediaPeriod;
    }

    public boolean isSeeking() {
        return this.isSeeking;
    }

    public void onMediaPeriodCreated(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.activeMediaPeriods.add(new AnalyticsCollector$WindowAndMediaPeriodId(i, mediaPeriodId));
        if (this.activeMediaPeriods.size() != 1 || this.timeline.isEmpty()) {
            return;
        }
        updateLastReportedPlayingMediaPeriod();
    }

    public void onMediaPeriodReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId = new AnalyticsCollector$WindowAndMediaPeriodId(i, mediaPeriodId);
        this.activeMediaPeriods.remove(analyticsCollector$WindowAndMediaPeriodId);
        if (analyticsCollector$WindowAndMediaPeriodId.equals(this.readingMediaPeriod)) {
            this.readingMediaPeriod = this.activeMediaPeriods.isEmpty() ? null : this.activeMediaPeriods.get(0);
        }
    }

    public void onPositionDiscontinuity(int i) {
        updateLastReportedPlayingMediaPeriod();
    }

    public void onReadingStarted(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.readingMediaPeriod = new AnalyticsCollector$WindowAndMediaPeriodId(i, mediaPeriodId);
    }

    public void onSeekProcessed() {
        this.isSeeking = false;
        updateLastReportedPlayingMediaPeriod();
    }

    public void onSeekStarted() {
        this.isSeeking = true;
    }

    public void onTimelineChanged(Timeline timeline) {
        for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
            ArrayList<AnalyticsCollector$WindowAndMediaPeriodId> arrayList = this.activeMediaPeriods;
            arrayList.set(i, updateMediaPeriodToNewTimeline(arrayList.get(i), timeline));
        }
        AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId = this.readingMediaPeriod;
        if (analyticsCollector$WindowAndMediaPeriodId != null) {
            this.readingMediaPeriod = updateMediaPeriodToNewTimeline(analyticsCollector$WindowAndMediaPeriodId, timeline);
        }
        this.timeline = timeline;
        updateLastReportedPlayingMediaPeriod();
    }

    public MediaSource.MediaPeriodId tryResolveWindowIndex(int i) {
        Timeline timeline = this.timeline;
        MediaSource.MediaPeriodId mediaPeriodId = null;
        if (timeline != null) {
            int periodCount = timeline.getPeriodCount();
            int i2 = 0;
            MediaSource.MediaPeriodId mediaPeriodId2 = null;
            while (true) {
                mediaPeriodId = mediaPeriodId2;
                if (i2 >= this.activeMediaPeriods.size()) {
                    break;
                }
                AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId = this.activeMediaPeriods.get(i2);
                int i3 = analyticsCollector$WindowAndMediaPeriodId.mediaPeriodId.periodIndex;
                MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodId;
                if (i3 < periodCount) {
                    mediaPeriodId3 = mediaPeriodId;
                    if (this.timeline.getPeriod(i3, this.period).windowIndex != i) {
                        continue;
                    } else if (mediaPeriodId != null) {
                        return null;
                    } else {
                        mediaPeriodId3 = analyticsCollector$WindowAndMediaPeriodId.mediaPeriodId;
                    }
                }
                i2++;
                mediaPeriodId2 = mediaPeriodId3;
            }
        }
        return mediaPeriodId;
    }
}
