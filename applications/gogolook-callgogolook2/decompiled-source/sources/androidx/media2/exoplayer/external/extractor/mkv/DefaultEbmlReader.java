package androidx.media2.exoplayer.external.extractor.mkv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.ExtractorInput;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader.class */
public final class DefaultEbmlReader implements EbmlReader {
    public static final int ELEMENT_STATE_READ_CONTENT = 2;
    public static final int ELEMENT_STATE_READ_CONTENT_SIZE = 1;
    public static final int ELEMENT_STATE_READ_ID = 0;
    public static final int MAX_ID_BYTES = 4;
    public static final int MAX_INTEGER_ELEMENT_SIZE_BYTES = 8;
    public static final int MAX_LENGTH_BYTES = 8;
    public static final int VALID_FLOAT32_ELEMENT_SIZE_BYTES = 4;
    public static final int VALID_FLOAT64_ELEMENT_SIZE_BYTES = 8;
    public long elementContentSize;
    public int elementId;
    public int elementState;
    public EbmlProcessor processor;
    public final byte[] scratch = new byte[8];
    public final ArrayDeque<MasterElement> masterElementsStack = new ArrayDeque<>();
    public final VarintReader varintReader = new VarintReader();

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$ElementState.class */
    public @interface ElementState {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement.class */
    public static final class MasterElement {
        public final long elementEndPosition;
        public final int elementId;

        public MasterElement(int i, long j) {
            this.elementId = i;
            this.elementEndPosition = j;
        }
    }

    private long maybeResyncToNextLevel1Element(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.resetPeekPosition();
        while (true) {
            extractorInput.peekFully(this.scratch, 0, 4);
            int parseUnsignedVarintLength = VarintReader.parseUnsignedVarintLength(this.scratch[0]);
            if (parseUnsignedVarintLength != -1 && parseUnsignedVarintLength <= 4) {
                int assembleVarint = (int) VarintReader.assembleVarint(this.scratch, parseUnsignedVarintLength, false);
                if (this.processor.isLevel1Element(assembleVarint)) {
                    extractorInput.skipFully(parseUnsignedVarintLength);
                    return assembleVarint;
                }
            }
            extractorInput.skipFully(1);
        }
    }

    private double readFloat(ExtractorInput extractorInput, int i) throws IOException, InterruptedException {
        long readInteger = readInteger(extractorInput, i);
        return i == 4 ? Float.intBitsToFloat((int) readInteger) : Double.longBitsToDouble(readInteger);
    }

    private long readInteger(ExtractorInput extractorInput, int i) throws IOException, InterruptedException {
        extractorInput.readFully(this.scratch, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.scratch[i2] & 255);
        }
        return j;
    }

    private String readString(ExtractorInput extractorInput, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        extractorInput.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.extractor.mkv.EbmlReader
    public void init(EbmlProcessor ebmlProcessor) {
        this.processor = ebmlProcessor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.extractor.mkv.EbmlReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean read(androidx.media2.exoplayer.external.extractor.ExtractorInput r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mkv.DefaultEbmlReader.read(androidx.media2.exoplayer.external.extractor.ExtractorInput):boolean");
    }

    @Override // androidx.media2.exoplayer.external.extractor.mkv.EbmlReader
    public void reset() {
        this.elementState = 0;
        this.masterElementsStack.clear();
        this.varintReader.reset();
    }
}
