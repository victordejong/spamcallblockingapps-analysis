package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.DefaultExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.ProgressiveMediaPeriod;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ProgressiveMediaSource.class */
public final class ProgressiveMediaSource extends BaseMediaSource implements ProgressiveMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    public final int continueLoadingCheckIntervalBytes;
    @Nullable
    public final String customCacheKey;
    public final DataSource.Factory dataSourceFactory;
    public final ExtractorsFactory extractorsFactory;
    public final LoadErrorHandlingPolicy loadableLoadErrorHandlingPolicy;
    @Nullable
    public final Object tag;
    public long timelineDurationUs = C0463C.TIME_UNSET;
    public boolean timelineIsSeekable;
    @Nullable
    public TransferListener transferListener;
    public final Uri uri;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ProgressiveMediaSource$Factory.class */
    public static final class Factory implements MediaSourceFactory {
        public int continueLoadingCheckIntervalBytes;
        @Nullable
        public String customCacheKey;
        public final DataSource.Factory dataSourceFactory;
        public ExtractorsFactory extractorsFactory;
        public boolean isCreateCalled;
        public LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        @Nullable
        public Object tag;

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        public Factory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
            this.dataSourceFactory = factory;
            this.extractorsFactory = extractorsFactory;
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.continueLoadingCheckIntervalBytes = 1048576;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSourceFactory
        public ProgressiveMediaSource createMediaSource(Uri uri) {
            this.isCreateCalled = true;
            return new ProgressiveMediaSource(uri, this.dataSourceFactory, this.extractorsFactory, this.loadErrorHandlingPolicy, this.customCacheKey, this.continueLoadingCheckIntervalBytes, this.tag);
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{3};
        }

        public Factory setContinueLoadingCheckIntervalBytes(int i) {
            Assertions.checkState(!this.isCreateCalled);
            this.continueLoadingCheckIntervalBytes = i;
            return this;
        }

        public Factory setCustomCacheKey(String str) {
            Assertions.checkState(!this.isCreateCalled);
            this.customCacheKey = str;
            return this;
        }

        @Deprecated
        public Factory setExtractorsFactory(ExtractorsFactory extractorsFactory) {
            Assertions.checkState(!this.isCreateCalled);
            this.extractorsFactory = extractorsFactory;
            return this;
        }

        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            Assertions.checkState(!this.isCreateCalled);
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaSourceFactory
        public MediaSourceFactory setStreamKeys(List list) {
            return MediaSourceFactory$$CC.setStreamKeys$$dflt$$(this, list);
        }

        public Factory setTag(Object obj) {
            Assertions.checkState(!this.isCreateCalled);
            this.tag = obj;
            return this;
        }
    }

    public ProgressiveMediaSource(Uri uri, DataSource.Factory factory, ExtractorsFactory extractorsFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, @Nullable String str, int i, @Nullable Object obj) {
        this.uri = uri;
        this.dataSourceFactory = factory;
        this.extractorsFactory = extractorsFactory;
        this.loadableLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i;
        this.tag = obj;
    }

    private void notifySourceInfoRefreshed(long j, boolean z) {
        this.timelineDurationUs = j;
        this.timelineIsSeekable = z;
        refreshSourceInfo(new SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable, false, this.tag), null);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource createDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        return new ProgressiveMediaPeriod(this.uri, createDataSource, this.extractorsFactory.createExtractors(), this.loadableLoadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this, allocator, this.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource, androidx.media2.exoplayer.external.source.MediaSource
    @Nullable
    public Object getTag() {
        return this.tag;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.media2.exoplayer.external.source.ProgressiveMediaSource] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.ProgressiveMediaPeriod.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSourceInfoRefreshed(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r5
            long r0 = r0.timelineDurationUs
            r9 = r0
        L_0x0011:
            r0 = r5
            long r0 = r0.timelineDurationUs
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            r0 = r5
            boolean r0 = r0.timelineIsSeekable
            r1 = r8
            if (r0 != r1) goto L_0x0024
            return
        L_0x0024:
            r0 = r5
            r1 = r9
            r2 = r8
            r0.notifySourceInfoRefreshed(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ProgressiveMediaSource.onSourceInfoRefreshed(long, boolean):void");
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.transferListener = transferListener;
        notifySourceInfoRefreshed(this.timelineDurationUs, this.timelineIsSeekable);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ProgressiveMediaPeriod) mediaPeriod).release();
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
