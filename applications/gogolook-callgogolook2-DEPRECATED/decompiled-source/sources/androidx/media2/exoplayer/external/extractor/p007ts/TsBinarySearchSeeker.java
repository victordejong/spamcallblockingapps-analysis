package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.BinarySearchSeeker;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsBinarySearchSeeker */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker.class */
public final class TsBinarySearchSeeker extends BinarySearchSeeker {
    public static final int MINIMUM_SEARCH_RANGE_BYTES = 940;
    public static final long SEEK_TOLERANCE_US = 100000;
    public static final int TIMESTAMP_SEARCH_BYTES = 112800;

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsBinarySearchSeeker$TsPcrSeeker */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker.class */
    public static final class TsPcrSeeker implements BinarySearchSeeker.TimestampSeeker {
        public final ParsableByteArray packetBuffer = new ParsableByteArray();
        public final int pcrPid;
        public final TimestampAdjuster pcrTimestampAdjuster;

        public TsPcrSeeker(int i, TimestampAdjuster timestampAdjuster) {
            this.pcrPid = i;
            this.pcrTimestampAdjuster = timestampAdjuster;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1, types: [long] */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1, types: [long] */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v2, types: [long] */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r24v2, types: [long] */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSearchResult searchForPcrValueInBuffer(androidx.media2.exoplayer.external.util.ParsableByteArray r8, long r9, long r11) {
            /*
                Method dump skipped, instructions count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.TsBinarySearchSeeker.TsPcrSeeker.searchForPcrValueInBuffer(androidx.media2.exoplayer.external.util.ParsableByteArray, long, long):androidx.media2.exoplayer.external.extractor.BinarySearchSeeker$TimestampSearchResult");
        }

        @Override // androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.packetBuffer.reset(Util.EMPTY_BYTE_ARRAY);
        }

        @Override // androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j, BinarySearchSeeker.OutputFrameHolder outputFrameHolder) throws IOException, InterruptedException {
            long position = extractorInput.getPosition();
            int min = (int) Math.min(112800L, extractorInput.getLength() - position);
            this.packetBuffer.reset(min);
            extractorInput.peekFully(this.packetBuffer.data, 0, min);
            return searchForPcrValueInBuffer(this.packetBuffer, j, position);
        }
    }

    public TsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j, long j2, int i) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new TsPcrSeeker(i, timestampAdjuster), j, 0L, j + 1, 0L, j2, 188L, MINIMUM_SEARCH_RANGE_BYTES);
    }
}
