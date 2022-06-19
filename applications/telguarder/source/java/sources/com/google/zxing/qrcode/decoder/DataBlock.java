package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/qrcode/decoder/DataBlock.class */
final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    public static DataBlock[] getDataBlocks(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length == version.getTotalCodewords()) {
            Version.ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
            Version.ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
            int i = 0;
            for (Version.ECB ecb : eCBlocks) {
                i += ecb.getCount();
            }
            DataBlock[] dataBlockArr = new DataBlock[i];
            int i2 = 0;
            for (Version.ECB ecb2 : eCBlocks) {
                int i3 = 0;
                while (i3 < ecb2.getCount()) {
                    int dataCodewords = ecb2.getDataCodewords();
                    dataBlockArr[i2] = new DataBlock(dataCodewords, new byte[eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords]);
                    i3++;
                    i2++;
                }
            }
            int length = dataBlockArr[0].codewords.length;
            while (true) {
                i--;
                if (i < 0 || dataBlockArr[i].codewords.length == length) {
                    break;
                }
            }
            int i4 = i + 1;
            int eCCodewordsPerBlock = length - eCBlocksForLevel.getECCodewordsPerBlock();
            int i5 = 0;
            for (int i6 = 0; i6 < eCCodewordsPerBlock; i6++) {
                int i7 = 0;
                while (i7 < i2) {
                    dataBlockArr[i7].codewords[i6] = bArr[i5];
                    i7++;
                    i5++;
                }
            }
            int i8 = i4;
            int i9 = i5;
            while (i8 < i2) {
                dataBlockArr[i8].codewords[eCCodewordsPerBlock] = bArr[i9];
                i8++;
                i9++;
            }
            int length2 = dataBlockArr[0].codewords.length;
            for (int i10 = eCCodewordsPerBlock; i10 < length2; i10++) {
                int i11 = 0;
                while (i11 < i2) {
                    dataBlockArr[i11].codewords[i11 < i4 ? i10 : i10 + 1] = bArr[i9];
                    i11++;
                    i9++;
                }
            }
            return dataBlockArr;
        }
        throw new IllegalArgumentException();
    }

    public byte[] getCodewords() {
        return this.codewords;
    }

    public int getNumDataCodewords() {
        return this.numDataCodewords;
    }
}
