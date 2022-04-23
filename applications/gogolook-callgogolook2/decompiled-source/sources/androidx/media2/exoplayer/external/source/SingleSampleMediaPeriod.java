package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.StatsDataSource;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaPeriod.class */
public final class SingleSampleMediaPeriod implements MediaPeriod, Loader.Callback<SourceLoadable> {
    public static final int INITIAL_SAMPLE_SIZE = 1024;
    public final DataSource.Factory dataSourceFactory;
    public final DataSpec dataSpec;
    public final long durationUs;
    public final MediaSourceEventListener.EventDispatcher eventDispatcher;
    public final Format format;
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public boolean loadingFinished;
    public boolean notifiedReadingStarted;
    public byte[] sampleData;
    public int sampleSize;
    public final TrackGroupArray tracks;
    @Nullable
    public final TransferListener transferListener;
    public final boolean treatLoadErrorsAsEndOfStream;
    public final ArrayList<SampleStreamImpl> sampleStreams = new ArrayList<>();
    public final Loader loader = new Loader("Loader:SingleSampleMediaPeriod");

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SampleStreamImpl.class */
    public final class SampleStreamImpl implements SampleStream {
        public static final int STREAM_STATE_END_OF_STREAM = 2;
        public static final int STREAM_STATE_SEND_FORMAT = 0;
        public static final int STREAM_STATE_SEND_SAMPLE = 1;
        public boolean notifiedDownstreamFormat;
        public int streamState;

        public SampleStreamImpl() {
        }

        private void maybeNotifyDownstreamFormat() {
            if (!this.notifiedDownstreamFormat) {
                SingleSampleMediaPeriod.this.eventDispatcher.downstreamFormatChanged(MimeTypes.getTrackType(SingleSampleMediaPeriod.this.format.sampleMimeType), SingleSampleMediaPeriod.this.format, 0, null, 0L);
                this.notifiedDownstreamFormat = true;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public boolean isReady() {
            return SingleSampleMediaPeriod.this.loadingFinished;
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public void maybeThrowError() throws IOException {
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            if (!singleSampleMediaPeriod.treatLoadErrorsAsEndOfStream) {
                singleSampleMediaPeriod.loader.maybeThrowError();
            }
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            maybeNotifyDownstreamFormat();
            int i = this.streamState;
            if (i == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            } else if (z || i == 0) {
                formatHolder.format = SingleSampleMediaPeriod.this.format;
                this.streamState = 1;
                return -5;
            } else {
                SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
                if (!singleSampleMediaPeriod.loadingFinished) {
                    return -3;
                }
                if (singleSampleMediaPeriod.sampleData != null) {
                    decoderInputBuffer.addFlag(1);
                    decoderInputBuffer.timeUs = 0L;
                    if (decoderInputBuffer.isFlagsOnly()) {
                        return -4;
                    }
                    decoderInputBuffer.ensureSpaceForWrite(SingleSampleMediaPeriod.this.sampleSize);
                    ByteBuffer byteBuffer = decoderInputBuffer.data;
                    SingleSampleMediaPeriod singleSampleMediaPeriod2 = SingleSampleMediaPeriod.this;
                    byteBuffer.put(singleSampleMediaPeriod2.sampleData, 0, singleSampleMediaPeriod2.sampleSize);
                } else {
                    decoderInputBuffer.addFlag(4);
                }
                this.streamState = 2;
                return -4;
            }
        }

        public void reset() {
            if (this.streamState == 2) {
                this.streamState = 1;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int skipData(long j) {
            maybeNotifyDownstreamFormat();
            if (j <= 0 || this.streamState == 2) {
                return 0;
            }
            this.streamState = 2;
            return 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaPeriod$SourceLoadable.class */
    public static final class SourceLoadable implements Loader.Loadable {
        public final StatsDataSource dataSource;
        public final DataSpec dataSpec;
        @Nullable
        public byte[] sampleData;

        public SourceLoadable(DataSpec dataSpec, DataSource dataSource) {
            this.dataSpec = dataSpec;
            this.dataSource = new StatsDataSource(dataSource);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
        public void load() throws IOException, InterruptedException {
            this.dataSource.resetBytesRead();
            try {
                this.dataSource.open(this.dataSpec);
                int i = 0;
                while (i != -1) {
                    int bytesRead = (int) this.dataSource.getBytesRead();
                    if (this.sampleData == null) {
                        this.sampleData = new byte[1024];
                    } else if (bytesRead == this.sampleData.length) {
                        this.sampleData = Arrays.copyOf(this.sampleData, this.sampleData.length * 2);
                    }
                    i = this.dataSource.read(this.sampleData, bytesRead, this.sampleData.length - bytesRead);
                }
            } finally {
                Util.closeQuietly(this.dataSource);
            }
        }
    }

    public SingleSampleMediaPeriod(DataSpec dataSpec, DataSource.Factory factory, @Nullable TransferListener transferListener, Format format, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, boolean z) {
        this.dataSpec = dataSpec;
        this.dataSourceFactory = factory;
        this.transferListener = transferListener;
        this.format = format;
        this.durationUs = j;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.treatLoadErrorsAsEndOfStream = z;
        this.tracks = new TrackGroupArray(new TrackGroup(format));
        eventDispatcher.mediaPeriodCreated();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        DataSource createDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        this.eventDispatcher.loadStarted(this.dataSpec, 1, -1, this.format, 0, null, 0L, this.durationUs, this.loader.startLoading(new SourceLoadable(this.dataSpec, createDataSource), this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(1)));
        return true;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.loadingFinished ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return (this.loadingFinished || this.loader.isLoading()) ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public List getStreamKeys(List list) {
        List emptyList;
        emptyList = Collections.emptyList();
        return emptyList;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.tracks;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
    }

    public void onLoadCanceled(SourceLoadable sourceLoadable, long j, long j2, boolean z) {
        this.eventDispatcher.loadCanceled(sourceLoadable.dataSpec, sourceLoadable.dataSource.getLastOpenedUri(), sourceLoadable.dataSource.getLastResponseHeaders(), 1, -1, null, 0, null, 0L, this.durationUs, j, j2, sourceLoadable.dataSource.getBytesRead());
    }

    public void onLoadCompleted(SourceLoadable sourceLoadable, long j, long j2) {
        this.sampleSize = (int) sourceLoadable.dataSource.getBytesRead();
        this.sampleData = (byte[]) Assertions.checkNotNull(sourceLoadable.sampleData);
        this.loadingFinished = true;
        this.eventDispatcher.loadCompleted(sourceLoadable.dataSpec, sourceLoadable.dataSource.getLastOpenedUri(), sourceLoadable.dataSource.getLastResponseHeaders(), 1, -1, this.format, 0, null, 0L, this.durationUs, j, j2, this.sampleSize);
    }

    public Loader.LoadErrorAction onLoadError(SourceLoadable sourceLoadable, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction loadErrorAction;
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(1, j2, iOException, i);
        int i2 = (retryDelayMsFor > C0463C.TIME_UNSET ? 1 : (retryDelayMsFor == C0463C.TIME_UNSET ? 0 : -1));
        boolean z = i2 == 0 || i >= this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(1);
        if (!this.treatLoadErrorsAsEndOfStream || !z) {
            loadErrorAction = i2 != 0 ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        } else {
            this.loadingFinished = true;
            loadErrorAction = Loader.DONT_RETRY;
        }
        this.eventDispatcher.loadError(sourceLoadable.dataSpec, sourceLoadable.dataSource.getLastOpenedUri(), sourceLoadable.dataSource.getLastResponseHeaders(), 1, -1, this.format, 0, null, 0L, this.durationUs, j, j2, sourceLoadable.dataSource.getBytesRead(), iOException, !loadErrorAction.isRetry());
        return loadErrorAction;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        callback.onPrepared(this);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.notifiedReadingStarted) {
            return C0463C.TIME_UNSET;
        }
        this.eventDispatcher.readingStarted();
        this.notifiedReadingStarted = true;
        return C0463C.TIME_UNSET;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    public void release() {
        this.loader.release();
        this.eventDispatcher.mediaPeriodReleased();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long seekToUs(long j) {
        for (int i = 0; i < this.sampleStreams.size(); i++) {
            this.sampleStreams.get(i).reset();
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < trackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (trackSelectionArr[i] == null || !zArr[i])) {
                this.sampleStreams.remove(sampleStreamArr[i]);
                sampleStreamArr[i] = null;
            }
            if (sampleStreamArr[i] == null && trackSelectionArr[i] != null) {
                SampleStreamImpl sampleStreamImpl = new SampleStreamImpl();
                this.sampleStreams.add(sampleStreamImpl);
                sampleStreamArr[i] = sampleStreamImpl;
                zArr2[i] = true;
            }
        }
        return j;
    }
}
