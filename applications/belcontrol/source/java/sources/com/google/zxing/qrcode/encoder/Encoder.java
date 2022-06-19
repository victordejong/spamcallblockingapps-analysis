package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/encoder/Encoder.class */
public final class Encoder {
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    public static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

    /* renamed from: com.google.zxing.qrcode.encoder.Encoder$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/encoder/Encoder$1.class */
    public static /* synthetic */ class C06251 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private Encoder() {
    }

    public static void append8BitBytes(String str, BitArray bitArray, String str2) {
        try {
            for (byte b : str.getBytes(str2)) {
                bitArray.appendBits(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    public static void appendAlphanumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int alphanumericCode = getAlphanumericCode(charSequence.charAt(i));
            if (alphanumericCode == -1) {
                throw new WriterException();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int alphanumericCode2 = getAlphanumericCode(charSequence.charAt(i2));
                if (alphanumericCode2 == -1) {
                    throw new WriterException();
                }
                bitArray.appendBits((alphanumericCode * 45) + alphanumericCode2, 11);
                i += 2;
            } else {
                bitArray.appendBits(alphanumericCode, 6);
                i = i2;
            }
        }
    }

    public static void appendBytes(String str, Mode mode, BitArray bitArray, String str2) {
        int i = C06251.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
        if (i == 1) {
            appendNumericBytes(str, bitArray);
        } else if (i == 2) {
            appendAlphanumericBytes(str, bitArray);
        } else if (i == 3) {
            append8BitBytes(str, bitArray, str2);
        } else if (i != 4) {
            throw new WriterException("Invalid mode: ".concat(String.valueOf(mode)));
        } else {
            appendKanjiBytes(str, bitArray);
        }
    }

    private static void appendECI(CharacterSetECI characterSetECI, BitArray bitArray) {
        bitArray.appendBits(Mode.ECI.getBits(), 4);
        bitArray.appendBits(characterSetECI.getValue(), 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[LOOP:0: B:4:0x000c->B:19:0x0061, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void appendKanjiBytes(java.lang.String r5, com.google.zxing.common.BitArray r6) {
        /*
            r0 = r5
            java.lang.String r1 = "Shift_JIS"
            byte[] r0 = r0.getBytes(r1)     // Catch: java.io.UnsupportedEncodingException -> L88
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
        Lc:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L87
            r0 = r5
            r1 = r8
            r0 = r0[r1]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r1 = 8
            int r0 = r0 << r1
            r1 = r5
            r2 = r8
            r3 = 1
            int r2 = r2 + r3
            r1 = r1[r2]
            r2 = 255(0xff, float:3.57E-43)
            r1 = r1 & r2
            r0 = r0 | r1
            r9 = r0
            r0 = 33088(0x8140, float:4.6366E-41)
            r10 = r0
            r0 = r9
            r1 = 33088(0x8140, float:4.6366E-41)
            if (r0 < r1) goto L43
            r0 = r9
            r1 = 40956(0x9ffc, float:5.7392E-41)
            if (r0 > r1) goto L43
        L39:
            r0 = r9
            r1 = r10
            int r0 = r0 - r1
            r10 = r0
            goto L5b
        L43:
            r0 = r9
            r1 = 57408(0xe040, float:8.0446E-41)
            if (r0 < r1) goto L58
            r0 = r9
            r1 = 60351(0xebbf, float:8.457E-41)
            if (r0 > r1) goto L58
            r0 = 49472(0xc140, float:6.9325E-41)
            r10 = r0
            goto L39
        L58:
            r0 = -1
            r10 = r0
        L5b:
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L7d
            r0 = r6
            r1 = r10
            r2 = 8
            int r1 = r1 >> r2
            r2 = 192(0xc0, float:2.69E-43)
            int r1 = r1 * r2
            r2 = r10
            r3 = 255(0xff, float:3.57E-43)
            r2 = r2 & r3
            int r1 = r1 + r2
            r2 = 13
            r0.appendBits(r1, r2)
            int r8 = r8 + 2
            goto Lc
        L7d:
            com.google.zxing.WriterException r0 = new com.google.zxing.WriterException
            r1 = r0
            java.lang.String r2 = "Invalid byte sequence"
            r1.<init>(r2)
            throw r0
        L87:
            return
        L88:
            r5 = move-exception
            com.google.zxing.WriterException r0 = new com.google.zxing.WriterException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.appendKanjiBytes(java.lang.String, com.google.zxing.common.BitArray):void");
    }

    public static void appendLengthInfo(int i, Version version, Mode mode, BitArray bitArray) {
        int characterCountBits = mode.getCharacterCountBits(version);
        int i2 = 1 << characterCountBits;
        if (i < i2) {
            bitArray.appendBits(i, characterCountBits);
            return;
        }
        throw new WriterException(i + " is bigger than " + (i2 - 1));
    }

    public static void appendModeInfo(Mode mode, BitArray bitArray) {
        bitArray.appendBits(mode.getBits(), 4);
    }

    public static void appendNumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                bitArray.appendBits((charAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    bitArray.appendBits((charAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    bitArray.appendBits(charAt, 4);
                }
            }
        }
    }

    private static int calculateBitsNeeded(Mode mode, BitArray bitArray, BitArray bitArray2, Version version) {
        return bitArray.getSize() + mode.getCharacterCountBits(version) + bitArray2.getSize();
    }

    private static int calculateMaskPenalty(ByteMatrix byteMatrix) {
        return MaskUtil.applyMaskPenaltyRule1(byteMatrix) + MaskUtil.applyMaskPenaltyRule2(byteMatrix) + MaskUtil.applyMaskPenaltyRule3(byteMatrix) + MaskUtil.applyMaskPenaltyRule4(byteMatrix);
    }

    private static int chooseMaskPattern(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, ByteMatrix byteMatrix) {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (i3 < 8) {
            MatrixUtil.buildMatrix(bitArray, errorCorrectionLevel, version, i3, byteMatrix);
            int calculateMaskPenalty = calculateMaskPenalty(byteMatrix);
            int i4 = i;
            if (calculateMaskPenalty < i) {
                i2 = i3;
                i4 = calculateMaskPenalty;
            }
            i3++;
            i = i4;
        }
        return i2;
    }

    public static Mode chooseMode(String str) {
        return chooseMode(str, null);
    }

    private static Mode chooseMode(String str, String str2) {
        if (!"Shift_JIS".equals(str2) || !isOnlyDoubleByteKanji(str)) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt >= '0' && charAt <= '9') {
                    z2 = true;
                } else if (getAlphanumericCode(charAt) == -1) {
                    return Mode.BYTE;
                } else {
                    z = true;
                }
            }
            return z ? Mode.ALPHANUMERIC : z2 ? Mode.NUMERIC : Mode.BYTE;
        }
        return Mode.KANJI;
    }

    private static Version chooseVersion(int i, ErrorCorrectionLevel errorCorrectionLevel) {
        for (int i2 = 1; i2 <= 40; i2++) {
            Version versionForNumber = Version.getVersionForNumber(i2);
            if (willFit(i, versionForNumber, errorCorrectionLevel)) {
                return versionForNumber;
            }
        }
        throw new WriterException("Data too big");
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) {
        return encode(str, errorCorrectionLevel, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.qrcode.encoder.QRCode encode(java.lang.String r6, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r7, java.util.Map<com.google.zxing.EncodeHintType, ?> r8) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.encode(java.lang.String, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.qrcode.encoder.QRCode");
    }

    public static byte[] generateECBytes(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    public static int getAlphanumericCode(int i) {
        int[] iArr = ALPHANUMERIC_TABLE;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public static void getNumDataBytesAndNumECBytesForBlockID(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        if (i4 < i3) {
            int i5 = i % i3;
            int i6 = i3 - i5;
            int i7 = i / i3;
            int i8 = i2 / i3;
            int i9 = i8 + 1;
            int i10 = i7 - i8;
            int i11 = (i7 + 1) - i9;
            if (i10 != i11) {
                throw new WriterException("EC bytes mismatch");
            }
            if (i3 != i6 + i5) {
                throw new WriterException("RS blocks mismatch");
            }
            if (i != ((i8 + i10) * i6) + ((i9 + i11) * i5)) {
                throw new WriterException("Total bytes mismatch");
            }
            if (i4 < i6) {
                iArr[0] = i8;
                iArr2[0] = i10;
                return;
            }
            iArr[0] = i9;
            iArr2[0] = i11;
            return;
        }
        throw new WriterException("Block ID too large");
    }

    public static BitArray interleaveWithECBytes(BitArray bitArray, int i, int i2, int i3) {
        int i4;
        if (bitArray.getSizeInBytes() == i2) {
            ArrayList<BlockPair> arrayList = new ArrayList(i3);
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i3; i8++) {
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                getNumDataBytesAndNumECBytesForBlockID(i, i2, i3, i8, iArr, iArr2);
                int i9 = iArr[0];
                byte[] bArr = new byte[i9];
                bitArray.toBytes(i5 << 3, bArr, 0, i9);
                byte[] generateECBytes = generateECBytes(bArr, iArr2[0]);
                arrayList.add(new BlockPair(bArr, generateECBytes));
                i6 = Math.max(i6, i9);
                i7 = Math.max(i7, generateECBytes.length);
                i5 += iArr[0];
            }
            if (i2 != i5) {
                throw new WriterException("Data bytes does not match offset");
            }
            BitArray bitArray2 = new BitArray();
            int i10 = 0;
            while (true) {
                if (i10 < i6) {
                    for (BlockPair blockPair : arrayList) {
                        byte[] dataBytes = blockPair.getDataBytes();
                        if (i10 < dataBytes.length) {
                            bitArray2.appendBits(dataBytes[i10], 8);
                        }
                    }
                    i10++;
                }
            }
            for (i4 = 0; i4 < i7; i4++) {
                for (BlockPair blockPair2 : arrayList) {
                    byte[] errorCorrectionBytes = blockPair2.getErrorCorrectionBytes();
                    if (i4 < errorCorrectionBytes.length) {
                        bitArray2.appendBits(errorCorrectionBytes[i4], 8);
                    }
                }
            }
            if (i == bitArray2.getSizeInBytes()) {
                return bitArray2;
            }
            throw new WriterException("Interleaving error: " + i + " and " + bitArray2.getSizeInBytes() + " differ.");
        }
        throw new WriterException("Number of bits and data bytes does not match");
    }

    private static boolean isOnlyDoubleByteKanji(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i = 0; i < length; i += 2) {
                int i2 = bytes[i] & 255;
                if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }

    private static Version recommendVersion(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, BitArray bitArray, BitArray bitArray2) {
        return chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, Version.getVersionForNumber(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    public static void terminateBits(int i, BitArray bitArray) {
        int i2 = i << 3;
        if (bitArray.getSize() > i2) {
            throw new WriterException("data bits cannot fit in the QR Code" + bitArray.getSize() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && bitArray.getSize() < i2; i3++) {
            bitArray.appendBit(false);
        }
        int size = bitArray.getSize() & 7;
        if (size > 0) {
            while (size < 8) {
                bitArray.appendBit(false);
                size++;
            }
        }
        int sizeInBytes = bitArray.getSizeInBytes();
        for (int i4 = 0; i4 < i - sizeInBytes; i4++) {
            bitArray.appendBits((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (bitArray.getSize() != i2) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    private static boolean willFit(int i, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        return version.getTotalCodewords() - version.getECBlocksForLevel(errorCorrectionLevel).getTotalECCodewords() >= (i + 7) / 8;
    }
}
