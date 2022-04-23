package androidx.media2.exoplayer.external.source.chunk;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/chunk/SingleSampleMediaChunk.class */
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    public boolean loadCompleted;
    public long nextLoadPosition;
    public final Format sampleFormat;
    public final int trackType;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3, int i2, Format format2) {
        super(dataSource, dataSpec, format, i, obj, j, j2, C0463C.TIME_UNSET, C0463C.TIME_UNSET, j3);
        this.trackType = i2;
        this.sampleFormat = format2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load() throws java.io.IOException, java.lang.InterruptedException {
        /*
            r8 = this;
            r0 = r8
            androidx.media2.exoplayer.external.upstream.DataSpec r0 = r0.dataSpec
            r1 = r8
            long r1 = r1.nextLoadPosition
            androidx.media2.exoplayer.external.upstream.DataSpec r0 = r0.subrange(r1)
            r9 = r0
            r0 = r8
            androidx.media2.exoplayer.external.upstream.StatsDataSource r0 = r0.dataSource     // Catch: all -> 0x00aa
            r1 = r9
            long r0 = r0.open(r1)     // Catch: all -> 0x00aa
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0028
            r0 = r10
            r1 = r8
            long r1 = r1.nextLoadPosition     // Catch: all -> 0x00aa
            long r0 = r0 + r1
            r12 = r0
        L_0x0028:
            androidx.media2.exoplayer.external.extractor.DefaultExtractorInput r0 = new androidx.media2.exoplayer.external.extractor.DefaultExtractorInput     // Catch: all -> 0x00aa, all -> 0x00aa
            r9 = r0
            r0 = r9
            r1 = r8
            androidx.media2.exoplayer.external.upstream.StatsDataSource r1 = r1.dataSource     // Catch: all -> 0x00aa
            r2 = r8
            long r2 = r2.nextLoadPosition     // Catch: all -> 0x00aa
            r3 = r12
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x00aa
            r0 = r8
            androidx.media2.exoplayer.external.source.chunk.BaseMediaChunkOutput r0 = r0.getOutput()     // Catch: all -> 0x00aa
            r14 = r0
            r0 = r14
            r1 = 0
            r0.setSampleOffsetUs(r1)     // Catch: all -> 0x00aa
            r0 = r8
            int r0 = r0.trackType     // Catch: all -> 0x00aa
            r15 = r0
            r0 = 0
            r16 = r0
            r0 = r14
            r1 = 0
            r2 = r15
            androidx.media2.exoplayer.external.extractor.TrackOutput r0 = r0.track(r1, r2)     // Catch: all -> 0x00aa
            r14 = r0
            r0 = r14
            r1 = r8
            androidx.media2.exoplayer.external.Format r1 = r1.sampleFormat     // Catch: all -> 0x00aa
            r0.format(r1)     // Catch: all -> 0x00aa
        L_0x0064:
            r0 = r16
            r1 = -1
            if (r0 == r1) goto L_0x0086
            r0 = r8
            r1 = r8
            long r1 = r1.nextLoadPosition     // Catch: all -> 0x00aa
            r2 = r16
            long r2 = (long) r2     // Catch: all -> 0x00aa
            long r1 = r1 + r2
            r0.nextLoadPosition = r1     // Catch: all -> 0x00aa
            r0 = r14
            r1 = r9
            r2 = 2147483647(0x7fffffff, float:NaN)
            r3 = 1
            int r0 = r0.sampleData(r1, r2, r3)     // Catch: all -> 0x00aa
            r16 = r0
            goto L_0x0064
        L_0x0086:
            r0 = r8
            long r0 = r0.nextLoadPosition     // Catch: all -> 0x00aa
            int r0 = (int) r0     // Catch: all -> 0x00aa
            r16 = r0
            r0 = r14
            r1 = r8
            long r1 = r1.startTimeUs     // Catch: all -> 0x00aa
            r2 = 1
            r3 = r16
            r4 = 0
            r5 = 0
            r0.sampleMetadata(r1, r2, r3, r4, r5)     // Catch: all -> 0x00aa
            r0 = r8
            androidx.media2.exoplayer.external.upstream.StatsDataSource r0 = r0.dataSource
            androidx.media2.exoplayer.external.util.Util.closeQuietly(r0)
            r0 = r8
            r1 = 1
            r0.loadCompleted = r1
            return
        L_0x00aa:
            r9 = move-exception
            r0 = r8
            androidx.media2.exoplayer.external.upstream.StatsDataSource r0 = r0.dataSource
            androidx.media2.exoplayer.external.util.Util.closeQuietly(r0)
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.chunk.SingleSampleMediaChunk.load():void");
    }
}
