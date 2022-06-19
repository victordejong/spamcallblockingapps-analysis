package com.google.zxing.qrcode.decoder;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/decoder/FormatInformation.class */
public final class FormatInformation {
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private static final int[][] FORMAT_INFO_DECODE_LOOKUP = {new int[]{FORMAT_INFO_MASK_QR, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    private FormatInformation(int i) {
        this.errorCorrectionLevel = ErrorCorrectionLevel.forBits((i >> 3) & 3);
        this.dataMask = (byte) (i & 7);
    }

    public static FormatInformation decodeFormatInformation(int i, int i2) {
        FormatInformation doDecodeFormatInformation = doDecodeFormatInformation(i, i2);
        return doDecodeFormatInformation != null ? doDecodeFormatInformation : doDecodeFormatInformation(i ^ FORMAT_INFO_MASK_QR, i2 ^ FORMAT_INFO_MASK_QR);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0092, code lost:
        return new com.google.zxing.qrcode.decoder.FormatInformation(r0[1]);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.zxing.qrcode.decoder.FormatInformation doDecodeFormatInformation(int r5, int r6) {
        /*
            int[][] r0 = com.google.zxing.qrcode.decoder.FormatInformation.FORMAT_INFO_DECODE_LOOKUP
            r7 = r0
            r0 = r7
            int r0 = r0.length
            r8 = r0
            r0 = 2147483647(0x7fffffff, float:NaN)
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L11:
            r0 = r10
            r1 = r8
            if (r0 >= r1) goto L93
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            r1 = 0
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r1 = r5
            if (r0 == r1) goto L87
            r0 = r13
            r1 = r6
            if (r0 != r1) goto L32
            goto L87
        L32:
            r0 = r5
            r1 = r13
            int r0 = numBitsDiffering(r0, r1)
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r14
            r1 = r9
            if (r0 >= r1) goto L4f
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            r11 = r0
            r0 = r14
            r15 = r0
        L4f:
            r0 = r15
            r9 = r0
            r0 = r11
            r14 = r0
            r0 = r5
            r1 = r6
            if (r0 == r1) goto L7d
            r0 = r6
            r1 = r13
            int r0 = numBitsDiffering(r0, r1)
            r13 = r0
            r0 = r15
            r9 = r0
            r0 = r11
            r14 = r0
            r0 = r13
            r1 = r15
            if (r0 >= r1) goto L7d
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            r14 = r0
            r0 = r13
            r9 = r0
        L7d:
            int r10 = r10 + 1
            r0 = r14
            r11 = r0
            goto L11
        L87:
            com.google.zxing.qrcode.decoder.FormatInformation r0 = new com.google.zxing.qrcode.decoder.FormatInformation
            r1 = r0
            r2 = r12
            r3 = 1
            r2 = r2[r3]
            r1.<init>(r2)
            return r0
        L93:
            r0 = r9
            r1 = 3
            if (r0 > r1) goto La3
            com.google.zxing.qrcode.decoder.FormatInformation r0 = new com.google.zxing.qrcode.decoder.FormatInformation
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            return r0
        La3:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.decoder.FormatInformation.doDecodeFormatInformation(int, int):com.google.zxing.qrcode.decoder.FormatInformation");
    }

    public static int numBitsDiffering(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FormatInformation)) {
            return false;
        }
        FormatInformation formatInformation = (FormatInformation) obj;
        return this.errorCorrectionLevel == formatInformation.errorCorrectionLevel && this.dataMask == formatInformation.dataMask;
    }

    public byte getDataMask() {
        return this.dataMask;
    }

    public ErrorCorrectionLevel getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int hashCode() {
        return (this.errorCorrectionLevel.ordinal() << 3) | this.dataMask;
    }
}
