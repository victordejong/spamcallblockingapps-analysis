package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/DeferredMediaPeriod.class */
public final class DeferredMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    public final Allocator allocator;
    @Nullable
    public MediaPeriod.Callback callback;

    /* renamed from: id */
    public final MediaSource.MediaPeriodId f97id;
    @Nullable
    public PrepareErrorListener listener;
    @Nullable
    public MediaPeriod mediaPeriod;
    public final MediaSource mediaSource;
    public boolean notifiedPrepareError;
    public long preparePositionOverrideUs = C0463C.TIME_UNSET;
    public long preparePositionUs;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener.class */
    public interface PrepareErrorListener {
        void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);
    }

    public DeferredMediaPeriod(MediaSource mediaSource, MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        this.f97id = mediaPeriodId;
        this.allocator = allocator;
        this.mediaSource = mediaSource;
        this.preparePositionUs = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getPreparePositionWithOverride(long r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.preparePositionOverrideUs
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x000f
            r0 = r8
            r6 = r0
        L_0x000f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.DeferredMediaPeriod.getPreparePositionWithOverride(long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.continueLoading(j);
    }

    public void createPeriod(MediaSource.MediaPeriodId mediaPeriodId) {
        long preparePositionWithOverride = getPreparePositionWithOverride(this.preparePositionUs);
        this.mediaPeriod = this.mediaSource.createPeriod(mediaPeriodId, this.allocator, preparePositionWithOverride);
        if (this.callback != null) {
            this.mediaPeriod.prepare(this, preparePositionWithOverride);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).discardBuffer(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).getBufferedPositionUs();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).getNextLoadPositionUs();
    }

    public long getPreparePositionUs() {
        return this.preparePositionUs;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public List getStreamKeys(List list) {
        List emptyList;
        emptyList = Collections.emptyList();
        return emptyList;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).getTrackGroups();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        try {
            if (this.mediaPeriod != null) {
                this.mediaPeriod.maybeThrowPrepareError();
            } else {
                this.mediaSource.maybeThrowSourceInfoRefreshError();
            }
        } catch (IOException e) {
            PrepareErrorListener prepareErrorListener = this.listener;
            if (prepareErrorListener == null) {
                throw e;
            } else if (!this.notifiedPrepareError) {
                this.notifiedPrepareError = true;
                prepareErrorListener.onPrepareError(this.f97id, e);
            }
        }
    }

    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.castNonNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.castNonNull(this.callback)).onPrepared(this);
    }

    public void overridePreparePositionUs(long j) {
        this.preparePositionOverrideUs = j;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            mediaPeriod.prepare(this, getPreparePositionWithOverride(this.preparePositionUs));
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long readDiscontinuity() {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).readDiscontinuity();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).reevaluateBuffer(j);
    }

    public void releasePeriod() {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            this.mediaSource.releasePeriod(mediaPeriod);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long seekToUs(long j) {
        return ((MediaPeriod) Util.castNonNull(this.mediaPeriod)).seekToUs(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.media2.exoplayer.external.source.MediaPeriod] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.SampleStream[] r11, boolean[] r12, long r13) {
        /*
            r8 = this;
            r0 = r8
            long r0 = r0.preparePositionOverrideUs
            r15 = r0
            r0 = r15
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0027
            r0 = r13
            r1 = r8
            long r1 = r1.preparePositionUs
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0027
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.preparePositionOverrideUs = r1
            r0 = r15
            r13 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r8
            androidx.media2.exoplayer.external.source.MediaPeriod r0 = r0.mediaPeriod
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.Util.castNonNull(r0)
            androidx.media2.exoplayer.external.source.MediaPeriod r0 = (androidx.media2.exoplayer.external.source.MediaPeriod) r0
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            long r0 = r0.selectTracks(r1, r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.DeferredMediaPeriod.selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[], boolean[], androidx.media2.exoplayer.external.source.SampleStream[], boolean[], long):long");
    }

    public void setPrepareErrorListener(PrepareErrorListener prepareErrorListener) {
        this.listener = prepareErrorListener;
    }
}
