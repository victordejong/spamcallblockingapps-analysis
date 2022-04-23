package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/TimestampAdjuster.class */
public final class TimestampAdjuster {
    public static final long DO_NOT_OFFSET = Long.MAX_VALUE;
    public static final long MAX_PTS_PLUS_ONE = 8589934592L;
    public long firstSampleTimestampUs;
    public volatile long lastSampleTimestampUs = C0463C.TIME_UNSET;
    public long timestampOffsetUs;

    public TimestampAdjuster(long j) {
        setFirstSampleTimestampUs(j);
    }

    public static long ptsToUs(long j) {
        return (j * 1000000) / 90000;
    }

    public static long usToPts(long j) {
        return (j * 90000) / 1000000;
    }

    public long adjustSampleTimestamp(long j) {
        if (j == C0463C.TIME_UNSET) {
            return C0463C.TIME_UNSET;
        }
        if (this.lastSampleTimestampUs != C0463C.TIME_UNSET) {
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
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long adjustTsTimestamp(long r8) {
        /*
            r7 = this;
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x000c:
            r0 = r8
            r10 = r0
            r0 = r7
            long r0 = r0.lastSampleTimestampUs
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0058
            r0 = r7
            long r0 = r0.lastSampleTimestampUs
            long r0 = usToPts(r0)
            r12 = r0
            r0 = 4294967296(0x100000000, double:2.121995791E-314)
            r1 = r12
            long r0 = r0 + r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 / r1
            r10 = r0
            r0 = r10
            r1 = 1
            long r0 = r0 - r1
            r1 = 8589934592(0x200000000, double:4.243991582E-314)
            long r0 = r0 * r1
            r1 = r8
            long r0 = r0 + r1
            r14 = r0
            r0 = r8
            r1 = r10
            r2 = 8589934592(0x200000000, double:4.243991582E-314)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r14
            r1 = r12
            long r0 = r0 - r1
            long r0 = java.lang.Math.abs(r0)
            r1 = r8
            r2 = r12
            long r1 = r1 - r2
            long r1 = java.lang.Math.abs(r1)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            r0 = r14
            r10 = r0
        L_0x0058:
            r0 = r7
            r1 = r10
            long r1 = ptsToUs(r1)
            long r0 = r0.adjustSampleTimestamp(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.TimestampAdjuster.adjustTsTimestamp(long):long");
    }

    public long getFirstSampleTimestampUs() {
        return this.firstSampleTimestampUs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getLastAdjustedTimestampUs() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.lastSampleTimestampUs
            r6 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0020
            r0 = r5
            long r0 = r0.lastSampleTimestampUs
            r8 = r0
            r0 = r5
            long r0 = r0.timestampOffsetUs
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
            goto L_0x002f
        L_0x0020:
            r0 = r5
            long r0 = r0.firstSampleTimestampUs
            r6 = r0
            r0 = r6
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r8 = r0
        L_0x002f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.TimestampAdjuster.getLastAdjustedTimestampUs():long");
    }

    public long getTimestampOffsetUs() {
        long j = this.firstSampleTimestampUs;
        long j2 = C0463C.TIME_UNSET;
        if (j == Long.MAX_VALUE) {
            j2 = 0;
        } else if (this.lastSampleTimestampUs != C0463C.TIME_UNSET) {
            j2 = this.timestampOffsetUs;
        }
        return j2;
    }

    public void reset() {
        this.lastSampleTimestampUs = C0463C.TIME_UNSET;
    }

    public void setFirstSampleTimestampUs(long j) {
        synchronized (this) {
            Assertions.checkState(this.lastSampleTimestampUs == C0463C.TIME_UNSET);
            this.firstSampleTimestampUs = j;
        }
    }

    public void waitUntilInitialized() throws InterruptedException {
        synchronized (this) {
            while (this.lastSampleTimestampUs == C0463C.TIME_UNSET) {
                wait();
            }
        }
    }
}
