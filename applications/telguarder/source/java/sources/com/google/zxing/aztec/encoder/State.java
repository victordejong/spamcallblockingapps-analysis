package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/aztec/encoder/State.class */
public final class State {
    static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final Token token;

    private State(Token token, int i, int i2, int i3) {
        this.token = token;
        this.mode = i;
        this.binaryShiftByteCount = i2;
        this.bitCount = i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r0 == 2) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.aztec.encoder.State addBinaryShiftChar(int r9) {
        /*
            r8 = this;
            r0 = r8
            com.google.zxing.aztec.encoder.Token r0 = r0.token
            r10 = r0
            r0 = r8
            int r0 = r0.mode
            r11 = r0
            r0 = r8
            int r0 = r0.bitCount
            r12 = r0
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L24
            r0 = r10
            r13 = r0
            r0 = r11
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r11
            r1 = 2
            if (r0 != r1) goto L4b
        L24:
            int[][] r0 = com.google.zxing.aztec.encoder.HighLevelEncoder.LATCH_TABLE
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            r1 = 16
            int r0 = r0 >> r1
            r15 = r0
            r0 = r10
            r1 = 65535(0xffff, float:9.1834E-41)
            r2 = r14
            r1 = r1 & r2
            r2 = r15
            com.google.zxing.aztec.encoder.Token r0 = r0.add(r1, r2)
            r13 = r0
            r0 = r12
            r1 = r15
            int r0 = r0 + r1
            r15 = r0
            r0 = 0
            r14 = r0
        L4b:
            r0 = r8
            int r0 = r0.binaryShiftByteCount
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L75
            r0 = r12
            r1 = 31
            if (r0 != r1) goto L60
            goto L75
        L60:
            r0 = r12
            r1 = 62
            if (r0 != r1) goto L6e
            r0 = 9
            r12 = r0
            goto L79
        L6e:
            r0 = 8
            r12 = r0
            goto L79
        L75:
            r0 = 18
            r12 = r0
        L79:
            com.google.zxing.aztec.encoder.State r0 = new com.google.zxing.aztec.encoder.State
            r1 = r0
            r2 = r13
            r3 = r14
            r4 = r8
            int r4 = r4.binaryShiftByteCount
            r5 = 1
            int r4 = r4 + r5
            r5 = r15
            r6 = r12
            int r5 = r5 + r6
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r10
            r13 = r0
            r0 = r10
            int r0 = r0.binaryShiftByteCount
            r1 = 2078(0x81e, float:2.912E-42)
            if (r0 != r1) goto La6
            r0 = r10
            r1 = r9
            r2 = 1
            int r1 = r1 + r2
            com.google.zxing.aztec.encoder.State r0 = r0.endBinaryShift(r1)
            r13 = r0
        La6:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.State.addBinaryShiftChar(int):com.google.zxing.aztec.encoder.State");
    }

    public State endBinaryShift(int i) {
        int i2 = this.binaryShiftByteCount;
        return i2 == 0 ? this : new State(this.token.addBinaryShift(i - i2, i2), this.mode, 0, this.bitCount);
    }

    public int getBinaryShiftByteCount() {
        return this.binaryShiftByteCount;
    }

    public int getBitCount() {
        return this.bitCount;
    }

    public int getMode() {
        return this.mode;
    }

    Token getToken() {
        return this.token;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (r0 > r0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isBetterThanOrEqualTo(com.google.zxing.aztec.encoder.State r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.bitCount
            int[][] r1 = com.google.zxing.aztec.encoder.HighLevelEncoder.LATCH_TABLE
            r2 = r4
            int r2 = r2.mode
            r1 = r1[r2]
            r2 = r5
            int r2 = r2.mode
            r1 = r1[r2]
            r2 = 16
            int r1 = r1 >> r2
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            int r0 = r0.binaryShiftByteCount
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto L3c
            r0 = r4
            int r0 = r0.binaryShiftByteCount
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L36
            r0 = r6
            r8 = r0
            r0 = r9
            r1 = r7
            if (r0 <= r1) goto L3c
        L36:
            r0 = r6
            r1 = 10
            int r0 = r0 + r1
            r8 = r0
        L3c:
            r0 = r8
            r1 = r5
            int r1 = r1.bitCount
            if (r0 > r1) goto L47
            r0 = 1
            return r0
        L47:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.State.isBetterThanOrEqualTo(com.google.zxing.aztec.encoder.State):boolean");
    }

    public State latchAndAppend(int i, int i2) {
        int i3 = this.bitCount;
        Token token = this.token;
        int i4 = i3;
        Token token2 = token;
        if (i != this.mode) {
            int i5 = HighLevelEncoder.LATCH_TABLE[this.mode][i];
            int i6 = i5 >> 16;
            token2 = token.add(65535 & i5, i6);
            i4 = i3 + i6;
        }
        int i7 = i == 2 ? 4 : 5;
        return new State(token2.add(i2, i7), i, 0, i4 + i7);
    }

    public State shiftAndAppend(int i, int i2) {
        Token token = this.token;
        int i3 = this.mode == 2 ? 4 : 5;
        return new State(token.add(HighLevelEncoder.SHIFT_TABLE[this.mode][i], i3).add(i2, 5), this.mode, 0, this.bitCount + i3 + 5);
    }

    public BitArray toBitArray(byte[] bArr) {
        LinkedList<Token> linkedList = new LinkedList();
        Token token = endBinaryShift(bArr.length).token;
        while (true) {
            Token token2 = token;
            if (token2 == null) {
                break;
            }
            linkedList.addFirst(token2);
            token = token2.getPrevious();
        }
        BitArray bitArray = new BitArray();
        for (Token token3 : linkedList) {
            token3.appendTo(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
