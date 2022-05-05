package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SinglePeriodTimeline.class */
public final class SinglePeriodTimeline extends Timeline {
    public static final Object UID = new Object();
    public final boolean isDynamic;
    public final boolean isSeekable;
    public final long periodDurationUs;
    public final long presentationStartTimeMs;
    @Nullable
    public final Object tag;
    public final long windowDefaultStartPositionUs;
    public final long windowDurationUs;
    public final long windowPositionInPeriodUs;
    public final long windowStartTimeMs;

    public SinglePeriodTimeline(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, @Nullable Object obj) {
        this.presentationStartTimeMs = j;
        this.windowStartTimeMs = j2;
        this.periodDurationUs = j3;
        this.windowDurationUs = j4;
        this.windowPositionInPeriodUs = j5;
        this.windowDefaultStartPositionUs = j6;
        this.isSeekable = z;
        this.isDynamic = z2;
        this.tag = obj;
    }

    public SinglePeriodTimeline(long j, long j2, long j3, long j4, boolean z, boolean z2, @Nullable Object obj) {
        this(C0463C.TIME_UNSET, C0463C.TIME_UNSET, j, j2, j3, j4, z, z2, obj);
    }

    public SinglePeriodTimeline(long j, boolean z, boolean z2) {
        this(j, z, z2, null);
    }

    public SinglePeriodTimeline(long j, boolean z, boolean z2, @Nullable Object obj) {
        this(j, j, 0L, 0L, z, z2, obj);
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getIndexOfPeriod(Object obj) {
        return UID.equals(obj) ? 0 : -1;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
        Assertions.checkIndex(i, 0, 1);
        return period.set(null, z ? UID : null, 0, this.periodDurationUs, -this.windowPositionInPeriodUs);
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getPeriodCount() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public Object getUidOfPeriod(int i) {
        Assertions.checkIndex(i, 0, 1);
        return UID;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005a, code lost:
        if (r0 > r0) goto L_0x0042;
     */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.Timeline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.Timeline.Window getWindow(int r18, androidx.media2.exoplayer.external.Timeline.Window r19, boolean r20, long r21) {
        /*
            r17 = this;
            r0 = r18
            r1 = 0
            r2 = 1
            int r0 = androidx.media2.exoplayer.external.util.Assertions.checkIndex(r0, r1, r2)
            r0 = r20
            if (r0 == 0) goto L_0x0014
            r0 = r17
            java.lang.Object r0 = r0.tag
            r23 = r0
            goto L_0x0017
        L_0x0014:
            r0 = 0
            r23 = r0
        L_0x0017:
            r0 = r17
            long r0 = r0.windowDefaultStartPositionUs
            r24 = r0
            r0 = r24
            r26 = r0
            r0 = r17
            boolean r0 = r0.isDynamic
            if (r0 == 0) goto L_0x0060
            r0 = r24
            r26 = r0
            r0 = r21
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0060
            r0 = r17
            long r0 = r0.windowDurationUs
            r28 = r0
            r0 = r28
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004a
        L_0x0042:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r21 = r0
            goto L_0x0064
        L_0x004a:
            r0 = r24
            r1 = r21
            long r0 = r0 + r1
            r21 = r0
            r0 = r21
            r26 = r0
            r0 = r21
            r1 = r28
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0060
            goto L_0x0042
        L_0x0060:
            r0 = r26
            r21 = r0
        L_0x0064:
            r0 = r19
            r1 = r23
            r2 = r17
            long r2 = r2.presentationStartTimeMs
            r3 = r17
            long r3 = r3.windowStartTimeMs
            r4 = r17
            boolean r4 = r4.isSeekable
            r5 = r17
            boolean r5 = r5.isDynamic
            r6 = r21
            r7 = r17
            long r7 = r7.windowDurationUs
            r8 = 0
            r9 = 0
            r10 = r17
            long r10 = r10.windowPositionInPeriodUs
            androidx.media2.exoplayer.external.Timeline$Window r0 = r0.set(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.SinglePeriodTimeline.getWindow(int, androidx.media2.exoplayer.external.Timeline$Window, boolean, long):androidx.media2.exoplayer.external.Timeline$Window");
    }

    @Override // androidx.media2.exoplayer.external.Timeline
    public int getWindowCount() {
        return 1;
    }
}
