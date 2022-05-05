package androidx.media2.exoplayer.external.extractor.mp3;

import android.util.Pair;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.SeekPoint;
import androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp3/MlltSeeker.class */
public final class MlltSeeker implements Mp3Extractor.Seeker {
    public final long durationUs;
    public final long[] referencePositions;
    public final long[] referenceTimesMs;

    public MlltSeeker(long[] jArr, long[] jArr2) {
        this.referencePositions = jArr;
        this.referenceTimesMs = jArr2;
        this.durationUs = C0463C.msToUs(jArr2[jArr2.length - 1]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.extractor.mp3.MlltSeeker create(long r6, androidx.media2.exoplayer.external.metadata.id3.MlltFrame r8) {
        /*
            r0 = r8
            int[] r0 = r0.bytesDeviations
            int r0 = r0.length
            r9 = r0
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            long[] r0 = new long[r0]
            r11 = r0
            r0 = r10
            long[] r0 = new long[r0]
            r12 = r0
            r0 = r11
            r1 = 0
            r2 = r6
            r0[r1] = r2
            r0 = 0
            r13 = r0
            r0 = r12
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = 1
            r10 = r0
            r0 = r6
            r15 = r0
            r0 = r13
            r6 = r0
        L_0x002d:
            r0 = r10
            r1 = r9
            if (r0 > r1) goto L_0x0076
            r0 = r8
            int r0 = r0.bytesBetweenReference
            r17 = r0
            r0 = r8
            int[] r0 = r0.bytesDeviations
            r18 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 - r1
            r19 = r0
            r0 = r15
            r1 = r17
            r2 = r18
            r3 = r19
            r2 = r2[r3]
            int r1 = r1 + r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r6
            r1 = r8
            int r1 = r1.millisecondsBetweenReference
            r2 = r8
            int[] r2 = r2.millisecondsDeviations
            r3 = r19
            r2 = r2[r3]
            int r1 = r1 + r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r6 = r0
            r0 = r11
            r1 = r10
            r2 = r15
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = r6
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x002d
        L_0x0076:
            androidx.media2.exoplayer.external.extractor.mp3.MlltSeeker r0 = new androidx.media2.exoplayer.external.extractor.mp3.MlltSeeker
            r1 = r0
            r2 = r11
            r3 = r12
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp3.MlltSeeker.create(long, androidx.media2.exoplayer.external.metadata.id3.MlltFrame):androidx.media2.exoplayer.external.extractor.mp3.MlltSeeker");
    }

    public static Pair<Long, Long> linearlyInterpolate(long j, long[] jArr, long[] jArr2) {
        int binarySearchFloor = Util.binarySearchFloor(jArr, j, true, true);
        long j2 = jArr[binarySearchFloor];
        long j3 = jArr2[binarySearchFloor];
        int i = binarySearchFloor + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        Pair<Long, Long> linearlyInterpolate = linearlyInterpolate(C0463C.usToMs(Util.constrainValue(j, 0L, this.durationUs)), this.referenceTimesMs, this.referencePositions);
        return new SeekMap.SeekPoints(new SeekPoint(C0463C.msToUs(((Long) linearlyInterpolate.first).longValue()), ((Long) linearlyInterpolate.second).longValue()));
    }

    @Override // androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j) {
        return C0463C.msToUs(((Long) linearlyInterpolate(j, this.referencePositions, this.referenceTimesMs).second).longValue());
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
