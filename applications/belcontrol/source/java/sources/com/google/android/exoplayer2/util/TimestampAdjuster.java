package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C0515C;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/TimestampAdjuster.class */
public final class TimestampAdjuster {
    public static final long DO_NOT_OFFSET = Long.MAX_VALUE;
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    private long firstSampleTimestampUs;
    private volatile long lastSampleTimestampUs = C0515C.TIME_UNSET;
    private long timestampOffsetUs;

    public TimestampAdjuster(long j) {
        setFirstSampleTimestampUs(j);
    }

    public static long ptsToUs(long j) {
        return (j * C0515C.MICROS_PER_SECOND) / 90000;
    }

    public static long usToPts(long j) {
        return (j * 90000) / C0515C.MICROS_PER_SECOND;
    }

    public long adjustSampleTimestamp(long j) {
        if (j == C0515C.TIME_UNSET) {
            return C0515C.TIME_UNSET;
        }
        if (this.lastSampleTimestampUs != C0515C.TIME_UNSET) {
            this.lastSampleTimestampUs = j;
        } else {
            long j2 = this.firstSampleTimestampUs;
            if (j2 != Long.MAX_VALUE) {
                this.timestampOffsetUs = j2 - j;
            }
            synchronized (this) {
                this.lastSampleTimestampUs = j;
                notifyAll();
            }
        }
        return j + this.timestampOffsetUs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    public long adjustTsTimestamp(long j) {
        if (j == C0515C.TIME_UNSET) {
            return C0515C.TIME_UNSET;
        }
        char c = j;
        if (this.lastSampleTimestampUs != C0515C.TIME_UNSET) {
            long usToPts = usToPts(this.lastSampleTimestampUs);
            long j2 = (4294967296L + usToPts) / MAX_PTS_PLUS_ONE;
            ?? r0 = ((j2 - 1) * MAX_PTS_PLUS_ONE) + j;
            ?? r02 = j + (j2 * MAX_PTS_PLUS_ONE);
            c = r02;
            if (Math.abs(r0 - usToPts) < Math.abs(r02 - usToPts)) {
                c = r0;
            }
        }
        return adjustSampleTimestamp(ptsToUs(c));
    }

    public long getFirstSampleTimestampUs() {
        return this.firstSampleTimestampUs;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public long getLastAdjustedTimestampUs() {
        char c = 1;
        if (this.lastSampleTimestampUs != C0515C.TIME_UNSET) {
            c = this.timestampOffsetUs + this.lastSampleTimestampUs;
        } else {
            ?? r0 = this.firstSampleTimestampUs;
            if (r0 != Long.MAX_VALUE) {
                c = r0;
            }
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public long getTimestampOffsetUs() {
        char c = 1;
        if (this.firstSampleTimestampUs == Long.MAX_VALUE) {
            c = 0;
        } else if (this.lastSampleTimestampUs != C0515C.TIME_UNSET) {
            c = this.timestampOffsetUs;
        }
        return c;
    }

    public void reset() {
        this.lastSampleTimestampUs = C0515C.TIME_UNSET;
    }

    public void setFirstSampleTimestampUs(long j) {
        synchronized (this) {
            Assertions.checkState(this.lastSampleTimestampUs == C0515C.TIME_UNSET);
            this.firstSampleTimestampUs = j;
        }
    }

    public void waitUntilInitialized() {
        synchronized (this) {
            while (this.lastSampleTimestampUs == C0515C.TIME_UNSET) {
                wait();
            }
        }
    }
}
