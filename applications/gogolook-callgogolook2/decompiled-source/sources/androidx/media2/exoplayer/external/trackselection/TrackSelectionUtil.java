package androidx.media2.exoplayer.external.trackselection;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkListIterator;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.Arrays;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionUtil.class */
public final class TrackSelectionUtil {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory.class */
    public interface AdaptiveTrackSelectionFactory {
        TrackSelection createAdaptiveTrackSelection(TrackSelection.Definition definition);
    }

    public static TrackSelection[] createTrackSelectionsForDefinitions(TrackSelection.Definition[] definitionArr, AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        TrackSelection[] trackSelectionArr = new TrackSelection[definitionArr.length];
        boolean z = false;
        for (int i = 0; i < definitionArr.length; i++) {
            TrackSelection.Definition definition = definitionArr[i];
            if (definition != null) {
                if (definition.tracks.length <= 1 || z) {
                    trackSelectionArr[i] = new FixedTrackSelection(definition.group, definition.tracks[0], definition.reason, definition.data);
                } else {
                    trackSelectionArr[i] = adaptiveTrackSelectionFactory.createAdaptiveTrackSelection(definition);
                    z = true;
                }
            }
        }
        return trackSelectionArr;
    }

    public static void estimateBitrates(int[] iArr, Format[] formatArr, int[] iArr2, float[] fArr) {
        int i;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == -1 && (i = formatArr[i2].bitrate) != -1) {
                iArr[i2] = (int) (fArr[getClosestBitrateIndex(i, iArr2)] * i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getAverageBitrate(androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator r9, long r10) {
        /*
            r0 = 0
            r12 = r0
            r0 = r12
            r14 = r0
        L_0x0005:
            r0 = r9
            boolean r0 = r0.next()
            if (r0 == 0) goto L_0x005f
            r0 = r9
            androidx.media2.exoplayer.external.upstream.DataSpec r0 = r0.getDataSpec()
            long r0 = r0.length
            r16 = r0
            r0 = r16
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            goto L_0x005f
        L_0x0025:
            r0 = r9
            long r0 = r0.getChunkEndTimeUs()
            r1 = r9
            long r1 = r1.getChunkStartTimeUs()
            long r0 = r0 - r1
            r18 = r0
            r0 = r12
            r1 = r18
            long r0 = r0 + r1
            r20 = r0
            r0 = r20
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0052
            r0 = r14
            r1 = r16
            r2 = r10
            r3 = r12
            long r2 = r2 - r3
            long r1 = r1 * r2
            r2 = r18
            long r1 = r1 / r2
            long r0 = r0 + r1
            r14 = r0
            goto L_0x0061
        L_0x0052:
            r0 = r14
            r1 = r16
            long r0 = r0 + r1
            r14 = r0
            r0 = r20
            r12 = r0
            goto L_0x0005
        L_0x005f:
            r0 = r12
            r10 = r0
        L_0x0061:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006d
            r0 = -1
            r22 = r0
            goto L_0x007c
        L_0x006d:
            r0 = r14
            r1 = 8
            long r0 = r0 * r1
            r1 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 * r1
            r1 = r10
            long r0 = r0 / r1
            int r0 = (int) r0
            r22 = r0
        L_0x007c:
            r0 = r22
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil.getAverageBitrate(androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator, long):int");
    }

    public static int getAverageQueueBitrate(List<? extends MediaChunk> list, long j) {
        if (list.isEmpty()) {
            return -1;
        }
        return getAverageBitrate(new MediaChunkListIterator(getSingleFormatSubQueue(list), true), j);
    }

    @VisibleForTesting
    public static int[] getBitratesUsingFutureInfo(MediaChunkIterator[] mediaChunkIteratorArr, Format[] formatArr, long j, @Nullable int[] iArr) {
        int length = mediaChunkIteratorArr.length;
        Assertions.checkArgument(length == formatArr.length);
        if (length == 0) {
            return new int[0];
        }
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = new int[length];
        }
        if (j == 0) {
            Arrays.fill(iArr2, -1);
            return iArr2;
        }
        int[] iArr3 = new int[length];
        float[] fArr = new float[length];
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < length; i++) {
            int averageBitrate = getAverageBitrate(mediaChunkIteratorArr[i], j);
            if (averageBitrate != -1) {
                int i2 = formatArr[i].bitrate;
                iArr3[i] = i2;
                z = z;
                if (i2 != -1) {
                    fArr[i] = averageBitrate / i2;
                    z2 = true;
                    z = z;
                }
            } else {
                iArr3[i] = -1;
                z = true;
            }
            iArr2[i] = averageBitrate;
        }
        if (z && z2) {
            estimateBitrates(iArr2, formatArr, iArr3, fArr);
        }
        return iArr2;
    }

    public static int[] getBitratesUsingPastAndFutureInfo(Format[] formatArr, List<? extends MediaChunk> list, long j, MediaChunkIterator[] mediaChunkIteratorArr, long j2, boolean z, @Nullable int[] iArr) {
        int[] bitratesUsingFutureInfo = getBitratesUsingFutureInfo(mediaChunkIteratorArr, formatArr, j2, iArr);
        getBitratesUsingPastInfo(list, formatArr, j, bitratesUsingFutureInfo);
        for (int i = 0; i < bitratesUsingFutureInfo.length; i++) {
            int i2 = bitratesUsingFutureInfo[i];
            if (i2 == -1 || (z && formatArr[i].bitrate != -1 && i2 < formatArr[i].bitrate)) {
                bitratesUsingFutureInfo[i] = formatArr[i].bitrate;
            }
        }
        return bitratesUsingFutureInfo;
    }

    @VisibleForTesting
    public static int[] getBitratesUsingPastInfo(List<? extends MediaChunk> list, Format[] formatArr, long j, @Nullable int[] iArr) {
        int averageQueueBitrate;
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = new int[formatArr.length];
            Arrays.fill(iArr2, -1);
        }
        if (!(j == 0 || (averageQueueBitrate = getAverageQueueBitrate(list, j)) == -1)) {
            int i = ((MediaChunk) list.get(list.size() - 1)).trackFormat.bitrate;
            if (i != -1) {
                estimateBitrates(iArr2, formatArr, new int[]{i}, new float[]{averageQueueBitrate / i});
            }
            return iArr2;
        }
        return iArr2;
    }

    public static int getClosestBitrateIndex(int i, int[] iArr) {
        int i2 = -1;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            i2 = i2;
            i3 = i3;
            if (iArr[i4] != -1) {
                int abs = Math.abs(iArr[i4] - i);
                i2 = i2;
                i3 = i3;
                if (abs < i3) {
                    i2 = i4;
                    i3 = abs;
                }
            }
        }
        return i2;
    }

    public static int[] getFormatBitrates(Format[] formatArr, @Nullable int[] iArr) {
        int length = formatArr.length;
        int[] iArr2 = iArr;
        if (iArr == null) {
            iArr2 = new int[length];
        }
        for (int i = 0; i < length; i++) {
            iArr2[i] = formatArr[i].bitrate;
        }
        return iArr2;
    }

    public static List<? extends MediaChunk> getSingleFormatSubQueue(List<? extends MediaChunk> list) {
        Format format = ((MediaChunk) list.get(list.size() - 1)).trackFormat;
        int size = list.size();
        for (int i = size - 2; i >= 0; i--) {
            if (!((MediaChunk) list.get(i)).trackFormat.equals(format)) {
                return list.subList(i + 1, size);
            }
        }
        return list;
    }

    public static DefaultTrackSelector.Parameters updateParametersWithOverride(DefaultTrackSelector.Parameters parameters, int i, TrackGroupArray trackGroupArray, boolean z, @Nullable DefaultTrackSelector.SelectionOverride selectionOverride) {
        DefaultTrackSelector.ParametersBuilder rendererDisabled = parameters.buildUpon().clearSelectionOverrides(i).setRendererDisabled(i, z);
        if (selectionOverride != null) {
            rendererDisabled.setSelectionOverride(i, trackGroupArray, selectionOverride);
        }
        return rendererDisabled.build();
    }
}
