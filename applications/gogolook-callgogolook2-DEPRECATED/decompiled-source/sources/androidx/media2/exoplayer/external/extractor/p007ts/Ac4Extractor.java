package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.Extractor;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.ExtractorsFactory;
import androidx.media2.exoplayer.external.extractor.PositionHolder;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.Ac4Extractor */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/Ac4Extractor.class */
public final class Ac4Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = Ac4Extractor$$Lambda$0.$instance;
    public static final int FRAME_HEADER_SIZE = 7;
    public static final int ID3_TAG = 4801587;
    public static final int MAX_SNIFF_BYTES = 8192;
    public static final int READ_BUFFER_SIZE = 16384;
    public final long firstSampleTimestampUs;
    public final Ac4Reader reader;
    public final ParsableByteArray sampleData;
    public boolean startedPacket;

    public Ac4Extractor() {
        this(0L);
    }

    public Ac4Extractor(long j) {
        this.firstSampleTimestampUs = j;
        this.reader = new Ac4Reader();
        this.sampleData = new ParsableByteArray(16384);
    }

    public static final /* synthetic */ Extractor[] lambda$static$0$Ac4Extractor() {
        return new Extractor[]{new Ac4Extractor()};
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.reader.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(C0463C.TIME_UNSET));
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        int read = extractorInput.read(this.sampleData.data, 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.sampleData.setPosition(0);
        this.sampleData.setLimit(read);
        if (!this.startedPacket) {
            this.reader.packetStarted(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.sampleData);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    public void seek(long j, long j2) {
        this.startedPacket = false;
        this.reader.seek();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0060, code lost:
        r6.resetPeekPosition();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0070, code lost:
        if ((r9 - r8) < 8192) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0073, code lost:
        return false;
     */
    @Override // androidx.media2.exoplayer.external.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            androidx.media2.exoplayer.external.util.ParsableByteArray r0 = new androidx.media2.exoplayer.external.util.ParsableByteArray
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.data
            r2 = 0
            r3 = 10
            r0.peekFully(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.setPosition(r1)
            r0 = r7
            int r0 = r0.readUnsignedInt24()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto L_0x00ac
            r0 = r6
            r0.resetPeekPosition()
            r0 = r6
            r1 = r8
            r0.advancePeekPosition(r1)
            r0 = r8
            r9 = r0
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.data
            r2 = 0
            r3 = 7
            r0.peekFully(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.setPosition(r1)
            r0 = r7
            int r0 = r0.readUnsignedShort()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r6
            r0.resetPeekPosition()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0075
            r0 = 0
            return r0
        L_0x0075:
            r0 = r6
            r1 = r9
            r0.advancePeekPosition(r1)
            goto L_0x0037
        L_0x0080:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x008b
            r0 = 1
            return r0
        L_0x008b:
            r0 = r7
            byte[] r0 = r0.data
            r1 = r11
            int r0 = androidx.media2.exoplayer.external.audio.Ac4Util.parseAc4SyncframeSize(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x009e
            r0 = 0
            return r0
        L_0x009e:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.advancePeekPosition(r1)
            goto L_0x003a
        L_0x00ac:
            r0 = r7
            r1 = 3
            r0.skipBytes(r1)
            r0 = r7
            int r0 = r0.readSynchSafeInt()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.advancePeekPosition(r1)
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p007ts.Ac4Extractor.sniff(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }
}
