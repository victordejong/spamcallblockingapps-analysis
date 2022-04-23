package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ChunkIndex.class */
public final class ChunkIndex implements SeekMap {
    public final long durationUs;
    public final long[] durationsUs;
    public final int length;
    public final long[] offsets;
    public final int[] sizes;
    public final long[] timesUs;

    public ChunkIndex(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.sizes = iArr;
        this.offsets = jArr;
        this.durationsUs = jArr2;
        this.timesUs = jArr3;
        this.length = iArr.length;
        int i = this.length;
        if (i > 0) {
            this.durationUs = jArr2[i - 1] + jArr3[i - 1];
        } else {
            this.durationUs = 0L;
        }
    }

    public int getChunkIndex(long j) {
        return Util.binarySearchFloor(this.timesUs, j, true, true);
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int chunkIndex = getChunkIndex(j);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[chunkIndex], this.offsets[chunkIndex]);
        if (seekPoint.timeUs >= j || chunkIndex == this.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = chunkIndex + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i], this.offsets[i]));
    }

    @Override // androidx.media2.exoplayer.external.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        int i = this.length;
        String arrays = Arrays.toString(this.sizes);
        String arrays2 = Arrays.toString(this.offsets);
        String arrays3 = Arrays.toString(this.timesUs);
        String arrays4 = Arrays.toString(this.durationsUs);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }
}
