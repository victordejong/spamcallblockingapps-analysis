package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.Period;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo.class */
public final class DashMediaSource$PeriodSeekInfo {
    public final long availableEndTimeUs;
    public final long availableStartTimeUs;
    public final boolean isIndexExplicit;

    private DashMediaSource$PeriodSeekInfo(boolean z, long j, long j2) {
        this.isIndexExplicit = z;
        this.availableStartTimeUs = j;
        this.availableEndTimeUs = j2;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    public static DashMediaSource$PeriodSeekInfo createPeriodSeekInfo(Period period, long j) {
        boolean z;
        int size = period.adaptationSets.size();
        for (int i = 0; i < size; i++) {
            int i2 = period.adaptationSets.get(i).type;
            if (i2 == 1 || i2 == 2) {
                z = true;
                break;
            }
        }
        z = false;
        char c = 65535;
        boolean z2 = false;
        char c2 = 0;
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i3);
            if (!z || adaptationSet.type != 3) {
                DashSegmentIndex index = adaptationSet.representations.get(0).getIndex();
                if (index == null) {
                    return new DashMediaSource$PeriodSeekInfo(true, 0L, j);
                }
                boolean isExplicit = z2 | index.isExplicit();
                int segmentCount = index.getSegmentCount(j);
                if (segmentCount == 0) {
                    c = 0;
                    c2 = 0;
                    z3 = true;
                    z2 = isExplicit;
                } else {
                    z2 = isExplicit;
                    if (!z3) {
                        long firstSegmentNum = index.getFirstSegmentNum();
                        c2 = Math.max((long) c2, index.getTimeUs(firstSegmentNum));
                        if (segmentCount != -1) {
                            long j2 = (firstSegmentNum + segmentCount) - 1;
                            c = Math.min((long) c, index.getTimeUs(j2) + index.getDurationUs(j2, j));
                            z2 = isExplicit;
                        } else {
                            z2 = isExplicit;
                        }
                    }
                }
            }
        }
        return new DashMediaSource$PeriodSeekInfo(z2, c2, c);
    }
}
