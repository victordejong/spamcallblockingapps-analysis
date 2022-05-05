package androidx.media2.exoplayer.external.trackselection;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.Util;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection.class */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.75f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    public static final long DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 2000;
    public final BandwidthProvider bandwidthProvider;
    public final float bufferedFractionToLiveEdgeForQualityIncrease;
    public final Clock clock;
    public final int[] formatBitrates;
    public final Format[] formats;
    public long lastBufferEvaluationMs;
    public final long maxDurationForQualityDecreaseUs;
    public final long minDurationForQualityIncreaseUs;
    public final long minDurationToRetainAfterDiscardUs;
    public final long minTimeBetweenBufferReevaluationMs;
    public float playbackSpeed;
    public int reason;
    public int selectedIndex;
    public TrackBitrateEstimator trackBitrateEstimator;
    public final int[] trackBitrates;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$BandwidthProvider.class */
    public interface BandwidthProvider {
        long getAllocatedBandwidth();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$DefaultBandwidthProvider.class */
    public static final class DefaultBandwidthProvider implements BandwidthProvider {
        @Nullable
        public long[][] allocationCheckpoints;
        public final float bandwidthFraction;
        public final BandwidthMeter bandwidthMeter;
        public long nonAllocatableBandwidth;

        public DefaultBandwidthProvider(BandwidthMeter bandwidthMeter, float f) {
            this.bandwidthMeter = bandwidthMeter;
            this.bandwidthFraction = f;
        }

        public void experimental_setBandwidthAllocationCheckpoints(long[][] jArr) {
            Assertions.checkArgument(jArr.length >= 2);
            this.allocationCheckpoints = jArr;
        }

        public void experimental_setNonAllocatableBandwidth(long j) {
            this.nonAllocatableBandwidth = j;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection.BandwidthProvider
        public long getAllocatedBandwidth() {
            long max = Math.max(0L, (((float) this.bandwidthMeter.getBitrateEstimate()) * this.bandwidthFraction) - this.nonAllocatableBandwidth);
            if (this.allocationCheckpoints == null) {
                return max;
            }
            int i = 1;
            while (true) {
                long[][] jArr = this.allocationCheckpoints;
                if (i >= jArr.length - 1 || jArr[i][0] >= max) {
                    break;
                }
                i++;
            }
            long[][] jArr2 = this.allocationCheckpoints;
            long[] jArr3 = jArr2[i - 1];
            long[] jArr4 = jArr2[i];
            return jArr3[1] + ((((float) (max - jArr3[0])) / ((float) (jArr4[0] - jArr3[0]))) * ((float) (jArr4[1] - jArr3[1])));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/AdaptiveTrackSelection$Factory.class */
    public static class Factory implements TrackSelection.Factory {
        public final float bandwidthFraction;
        @Nullable
        public final BandwidthMeter bandwidthMeter;
        public boolean blockFixedTrackSelectionBandwidth;
        public final float bufferedFractionToLiveEdgeForQualityIncrease;
        public final Clock clock;
        public final int maxDurationForQualityDecreaseMs;
        public final int minDurationForQualityIncreaseMs;
        public final int minDurationToRetainAfterDiscardMs;
        public final long minTimeBetweenBufferReevaluationMs;
        public TrackBitrateEstimator trackBitrateEstimator;

        public Factory() {
            this(10000, 25000, 25000, 0.75f, 0.75f, 2000L, Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, float f) {
            this(i, i2, i3, f, 0.75f, 2000L, Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, float f, float f2, long j, Clock clock) {
            this(null, i, i2, i3, f, f2, j, clock);
        }

        @Deprecated
        public Factory(BandwidthMeter bandwidthMeter) {
            this(bandwidthMeter, 10000, 25000, 25000, 0.75f, 0.75f, 2000L, Clock.DEFAULT);
        }

        @Deprecated
        public Factory(BandwidthMeter bandwidthMeter, int i, int i2, int i3, float f) {
            this(bandwidthMeter, i, i2, i3, f, 0.75f, 2000L, Clock.DEFAULT);
        }

        @Deprecated
        public Factory(@Nullable BandwidthMeter bandwidthMeter, int i, int i2, int i3, float f, float f2, long j, Clock clock) {
            this.bandwidthMeter = bandwidthMeter;
            this.minDurationForQualityIncreaseMs = i;
            this.maxDurationForQualityDecreaseMs = i2;
            this.minDurationToRetainAfterDiscardMs = i3;
            this.bandwidthFraction = f;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f2;
            this.minTimeBetweenBufferReevaluationMs = j;
            this.clock = clock;
            this.trackBitrateEstimator = TrackBitrateEstimator.DEFAULT;
        }

        public AdaptiveTrackSelection createAdaptiveTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int[] iArr) {
            return new AdaptiveTrackSelection(trackGroup, iArr, new DefaultBandwidthProvider(bandwidthMeter, this.bandwidthFraction), this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.bufferedFractionToLiveEdgeForQualityIncrease, this.minTimeBetweenBufferReevaluationMs, this.clock);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
            return TrackSelection$Factory$$CC.createTrackSelection$$dflt$$(this, trackGroup, bandwidthMeter, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long[], long[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.media2.exoplayer.external.trackselection.TrackSelection[] createTrackSelections(androidx.media2.exoplayer.external.trackselection.TrackSelection.Definition[] r10, androidx.media2.exoplayer.external.upstream.BandwidthMeter r11) {
            /*
                Method dump skipped, instructions count: 399
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection.Factory.createTrackSelections(androidx.media2.exoplayer.external.trackselection.TrackSelection$Definition[], androidx.media2.exoplayer.external.upstream.BandwidthMeter):androidx.media2.exoplayer.external.trackselection.TrackSelection[]");
        }

        public final void experimental_enableBlockFixedTrackSelectionBandwidth() {
            this.blockFixedTrackSelectionBandwidth = true;
        }

        public final void experimental_setTrackBitrateEstimator(TrackBitrateEstimator trackBitrateEstimator) {
            this.trackBitrateEstimator = trackBitrateEstimator;
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthProvider bandwidthProvider, long j, long j2, long j3, float f, long j4, Clock clock) {
        super(trackGroup, iArr);
        this.bandwidthProvider = bandwidthProvider;
        this.minDurationForQualityIncreaseUs = j * 1000;
        this.maxDurationForQualityDecreaseUs = j2 * 1000;
        this.minDurationToRetainAfterDiscardUs = j3 * 1000;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f;
        this.minTimeBetweenBufferReevaluationMs = j4;
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = C0463C.TIME_UNSET;
        this.trackBitrateEstimator = TrackBitrateEstimator.DEFAULT;
        int i = this.length;
        this.formats = new Format[i];
        this.formatBitrates = new int[i];
        this.trackBitrates = new int[i];
        for (int i2 = 0; i2 < this.length; i2++) {
            Format format = getFormat(i2);
            Format[] formatArr = this.formats;
            formatArr[i2] = format;
            this.formatBitrates[i2] = formatArr[i2].bitrate;
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, bandwidthMeter, 10000L, 25000L, 25000L, 0.75f, 0.75f, 2000L, Clock.DEFAULT);
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter, long j, long j2, long j3, float f, float f2, long j4, Clock clock) {
        this(trackGroup, iArr, new DefaultBandwidthProvider(bandwidthMeter, f), j, j2, j3, f2, j4, clock);
    }

    public static int countArrayElements(double[][] dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        return i;
    }

    private int determineIdealSelectedIndex(long j, int[] iArr) {
        long allocatedBandwidth = this.bandwidthProvider.getAllocatedBandwidth();
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (j == Long.MIN_VALUE || !isBlacklisted(i2, j)) {
                if (canSelectFormat(getFormat(i2), iArr[i2], this.playbackSpeed, allocatedBandwidth)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double[][]] */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44, types: [double] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [double] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][][] getAllocationCheckpoints(long[][] r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection.getAllocationCheckpoints(long[][]):long[][][]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[][] getLogArrayValues(long[][] r5) {
        /*
            r0 = r5
            int r0 = r0.length
            double[] r0 = new double[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0008:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 >= r1) goto L_0x003b
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            int r2 = r2.length
            double[] r2 = new double[r2]
            r0[r1] = r2
            r0 = 0
            r8 = r0
        L_0x0019:
            r0 = r8
            r1 = r5
            r2 = r7
            r1 = r1[r2]
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0035
            r0 = r6
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            r3 = r8
            r2 = r2[r3]
            double r2 = (double) r2
            double r2 = java.lang.Math.log(r2)
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x0019
        L_0x0035:
            int r7 = r7 + 1
            goto L_0x0008
        L_0x003b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection.getLogArrayValues(long[][]):double[][]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[][] getSwitchPoints(double[][] r9) {
        /*
            r0 = r9
            int r0 = r0.length
            double[] r0 = new double[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r11
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0084
            r0 = r10
            r1 = r11
            r2 = r9
            r3 = r11
            r2 = r2[r3]
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            double[] r2 = new double[r2]
            r0[r1] = r2
            r0 = r10
            r1 = r11
            r0 = r0[r1]
            int r0 = r0.length
            if (r0 != 0) goto L_0x0023
            goto L_0x007e
        L_0x0023:
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = r9
            r2 = r11
            r1 = r1[r2]
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r12 = r0
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = 0
            r16 = r0
        L_0x0038:
            r0 = r16
            r1 = r9
            r2 = r11
            r1 = r1[r2]
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x007e
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = r16
            r0 = r0[r1]
            r17 = r0
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r19 = r0
            r0 = r16
            r1 = 1
            int r0 = r0 + r1
            r20 = r0
            r0 = r19
            r1 = r20
            r0 = r0[r1]
            r21 = r0
            r0 = r10
            r1 = r11
            r0 = r0[r1]
            r1 = r16
            r2 = r17
            r3 = r21
            double r2 = r2 + r3
            r3 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            double r2 = r2 * r3
            r3 = r9
            r4 = r11
            r3 = r3[r4]
            r4 = 0
            r3 = r3[r4]
            double r2 = r2 - r3
            r3 = r12
            r4 = r14
            double r3 = r3 - r4
            double r2 = r2 / r3
            r0[r1] = r2
            r0 = r20
            r16 = r0
            goto L_0x0038
        L_0x007e:
            int r11 = r11 + 1
            goto L_0x0008
        L_0x0084:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection.getSwitchPoints(double[][]):double[][]");
    }

    private long minDurationForQualityIncreaseUs(long j) {
        return (j > C0463C.TIME_UNSET ? 1 : (j == C0463C.TIME_UNSET ? 0 : -1)) != 0 && (j > this.minDurationForQualityIncreaseUs ? 1 : (j == this.minDurationForQualityIncreaseUs ? 0 : -1)) <= 0 ? ((float) j) * this.bufferedFractionToLiveEdgeForQualityIncrease : this.minDurationForQualityIncreaseUs;
    }

    public static void setCheckpointValues(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        long j = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            j += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = j;
        }
    }

    public boolean canSelectFormat(Format format, int i, float f, long j) {
        return ((long) Math.round(((float) i) * f)) <= j;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = C0463C.TIME_UNSET;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        int i;
        int i2;
        long elapsedRealtime = this.clock.elapsedRealtime();
        if (!shouldEvaluateQueueSize(elapsedRealtime)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = elapsedRealtime;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(((MediaChunk) list.get(size - 1)).startTimeUs - j, this.playbackSpeed);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration < minDurationToRetainAfterDiscardUs) {
            return size;
        }
        Format format = getFormat(determineIdealSelectedIndex(elapsedRealtime, this.formatBitrates));
        for (int i3 = 0; i3 < size; i3++) {
            MediaChunk mediaChunk = (MediaChunk) list.get(i3);
            Format format2 = mediaChunk.trackFormat;
            if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j, this.playbackSpeed) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i = format2.height) != -1 && i < 720 && (i2 = format2.width) != -1 && i2 < 1280 && i < format.height) {
                return i3;
            }
        }
        return size;
    }

    public void experimental_setBandwidthAllocationCheckpoints(long[][] jArr) {
        ((DefaultBandwidthProvider) this.bandwidthProvider).experimental_setBandwidthAllocationCheckpoints(jArr);
    }

    public void experimental_setNonAllocatableBandwidth(long j) {
        ((DefaultBandwidthProvider) this.bandwidthProvider).experimental_setNonAllocatableBandwidth(j);
    }

    public void experimental_setTrackBitrateEstimator(TrackBitrateEstimator trackBitrateEstimator) {
        this.trackBitrateEstimator = trackBitrateEstimator;
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void onPlaybackSpeed(float f) {
        this.playbackSpeed = f;
    }

    public boolean shouldEvaluateQueueSize(long j) {
        long j2 = this.lastBufferEvaluationMs;
        return j2 == C0463C.TIME_UNSET || j - j2 >= this.minTimeBetweenBufferReevaluationMs;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long elapsedRealtime = this.clock.elapsedRealtime();
        this.trackBitrateEstimator.getBitrates(this.formats, list, mediaChunkIteratorArr, this.trackBitrates);
        if (this.reason == 0) {
            this.reason = 1;
            this.selectedIndex = determineIdealSelectedIndex(elapsedRealtime, this.trackBitrates);
            return;
        }
        int i = this.selectedIndex;
        this.selectedIndex = determineIdealSelectedIndex(elapsedRealtime, this.trackBitrates);
        if (this.selectedIndex != i) {
            if (!isBlacklisted(i, elapsedRealtime)) {
                Format format = getFormat(i);
                Format format2 = getFormat(this.selectedIndex);
                if (format2.bitrate > format.bitrate && j2 < minDurationForQualityIncreaseUs(j3)) {
                    this.selectedIndex = i;
                } else if (format2.bitrate < format.bitrate && j2 >= this.maxDurationForQualityDecreaseUs) {
                    this.selectedIndex = i;
                }
            }
            if (this.selectedIndex != i) {
                this.reason = 3;
            }
        }
    }
}
