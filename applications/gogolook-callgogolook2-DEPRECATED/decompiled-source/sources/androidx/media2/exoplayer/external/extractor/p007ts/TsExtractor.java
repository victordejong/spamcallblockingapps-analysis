package androidx.media2.exoplayer.external.extractor.p007ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsExtractor */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsExtractor.class */
public final class TsExtractor implements Extractor {
    public static final long AC3_FORMAT_IDENTIFIER = 1094921523;
    public static final long AC4_FORMAT_IDENTIFIER = 1094921524;
    public static final int BUFFER_SIZE = 9400;
    public static final long E_AC3_FORMAT_IDENTIFIER = 1161904947;
    public static final ExtractorsFactory FACTORY = TsExtractor$$Lambda$0.$instance;
    public static final long HEVC_FORMAT_IDENTIFIER = 1212503619;
    public static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    public static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    public static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    public int bytesSinceLastSync;
    public final SparseIntArray continuityCounters;
    public final TsDurationReader durationReader;
    public boolean hasOutputSeekMap;
    public TsPayloadReader id3Reader;
    public final int mode;
    public ExtractorOutput output;
    public final TsPayloadReader.Factory payloadReaderFactory;
    public int pcrPid;
    public boolean pendingSeekToStart;
    public int remainingPmts;
    public final List<TimestampAdjuster> timestampAdjusters;
    public final SparseBooleanArray trackIds;
    public final SparseBooleanArray trackPids;
    public boolean tracksEnded;
    public TsBinarySearchSeeker tsBinarySearchSeeker;
    public final ParsableByteArray tsPacketBuffer;
    public final SparseArray<TsPayloadReader> tsPayloadReaders;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsExtractor$Mode */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsExtractor$Mode.class */
    public @interface Mode {
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsExtractor$PatReader */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsExtractor$PatReader.class */
    public class PatReader implements SectionPayloadReader {
        public final ParsableBitArray patScratch = new ParsableBitArray(new byte[4]);

        public PatReader() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.readUnsignedByte() == 0) {
                parsableByteArray.skipBytes(7);
                int bytesLeft = parsableByteArray.bytesLeft() / 4;
                for (int i = 0; i < bytesLeft; i++) {
                    parsableByteArray.readBytes(this.patScratch, 4);
                    int readBits = this.patScratch.readBits(16);
                    this.patScratch.skipBits(3);
                    if (readBits == 0) {
                        this.patScratch.skipBits(13);
                    } else {
                        int readBits2 = this.patScratch.readBits(13);
                        TsExtractor.this.tsPayloadReaders.put(readBits2, new SectionReader(new PmtReader(readBits2)));
                        TsExtractor.access$108(TsExtractor.this);
                    }
                }
                if (TsExtractor.this.mode != 2) {
                    TsExtractor.this.tsPayloadReaders.remove(0);
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.ts.TsExtractor$PmtReader */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/TsExtractor$PmtReader.class */
    public class PmtReader implements SectionPayloadReader {
        public static final int TS_PMT_DESC_AC3 = 106;
        public static final int TS_PMT_DESC_DTS = 123;
        public static final int TS_PMT_DESC_DVBSUBS = 89;
        public static final int TS_PMT_DESC_DVB_EXT = 127;
        public static final int TS_PMT_DESC_DVB_EXT_AC4 = 21;
        public static final int TS_PMT_DESC_EAC3 = 122;
        public static final int TS_PMT_DESC_ISO639_LANG = 10;
        public static final int TS_PMT_DESC_REGISTRATION = 5;
        public final int pid;
        public final ParsableBitArray pmtScratch = new ParsableBitArray(new byte[5]);
        public final SparseArray<TsPayloadReader> trackIdToReaderScratch = new SparseArray<>();
        public final SparseIntArray trackIdToPidScratch = new SparseIntArray();

        public PmtReader(int i) {
            this.pid = i;
        }

        private TsPayloadReader.EsInfo readEsInfo(ParsableByteArray parsableByteArray, int i) {
            int position = parsableByteArray.getPosition();
            int i2 = i + position;
            String str = null;
            int i3 = -1;
            ArrayList arrayList = null;
            while (parsableByteArray.getPosition() < i2) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int position2 = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
                if (readUnsignedByte == 5) {
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    if (readUnsignedInt != TsExtractor.AC3_FORMAT_IDENTIFIER) {
                        if (readUnsignedInt != TsExtractor.E_AC3_FORMAT_IDENTIFIER) {
                            if (readUnsignedInt != TsExtractor.AC4_FORMAT_IDENTIFIER) {
                                str = str;
                                arrayList = arrayList;
                                if (readUnsignedInt == TsExtractor.HEVC_FORMAT_IDENTIFIER) {
                                    i3 = 36;
                                    str = str;
                                    arrayList = arrayList;
                                }
                                parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                            }
                            i3 = TsExtractor.TS_STREAM_TYPE_AC4;
                            str = str;
                            arrayList = arrayList;
                            parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                } else {
                    if (readUnsignedByte != 106) {
                        if (readUnsignedByte != 122) {
                            if (readUnsignedByte == 127) {
                                str = str;
                                arrayList = arrayList;
                                if (parsableByteArray.readUnsignedByte() != 21) {
                                }
                                i3 = TsExtractor.TS_STREAM_TYPE_AC4;
                                str = str;
                                arrayList = arrayList;
                            } else if (readUnsignedByte == 123) {
                                i3 = 138;
                                str = str;
                                arrayList = arrayList;
                            } else if (readUnsignedByte == 10) {
                                str = parsableByteArray.readString(3).trim();
                                arrayList = arrayList;
                            } else {
                                str = str;
                                arrayList = arrayList;
                                if (readUnsignedByte == 89) {
                                    arrayList = new ArrayList();
                                    while (parsableByteArray.getPosition() < position2) {
                                        String trim = parsableByteArray.readString(3).trim();
                                        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                                        byte[] bArr = new byte[4];
                                        parsableByteArray.readBytes(bArr, 0, 4);
                                        arrayList.add(new TsPayloadReader.DvbSubtitleInfo(trim, readUnsignedByte2, bArr));
                                    }
                                    i3 = 89;
                                    str = str;
                                }
                            }
                            parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    parsableByteArray.skipBytes(position2 - parsableByteArray.getPosition());
                }
            }
            parsableByteArray.setPosition(i2);
            return new TsPayloadReader.EsInfo(i3, str, arrayList, Arrays.copyOfRange(parsableByteArray.data, position, i2));
        }

        @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.readUnsignedByte() == 2) {
                int i = 0;
                if (TsExtractor.this.mode == 1 || TsExtractor.this.mode == 2 || TsExtractor.this.remainingPmts == 1) {
                    timestampAdjuster = (TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0);
                } else {
                    timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0)).getFirstSampleTimestampUs());
                    TsExtractor.this.timestampAdjusters.add(timestampAdjuster);
                }
                parsableByteArray.skipBytes(2);
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                parsableByteArray.skipBytes(3);
                parsableByteArray.readBytes(this.pmtScratch, 2);
                this.pmtScratch.skipBits(3);
                TsExtractor.this.pcrPid = this.pmtScratch.readBits(13);
                parsableByteArray.readBytes(this.pmtScratch, 2);
                this.pmtScratch.skipBits(4);
                parsableByteArray.skipBytes(this.pmtScratch.readBits(12));
                if (TsExtractor.this.mode == 2 && TsExtractor.this.id3Reader == null) {
                    TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(21, null, null, Util.EMPTY_BYTE_ARRAY);
                    TsExtractor tsExtractor = TsExtractor.this;
                    tsExtractor.id3Reader = tsExtractor.payloadReaderFactory.createPayloadReader(21, esInfo);
                    TsExtractor.this.id3Reader.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, 21, 8192));
                }
                this.trackIdToReaderScratch.clear();
                this.trackIdToPidScratch.clear();
                int bytesLeft = parsableByteArray.bytesLeft();
                while (bytesLeft > 0) {
                    parsableByteArray.readBytes(this.pmtScratch, 5);
                    int readBits = this.pmtScratch.readBits(8);
                    this.pmtScratch.skipBits(3);
                    int readBits2 = this.pmtScratch.readBits(13);
                    this.pmtScratch.skipBits(4);
                    int readBits3 = this.pmtScratch.readBits(12);
                    TsPayloadReader.EsInfo readEsInfo = readEsInfo(parsableByteArray, readBits3);
                    int i2 = readBits;
                    if (readBits == 6) {
                        i2 = readEsInfo.streamType;
                    }
                    bytesLeft -= readBits3 + 5;
                    int i3 = TsExtractor.this.mode == 2 ? i2 : readBits2;
                    if (!TsExtractor.this.trackIds.get(i3)) {
                        TsPayloadReader createPayloadReader = (TsExtractor.this.mode == 2 && i2 == 21) ? TsExtractor.this.id3Reader : TsExtractor.this.payloadReaderFactory.createPayloadReader(i2, readEsInfo);
                        if (TsExtractor.this.mode != 2 || readBits2 < this.trackIdToPidScratch.get(i3, 8192)) {
                            this.trackIdToPidScratch.put(i3, readBits2);
                            this.trackIdToReaderScratch.put(i3, createPayloadReader);
                        }
                    }
                }
                int size = this.trackIdToPidScratch.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = this.trackIdToPidScratch.keyAt(i4);
                    int valueAt = this.trackIdToPidScratch.valueAt(i4);
                    TsExtractor.this.trackIds.put(keyAt, true);
                    TsExtractor.this.trackPids.put(valueAt, true);
                    TsPayloadReader valueAt2 = this.trackIdToReaderScratch.valueAt(i4);
                    if (valueAt2 != null) {
                        if (valueAt2 != TsExtractor.this.id3Reader) {
                            valueAt2.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(readUnsignedShort, keyAt, 8192));
                        }
                        TsExtractor.this.tsPayloadReaders.put(valueAt, valueAt2);
                    }
                }
                if (TsExtractor.this.mode != 2) {
                    TsExtractor.this.tsPayloadReaders.remove(this.pid);
                    TsExtractor tsExtractor2 = TsExtractor.this;
                    if (tsExtractor2.mode != 1) {
                        i = TsExtractor.this.remainingPmts - 1;
                    }
                    tsExtractor2.remainingPmts = i;
                    if (TsExtractor.this.remainingPmts == 0) {
                        TsExtractor.this.output.endTracks();
                        TsExtractor.this.tracksEnded = true;
                    }
                } else if (!TsExtractor.this.tracksEnded) {
                    TsExtractor.this.output.endTracks();
                    TsExtractor.this.remainingPmts = 0;
                    TsExtractor.this.tracksEnded = true;
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public TsExtractor() {
        this(0);
    }

    public TsExtractor(int i) {
        this(1, i);
    }

    public TsExtractor(int i, int i2) {
        this(i, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i2));
    }

    public TsExtractor(int i, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this.payloadReaderFactory = (TsPayloadReader.Factory) Assertions.checkNotNull(factory);
        this.mode = i;
        if (i == 1 || i == 2) {
            this.timestampAdjusters = Collections.singletonList(timestampAdjuster);
        } else {
            this.timestampAdjusters = new ArrayList();
            this.timestampAdjusters.add(timestampAdjuster);
        }
        this.tsPacketBuffer = new ParsableByteArray(new byte[BUFFER_SIZE], 0);
        this.trackIds = new SparseBooleanArray();
        this.trackPids = new SparseBooleanArray();
        this.tsPayloadReaders = new SparseArray<>();
        this.continuityCounters = new SparseIntArray();
        this.durationReader = new TsDurationReader();
        this.pcrPid = -1;
        resetPayloadReaders();
    }

    public static /* synthetic */ int access$108(TsExtractor tsExtractor) {
        int i = tsExtractor.remainingPmts;
        tsExtractor.remainingPmts = i + 1;
        return i;
    }

    private boolean fillBufferWithAtLeastOnePacket(ExtractorInput extractorInput) throws IOException, InterruptedException {
        ParsableByteArray parsableByteArray = this.tsPacketBuffer;
        byte[] bArr = parsableByteArray.data;
        if (BUFFER_SIZE - parsableByteArray.getPosition() < 188) {
            int bytesLeft = this.tsPacketBuffer.bytesLeft();
            if (bytesLeft > 0) {
                System.arraycopy(bArr, this.tsPacketBuffer.getPosition(), bArr, 0, bytesLeft);
            }
            this.tsPacketBuffer.reset(bArr, bytesLeft);
        }
        while (this.tsPacketBuffer.bytesLeft() < 188) {
            int limit = this.tsPacketBuffer.limit();
            int read = extractorInput.read(bArr, limit, BUFFER_SIZE - limit);
            if (read == -1) {
                return false;
            }
            this.tsPacketBuffer.setLimit(limit + read);
        }
        return true;
    }

    private int findEndOfFirstTsPacketInBuffer() throws ParserException {
        int position = this.tsPacketBuffer.getPosition();
        int limit = this.tsPacketBuffer.limit();
        int findSyncBytePosition = TsUtil.findSyncBytePosition(this.tsPacketBuffer.data, position, limit);
        this.tsPacketBuffer.setPosition(findSyncBytePosition);
        int i = findSyncBytePosition + TS_PACKET_SIZE;
        if (i > limit) {
            this.bytesSinceLastSync += findSyncBytePosition - position;
            if (this.mode == 2 && this.bytesSinceLastSync > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i;
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$TsExtractor() {
        return new Extractor[]{new TsExtractor()};
    }

    private void maybeOutputSeekMap(long j) {
        if (!this.hasOutputSeekMap) {
            this.hasOutputSeekMap = true;
            if (this.durationReader.getDurationUs() != C0463C.TIME_UNSET) {
                this.tsBinarySearchSeeker = new TsBinarySearchSeeker(this.durationReader.getPcrTimestampAdjuster(), this.durationReader.getDurationUs(), j, this.pcrPid);
                this.output.seekMap(this.tsBinarySearchSeeker.getSeekMap());
                return;
            }
            this.output.seekMap(new SeekMap.Unseekable(this.durationReader.getDurationUs()));
        }
    }

    private void resetPayloadReaders() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        SparseArray<TsPayloadReader> createInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = createInitialPayloadReaders.size();
        for (int i = 0; i < size; i++) {
            this.tsPayloadReaders.put(createInitialPayloadReaders.keyAt(i), createInitialPayloadReaders.valueAt(i));
        }
        this.tsPayloadReaders.put(0, new SectionReader(new PatReader()));
        this.id3Reader = null;
    }

    private boolean shouldConsumePacketPayload(int i) {
        boolean z = false;
        if (this.mode == 2 || this.tracksEnded || !this.trackPids.get(i, false)) {
            z = true;
        }
        return z;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        TsPayloadReader tsPayloadReader = null;
        if (this.tracksEnded) {
            if (((length == -1 || this.mode == 2) ? false : true) && !this.durationReader.isDurationReadFinished()) {
                return this.durationReader.readDuration(extractorInput, positionHolder, this.pcrPid);
            }
            maybeOutputSeekMap(length);
            if (this.pendingSeekToStart) {
                this.pendingSeekToStart = false;
                seek(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.position = 0L;
                    return 1;
                }
            }
            TsBinarySearchSeeker tsBinarySearchSeeker = this.tsBinarySearchSeeker;
            if (tsBinarySearchSeeker != null && tsBinarySearchSeeker.isSeeking()) {
                return this.tsBinarySearchSeeker.handlePendingSeek(extractorInput, positionHolder, null);
            }
        }
        if (!fillBufferWithAtLeastOnePacket(extractorInput)) {
            return -1;
        }
        int findEndOfFirstTsPacketInBuffer = findEndOfFirstTsPacketInBuffer();
        int limit = this.tsPacketBuffer.limit();
        if (findEndOfFirstTsPacketInBuffer > limit) {
            return 0;
        }
        int readInt = this.tsPacketBuffer.readInt();
        if ((8388608 & readInt) != 0) {
            this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
            return 0;
        }
        int i = ((4194304 & readInt) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & readInt) >> 8;
        boolean z = (readInt & 32) != 0;
        if ((readInt & 16) != 0) {
            tsPayloadReader = this.tsPayloadReaders.get(i2);
        }
        if (tsPayloadReader == null) {
            this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
            return 0;
        }
        if (this.mode != 2) {
            int i3 = readInt & 15;
            int i4 = this.continuityCounters.get(i2, i3 - 1);
            this.continuityCounters.put(i2, i3);
            if (i4 == i3) {
                this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
                return 0;
            } else if (i3 != ((i4 + 1) & 15)) {
                tsPayloadReader.seek();
            }
        }
        int i5 = i;
        if (z) {
            int readUnsignedByte = this.tsPacketBuffer.readUnsignedByte();
            i5 = i | ((this.tsPacketBuffer.readUnsignedByte() & 64) != 0 ? 2 : 0);
            this.tsPacketBuffer.skipBytes(readUnsignedByte - 1);
        }
        boolean z2 = this.tracksEnded;
        if (shouldConsumePacketPayload(i2)) {
            this.tsPacketBuffer.setLimit(findEndOfFirstTsPacketInBuffer);
            tsPayloadReader.consume(this.tsPacketBuffer, i5);
            this.tsPacketBuffer.setLimit(limit);
        }
        if (this.mode != 2 && !z2 && this.tracksEnded && length != -1) {
            this.pendingSeekToStart = true;
        }
        this.tsPacketBuffer.setPosition(findEndOfFirstTsPacketInBuffer);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        TsBinarySearchSeeker tsBinarySearchSeeker;
        Assertions.checkState(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (int i = 0; i < size; i++) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
            if ((timestampAdjuster.getTimestampOffsetUs() == C0463C.TIME_UNSET) || !(timestampAdjuster.getTimestampOffsetUs() == 0 || timestampAdjuster.getFirstSampleTimestampUs() == j2)) {
                timestampAdjuster.reset();
                timestampAdjuster.setFirstSampleTimestampUs(j2);
            }
        }
        if (!(j2 == 0 || (tsBinarySearchSeeker = this.tsBinarySearchSeeker) == null)) {
            tsBinarySearchSeeker.setSeekTargetUs(j2);
        }
        this.tsPacketBuffer.reset();
        this.continuityCounters.clear();
        for (int i2 = 0; i2 < this.tsPayloadReaders.size(); i2++) {
            this.tsPayloadReaders.valueAt(i2).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.tsPacketBuffer.data;
        extractorInput.peekFully(bArr, 0, TsBinarySearchSeeker.MINIMUM_SEARCH_RANGE_BYTES);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * TS_PACKET_SIZE) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                extractorInput.skipFully(i);
                return true;
            }
        }
        return false;
    }
}
