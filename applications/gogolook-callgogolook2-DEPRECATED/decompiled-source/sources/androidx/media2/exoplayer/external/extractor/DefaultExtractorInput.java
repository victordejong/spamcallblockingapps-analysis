package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/DefaultExtractorInput.class */
public final class DefaultExtractorInput implements ExtractorInput {
    public static final int PEEK_MAX_FREE_SPACE = 524288;
    public static final int PEEK_MIN_FREE_SPACE_AFTER_RESIZE = 65536;
    public static final int SCRATCH_SPACE_SIZE = 4096;
    public final DataSource dataSource;
    public int peekBufferLength;
    public int peekBufferPosition;
    public long position;
    public final long streamLength;
    public byte[] peekBuffer = new byte[65536];
    public final byte[] scratchSpace = new byte[4096];

    public DefaultExtractorInput(DataSource dataSource, long j, long j2) {
        this.dataSource = dataSource;
        this.position = j;
        this.streamLength = j2;
    }

    private void commitBytesRead(int i) {
        if (i != -1) {
            this.position += i;
        }
    }

    private void ensureSpaceForPeek(int i) {
        int i2 = this.peekBufferPosition + i;
        byte[] bArr = this.peekBuffer;
        if (i2 > bArr.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Util.constrainValue(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int readFromDataSource(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.dataSource.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    private int readFromPeekBuffer(byte[] bArr, int i, int i2) {
        int i3 = this.peekBufferLength;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.peekBuffer, 0, bArr, i, min);
        updatePeekBuffer(min);
        return min;
    }

    private int skipFromPeekBuffer(int i) {
        int min = Math.min(this.peekBufferLength, i);
        updatePeekBuffer(min);
        return min;
    }

    private void updatePeekBuffer(int i) {
        this.peekBufferLength -= i;
        this.peekBufferPosition = 0;
        byte[] bArr = this.peekBuffer;
        int i2 = this.peekBufferLength;
        byte[] bArr2 = bArr;
        if (i2 < bArr.length - 524288) {
            bArr2 = new byte[i2 + 65536];
        }
        System.arraycopy(this.peekBuffer, i, bArr2, 0, this.peekBufferLength);
        this.peekBuffer = bArr2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public void advancePeekPosition(int i) throws IOException, InterruptedException {
        advancePeekPosition(i, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public boolean advancePeekPosition(int i, boolean z) throws IOException, InterruptedException {
        ensureSpaceForPeek(i);
        int i2 = this.peekBufferLength - this.peekBufferPosition;
        while (i2 < i) {
            i2 = readFromDataSource(this.peekBuffer, this.peekBufferPosition, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.peekBufferLength = this.peekBufferPosition + i2;
        }
        this.peekBufferPosition += i;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.position + this.peekBufferPosition;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        peekFully(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!advancePeekPosition(i2, z)) {
            return false;
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition - i2, bArr, i, i2);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int readFromPeekBuffer = readFromPeekBuffer(bArr, i, i2);
        int i3 = readFromPeekBuffer;
        if (readFromPeekBuffer == 0) {
            i3 = readFromDataSource(bArr, i, i2, 0, true);
        }
        commitBytesRead(i3);
        return i3;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        readFully(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int readFromPeekBuffer = readFromPeekBuffer(bArr, i, i2);
        while (readFromPeekBuffer < i2 && readFromPeekBuffer != -1) {
            readFromPeekBuffer = readFromDataSource(bArr, i, i2, readFromPeekBuffer, z);
        }
        commitBytesRead(readFromPeekBuffer);
        return readFromPeekBuffer != -1;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public <E extends Throwable> void setRetryPosition(long j, E e) throws Throwable {
        Assertions.checkArgument(j >= 0);
        this.position = j;
        throw e;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public int skip(int i) throws IOException, InterruptedException {
        int skipFromPeekBuffer = skipFromPeekBuffer(i);
        int i2 = skipFromPeekBuffer;
        if (skipFromPeekBuffer == 0) {
            byte[] bArr = this.scratchSpace;
            i2 = readFromDataSource(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        commitBytesRead(i2);
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public void skipFully(int i) throws IOException, InterruptedException {
        skipFully(i, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorInput
    public boolean skipFully(int i, boolean z) throws IOException, InterruptedException {
        int skipFromPeekBuffer = skipFromPeekBuffer(i);
        while (skipFromPeekBuffer < i && skipFromPeekBuffer != -1) {
            skipFromPeekBuffer = readFromDataSource(this.scratchSpace, -skipFromPeekBuffer, Math.min(i, this.scratchSpace.length + skipFromPeekBuffer), skipFromPeekBuffer, z);
        }
        commitBytesRead(skipFromPeekBuffer);
        return skipFromPeekBuffer != -1;
    }
}
