package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/RopeByteString$RopeInputStream.class */
public class RopeByteString$RopeInputStream extends InputStream {
    private ByteString.LeafByteString currentPiece;
    private int currentPieceIndex;
    private int currentPieceOffsetInRope;
    private int currentPieceSize;
    private int mark;
    private RopeByteString$PieceIterator pieceIterator;
    public final /* synthetic */ RopeByteString this$0;

    public RopeByteString$RopeInputStream(RopeByteString ropeByteString) {
        this.this$0 = ropeByteString;
        initialize();
    }

    private void advanceIfCurrentPieceFullyRead() {
        if (this.currentPiece != null) {
            int i = this.currentPieceIndex;
            int i2 = this.currentPieceSize;
            if (i != i2) {
                return;
            }
            this.currentPieceOffsetInRope += i2;
            this.currentPieceIndex = 0;
            if (!this.pieceIterator.hasNext()) {
                this.currentPiece = null;
                this.currentPieceSize = 0;
                return;
            }
            ByteString.LeafByteString next = this.pieceIterator.next();
            this.currentPiece = next;
            this.currentPieceSize = next.size();
        }
    }

    private int availableInternal() {
        return this.this$0.size() - (this.currentPieceOffsetInRope + this.currentPieceIndex);
    }

    private void initialize() {
        RopeByteString$PieceIterator ropeByteString$PieceIterator = new RopeByteString$PieceIterator(this.this$0);
        this.pieceIterator = ropeByteString$PieceIterator;
        ByteString.LeafByteString next = ropeByteString$PieceIterator.next();
        this.currentPiece = next;
        this.currentPieceSize = next.size();
        this.currentPieceIndex = 0;
        this.currentPieceOffsetInRope = 0;
    }

    private int readSkipInternal(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2;
        while (true) {
            i3 = i4;
            int i5 = i;
            if (i3 <= 0) {
                break;
            }
            advanceIfCurrentPieceFullyRead();
            if (this.currentPiece == null) {
                break;
            }
            int min = Math.min(this.currentPieceSize - this.currentPieceIndex, i3);
            i = i5;
            if (bArr != null) {
                this.currentPiece.copyTo(bArr, this.currentPieceIndex, i5, min);
                i = i5 + min;
            }
            this.currentPieceIndex += min;
            i4 = i3 - min;
        }
        return i2 - i3;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return availableInternal();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.mark = this.currentPieceOffsetInRope + this.currentPieceIndex;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        advanceIfCurrentPieceFullyRead();
        ByteString.LeafByteString leafByteString = this.currentPiece;
        if (leafByteString == null) {
            return -1;
        }
        int i = this.currentPieceIndex;
        this.currentPieceIndex = i + 1;
        return leafByteString.byteAt(i) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (availableInternal() == 0) goto L14;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(byte[] r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r7
            if (r0 < 0) goto L38
            r0 = r8
            if (r0 < 0) goto L38
            r0 = r8
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L38
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = r0.readSkipInternal(r1, r2, r3)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L36
            r0 = r8
            if (r0 > 0) goto L34
            r0 = r9
            r7 = r0
            r0 = r5
            int r0 = r0.availableInternal()
            if (r0 != 0) goto L36
        L34:
            r0 = -1
            r7 = r0
        L36:
            r0 = r7
            return r0
        L38:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.RopeByteString$RopeInputStream.read(byte[], int, int):int");
    }

    @Override // java.io.InputStream
    public void reset() {
        synchronized (this) {
            initialize();
            readSkipInternal(null, 0, this.mark);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream
    public long skip(long j) {
        if (j >= 0) {
            char c = j;
            if (j > 2147483647L) {
                c = 65535;
            }
            return readSkipInternal(null, 0, c);
        }
        throw new IndexOutOfBoundsException();
    }
}
