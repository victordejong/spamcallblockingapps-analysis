package com.google.android.exoplayer2.analytics;

import com.google.android.exoplayer2.source.MediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/analytics/AnalyticsCollector$WindowAndMediaPeriodId.class */
public final class AnalyticsCollector$WindowAndMediaPeriodId {
    public final MediaSource.MediaPeriodId mediaPeriodId;
    public final int windowIndex;

    public AnalyticsCollector$WindowAndMediaPeriodId(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        this.windowIndex = i;
        this.mediaPeriodId = mediaPeriodId;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || AnalyticsCollector$WindowAndMediaPeriodId.class != obj.getClass()) {
            return false;
        }
        AnalyticsCollector$WindowAndMediaPeriodId analyticsCollector$WindowAndMediaPeriodId = (AnalyticsCollector$WindowAndMediaPeriodId) obj;
        if (this.windowIndex != analyticsCollector$WindowAndMediaPeriodId.windowIndex || !this.mediaPeriodId.equals(analyticsCollector$WindowAndMediaPeriodId.mediaPeriodId)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.windowIndex * 31) + this.mediaPeriodId.hashCode();
    }
}
