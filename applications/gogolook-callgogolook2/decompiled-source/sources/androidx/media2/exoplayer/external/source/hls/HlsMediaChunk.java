package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.DefaultExtractorInput;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.Id3Decoder;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.hls.HlsExtractorFactory;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.UriUtil;
import androidx.media2.exoplayer.external.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsMediaChunk.class */
public final class HlsMediaChunk extends MediaChunk {
    public static final String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    public static final AtomicInteger uidSource = new AtomicInteger();
    public final int discontinuitySequenceNumber;
    @Nullable
    public final DrmInitData drmInitData;
    public Extractor extractor;
    public final HlsExtractorFactory extractorFactory;
    public final boolean hasGapTag;
    public final Id3Decoder id3Decoder;
    public boolean initDataLoadRequired;
    @Nullable
    public final DataSource initDataSource;
    @Nullable
    public final DataSpec initDataSpec;
    public final boolean initSegmentEncrypted;
    public boolean isExtractorReusable;
    public final boolean isMasterTimestampSource;
    public volatile boolean loadCanceled;
    public boolean loadCompleted;
    public final boolean mediaSegmentEncrypted;
    @Nullable
    public final List<Format> muxedCaptionFormats;
    public int nextLoadPosition;
    public HlsSampleStreamWrapper output;
    public final Uri playlistUrl;
    @Nullable
    public final Extractor previousExtractor;
    public final ParsableByteArray scratchId3Data;
    public final boolean shouldSpliceIn;
    public final TimestampAdjuster timestampAdjuster;
    public final int uid;

    public HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z, DataSource dataSource2, @Nullable DataSpec dataSpec2, boolean z2, Uri uri, @Nullable List<Format> list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, boolean z4, TimestampAdjuster timestampAdjuster, @Nullable DrmInitData drmInitData, @Nullable Extractor extractor, Id3Decoder id3Decoder, ParsableByteArray parsableByteArray, boolean z5) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3);
        this.mediaSegmentEncrypted = z;
        this.discontinuitySequenceNumber = i2;
        this.initDataSource = dataSource2;
        this.initDataSpec = dataSpec2;
        this.initSegmentEncrypted = z2;
        this.playlistUrl = uri;
        this.isMasterTimestampSource = z4;
        this.timestampAdjuster = timestampAdjuster;
        this.hasGapTag = z3;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        this.previousExtractor = extractor;
        this.id3Decoder = id3Decoder;
        this.scratchId3Data = parsableByteArray;
        this.shouldSpliceIn = z5;
        this.initDataLoadRequired = dataSpec2 != null;
        this.uid = uidSource.getAndIncrement();
    }

    public static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new Aes128DataSource(dataSource, bArr, bArr2) : dataSource;
    }

    public static HlsMediaChunk createInstance(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, Format format, long j, HlsMediaPlaylist hlsMediaPlaylist, int i, Uri uri, @Nullable List<Format> list, int i2, @Nullable Object obj, boolean z, TimestampAdjusterProvider timestampAdjusterProvider, @Nullable HlsMediaChunk hlsMediaChunk, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        boolean z2;
        DataSpec dataSpec;
        DataSource dataSource2;
        boolean z3;
        Id3Decoder id3Decoder;
        ParsableByteArray parsableByteArray;
        Extractor extractor;
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i);
        DataSpec dataSpec2 = new DataSpec(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url), segment.byterangeOffset, segment.byterangeLength, null);
        boolean z4 = bArr != null;
        DataSource buildDataSource = buildDataSource(dataSource, bArr, z4 ? getEncryptionIvArray(segment.encryptionIV) : null);
        HlsMediaPlaylist.Segment segment2 = segment.initializationSegment;
        if (segment2 != null) {
            boolean z5 = bArr2 != null;
            byte[] encryptionIvArray = z5 ? getEncryptionIvArray(segment2.encryptionIV) : null;
            dataSpec = new DataSpec(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment2.url), segment2.byterangeOffset, segment2.byterangeLength, null);
            dataSource2 = buildDataSource(dataSource, bArr2, encryptionIvArray);
            z2 = z5;
        } else {
            dataSpec = null;
            z2 = false;
            dataSource2 = null;
        }
        long j2 = j + segment.relativeStartTimeUs;
        long j3 = segment.durationUs;
        int i3 = hlsMediaPlaylist.discontinuitySequence + segment.relativeDiscontinuitySequence;
        if (hlsMediaChunk != null) {
            id3Decoder = hlsMediaChunk.id3Decoder;
            parsableByteArray = hlsMediaChunk.scratchId3Data;
            z3 = !uri.equals(hlsMediaChunk.playlistUrl) || !hlsMediaChunk.loadCompleted;
            extractor = (!hlsMediaChunk.isExtractorReusable || hlsMediaChunk.discontinuitySequenceNumber != i3 || z3) ? null : hlsMediaChunk.extractor;
        } else {
            id3Decoder = new Id3Decoder();
            parsableByteArray = new ParsableByteArray(10);
            extractor = null;
            z3 = false;
        }
        return new HlsMediaChunk(hlsExtractorFactory, buildDataSource, dataSpec2, format, z4, dataSource2, dataSpec, z2, uri, list, i2, obj, j2, j2 + j3, hlsMediaPlaylist.mediaSequence + i, i3, segment.hasGapTag, z, timestampAdjusterProvider.getAdjuster(i3), segment.drmInitData, extractor, id3Decoder, parsableByteArray, z3);
    }

    private void feedDataToExtractor(DataSource dataSource, DataSpec dataSpec, boolean z) throws IOException, InterruptedException {
        DataSpec dataSpec2;
        boolean z2;
        if (z) {
            z2 = this.nextLoadPosition != 0;
            dataSpec2 = dataSpec;
        } else {
            dataSpec2 = dataSpec.subrange(this.nextLoadPosition);
            z2 = false;
        }
        try {
            DefaultExtractorInput prepareExtraction = prepareExtraction(dataSource, dataSpec2);
            int i = 0;
            if (z2) {
                prepareExtraction.skipFully(this.nextLoadPosition);
                i = 0;
            }
            while (i == 0 && !this.loadCanceled) {
                i = this.extractor.read(prepareExtraction, null);
            }
            this.nextLoadPosition = (int) (prepareExtraction.getPosition() - dataSpec.absoluteStreamPosition);
        } finally {
            Util.closeQuietly(dataSource);
        }
    }

    public static byte[] getEncryptionIvArray(String str) {
        String str2 = str;
        if (Util.toLowerInvariant(str).startsWith("0x")) {
            str2 = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str2, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (bArr.length - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    private void loadMedia() throws IOException, InterruptedException {
        if (!this.isMasterTimestampSource) {
            this.timestampAdjuster.waitUntilInitialized();
        } else if (this.timestampAdjuster.getFirstSampleTimestampUs() == Long.MAX_VALUE) {
            this.timestampAdjuster.setFirstSampleTimestampUs(this.startTimeUs);
        }
        feedDataToExtractor(this.dataSource, this.dataSpec, this.mediaSegmentEncrypted);
    }

    private void maybeLoadInitData() throws IOException, InterruptedException {
        if (this.initDataLoadRequired) {
            feedDataToExtractor(this.initDataSource, this.initDataSpec, this.initSegmentEncrypted);
            this.nextLoadPosition = 0;
            this.initDataLoadRequired = false;
        }
    }

    private long peekId3PrivTimestamp(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.resetPeekPosition();
        try {
            extractorInput.peekFully(this.scratchId3Data.data, 0, 10);
            this.scratchId3Data.reset(10);
            if (this.scratchId3Data.readUnsignedInt24() != 4801587) {
                return C0463C.TIME_UNSET;
            }
            this.scratchId3Data.skipBytes(3);
            int readSynchSafeInt = this.scratchId3Data.readSynchSafeInt();
            int i = readSynchSafeInt + 10;
            if (i > this.scratchId3Data.capacity()) {
                ParsableByteArray parsableByteArray = this.scratchId3Data;
                byte[] bArr = parsableByteArray.data;
                parsableByteArray.reset(i);
                System.arraycopy(bArr, 0, this.scratchId3Data.data, 0, 10);
            }
            extractorInput.peekFully(this.scratchId3Data.data, 10, readSynchSafeInt);
            Metadata decode = this.id3Decoder.decode(this.scratchId3Data.data, readSynchSafeInt);
            if (decode == null) {
                return C0463C.TIME_UNSET;
            }
            int length = decode.length();
            for (int i2 = 0; i2 < length; i2++) {
                Metadata.Entry entry = decode.get(i2);
                if (entry instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entry;
                    if (PRIV_TIMESTAMP_FRAME_OWNER.equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.scratchId3Data.data, 0, 8);
                        this.scratchId3Data.reset(8);
                        return this.scratchId3Data.readLong() & 8589934591L;
                    }
                }
            }
            return C0463C.TIME_UNSET;
        } catch (EOFException e) {
            return C0463C.TIME_UNSET;
        }
    }

    private DefaultExtractorInput prepareExtraction(DataSource dataSource, DataSpec dataSpec) throws IOException, InterruptedException {
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.absoluteStreamPosition, dataSource.open(dataSpec));
        if (this.extractor == null) {
            long peekId3PrivTimestamp = peekId3PrivTimestamp(defaultExtractorInput);
            defaultExtractorInput.resetPeekPosition();
            HlsExtractorFactory.Result createExtractor = this.extractorFactory.createExtractor(this.previousExtractor, dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.drmInitData, this.timestampAdjuster, dataSource.getResponseHeaders(), defaultExtractorInput);
            this.extractor = createExtractor.extractor;
            this.isExtractorReusable = createExtractor.isReusable;
            if (createExtractor.isPackedAudioExtractor) {
                this.output.setSampleOffsetUs(peekId3PrivTimestamp != C0463C.TIME_UNSET ? this.timestampAdjuster.adjustTsTimestamp(peekId3PrivTimestamp) : this.startTimeUs);
            }
            this.output.init(this.uid, this.shouldSpliceIn, false);
            this.extractor.init(this.output);
        }
        return defaultExtractorInput;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public void init(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.output = hlsSampleStreamWrapper;
    }

    @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.Loadable
    public void load() throws IOException, InterruptedException {
        Extractor extractor;
        if (this.extractor == null && (extractor = this.previousExtractor) != null) {
            this.extractor = extractor;
            this.isExtractorReusable = true;
            this.initDataLoadRequired = false;
            this.output.init(this.uid, this.shouldSpliceIn, true);
        }
        maybeLoadInitData();
        if (!this.loadCanceled) {
            if (!this.hasGapTag) {
                loadMedia();
            }
            this.loadCompleted = true;
        }
    }
}
