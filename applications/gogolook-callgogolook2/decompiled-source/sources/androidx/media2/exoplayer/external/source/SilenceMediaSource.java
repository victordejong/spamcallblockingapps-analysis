package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SilenceMediaSource.class */
public final class SilenceMediaSource extends BaseMediaSource {
    public static final int CHANNEL_COUNT = 2;
    public static final int ENCODING = 2;
    public final long durationUs;
    public static final int SAMPLE_RATE_HZ = 44100;
    public static final Format FORMAT = Format.createAudioSampleFormat(null, MimeTypes.AUDIO_RAW, null, -1, -1, 2, SAMPLE_RATE_HZ, 2, null, null, 0, null);
    public static final byte[] SILENCE_SAMPLE = new byte[Util.getPcmFrameSize(2, 2) * 1024];

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceMediaPeriod.class */
    public static final class SilenceMediaPeriod implements MediaPeriod {
        public static final TrackGroupArray TRACKS = new TrackGroupArray(new TrackGroup(SilenceMediaSource.FORMAT));
        public final long durationUs;
        public final ArrayList<SampleStream> sampleStreams = new ArrayList<>();

        public SilenceMediaPeriod(long j) {
            this.durationUs = j;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return false;
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
            return Long.MIN_VALUE;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public List getStreamKeys(List list) {
            List emptyList;
            emptyList = Collections.emptyList();
            return emptyList;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            callback.onPrepared(this);
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public long readDiscontinuity() {
            return C0463C.TIME_UNSET;
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
        }

        @Override // androidx.media2.exoplayer.external.source.MediaPeriod
        public long seekToUs(long j) {
            for (int i = 0; i < this.sampleStreams.size(); i++) {
                ((SilenceSampleStream) this.sampleStreams.get(i)).seekTo(j);
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
                    SilenceSampleStream silenceSampleStream = new SilenceSampleStream(this.durationUs);
                    silenceSampleStream.seekTo(j);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i] = silenceSampleStream;
                    zArr2[i] = true;
                }
            }
            return j;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SilenceMediaSource$SilenceSampleStream.class */
    public static final class SilenceSampleStream implements SampleStream {
        public final long durationBytes;
        public long positionBytes;
        public boolean sentFormat;

        public SilenceSampleStream(long j) {
            this.durationBytes = SilenceMediaSource.getAudioByteCount(j);
            seekTo(0L);
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (!this.sentFormat || z) {
                formatHolder.format = SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j = this.durationBytes - this.positionBytes;
            if (j == 0) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            int min = (int) Math.min(SilenceMediaSource.SILENCE_SAMPLE.length, j);
            decoderInputBuffer.ensureSpaceForWrite(min);
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.data.put(SilenceMediaSource.SILENCE_SAMPLE, 0, min);
            decoderInputBuffer.timeUs = SilenceMediaSource.getAudioPositionUs(this.positionBytes);
            this.positionBytes += min;
            return -4;
        }

        public void seekTo(long j) {
            this.positionBytes = SilenceMediaSource.getAudioByteCount(j);
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int skipData(long j) {
            long j2 = this.positionBytes;
            seekTo(j);
            return (int) ((this.positionBytes - j2) / SilenceMediaSource.SILENCE_SAMPLE.length);
        }
    }

    public SilenceMediaSource(long j) {
        Assertions.checkArgument(j >= 0);
        this.durationUs = j;
    }

    public static long getAudioByteCount(long j) {
        return Util.getPcmFrameSize(2, 2) * ((j * 44100) / 1000000);
    }

    public static long getAudioPositionUs(long j) {
        return ((j / Util.getPcmFrameSize(2, 2)) * 1000000) / 44100;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new SilenceMediaPeriod(this.durationUs);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.durationUs, true, false), null);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
