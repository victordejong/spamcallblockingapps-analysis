package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.math.BigInteger;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/DecodedBitStreamParser.class */
public final class DecodedBitStreamParser {

    /* renamed from: AL */
    private static final int f3644AL = 28;

    /* renamed from: AS */
    private static final int f3645AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final BigInteger[] EXP900;

    /* renamed from: LL */
    private static final int f3646LL = 27;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE = 4;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM = 6;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME = 0;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE = 5;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT = 1;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SENDER = 3;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP = 2;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;

    /* renamed from: ML */
    private static final int f3647ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;

    /* renamed from: PL */
    private static final int f3648PL = 25;

    /* renamed from: PS */
    private static final int f3649PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    private static final char[] MIXED_CHARS = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/DecodedBitStreamParser$1.class */
    public static /* synthetic */ class C06211 {

        /* renamed from: $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode */
        public static final /* synthetic */ int[] f3650x45bba1d;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            f3650x45bba1d = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3650x45bba1d[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3650x45bba1d[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3650x45bba1d[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3650x45bba1d[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3650x45bba1d[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode.class */
    public enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = valueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i < bigIntegerArr2.length) {
                bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(valueOf);
                i++;
            } else {
                return;
            }
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x002f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int byteCompaction(int r6, int[] r7, java.nio.charset.Charset r8, int r9, java.lang.StringBuilder r10) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.byteCompaction(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.common.DecoderResult decode(int[] r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decode(int[], java.lang.String):com.google.zxing.common.DecoderResult");
    }

    private static String decodeBase900toBase10(int[] iArr, int i) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    public static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) {
        if (i + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i2 = 0;
            while (i2 < 2) {
                iArr2[i2] = iArr[i];
                i2++;
                i++;
            }
            pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
            StringBuilder sb = new StringBuilder();
            int textCompaction = textCompaction(iArr, i, sb);
            pDF417ResultMetadata.setFileId(sb.toString());
            int i3 = iArr[textCompaction] == BEGIN_MACRO_PDF417_OPTIONAL_FIELD ? textCompaction + 1 : -1;
            while (textCompaction < iArr[0]) {
                int i4 = iArr[textCompaction];
                if (i4 == MACRO_PDF417_TERMINATOR) {
                    textCompaction++;
                    pDF417ResultMetadata.setLastSegment(true);
                } else if (i4 != BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
                    throw FormatException.getFormatInstance();
                } else {
                    int i5 = textCompaction + 1;
                    switch (iArr[i5]) {
                        case 0:
                            StringBuilder sb2 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb2);
                            pDF417ResultMetadata.setFileName(sb2.toString());
                            continue;
                        case 1:
                            StringBuilder sb3 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb3);
                            pDF417ResultMetadata.setSegmentCount(Integer.parseInt(sb3.toString()));
                            continue;
                        case 2:
                            StringBuilder sb4 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb4);
                            pDF417ResultMetadata.setTimestamp(Long.parseLong(sb4.toString()));
                            continue;
                        case 3:
                            StringBuilder sb5 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb5);
                            pDF417ResultMetadata.setSender(sb5.toString());
                            continue;
                        case 4:
                            StringBuilder sb6 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb6);
                            pDF417ResultMetadata.setAddressee(sb6.toString());
                            continue;
                        case 5:
                            StringBuilder sb7 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb7);
                            pDF417ResultMetadata.setFileSize(Long.parseLong(sb7.toString()));
                            continue;
                        case 6:
                            StringBuilder sb8 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb8);
                            pDF417ResultMetadata.setChecksum(Integer.parseInt(sb8.toString()));
                            continue;
                        default:
                            throw FormatException.getFormatInstance();
                    }
                }
            }
            if (i3 != -1) {
                int i6 = textCompaction - i3;
                int i7 = i6;
                if (pDF417ResultMetadata.isLastSegment()) {
                    i7 = i6 - 1;
                }
                pDF417ResultMetadata.setOptionalData(Arrays.copyOfRange(iArr, i3, i7 + i3));
            }
            return textCompaction;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
        if (r0 != com.google.zxing.pdf417.decoder.DecodedBitStreamParser.TEXT_COMPACTION_MODE_LATCH) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0274 A[PHI: r8 
      PHI: (r8v3 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode) = (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v4 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v5 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v6 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v7 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v1 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode), (r8v8 com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode) binds: [B:6:0x0029, B:74:0x026c, B:72:0x025e, B:71:0x0256, B:68:0x021c, B:56:0x01ab, B:45:0x0163, B:44:0x013d, B:46:0x016b, B:34:0x00f2, B:17:0x0089] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void decodeTextCompaction(int[] r4, int[] r5, int r6, java.lang.StringBuilder r7) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decodeTextCompaction(int[], int[], int, java.lang.StringBuilder):void");
    }

    private static int numericCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        int i3 = i;
        while (true) {
            int i4 = i2;
            if (i3 < iArr[0] && !z) {
                int i5 = i3 + 1;
                int i6 = iArr[i3];
                if (i5 == iArr[0]) {
                    z = true;
                }
                if (i6 < TEXT_COMPACTION_MODE_LATCH) {
                    iArr2[i4] = i6;
                    i4++;
                    i3 = i5;
                } else {
                    if (i6 != TEXT_COMPACTION_MODE_LATCH && i6 != BYTE_COMPACTION_MODE_LATCH && i6 != 928) {
                        switch (i6) {
                            case MACRO_PDF417_TERMINATOR /* 922 */:
                            case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /* 923 */:
                            case BYTE_COMPACTION_MODE_LATCH_6 /* 924 */:
                                break;
                            default:
                                i3 = i5;
                                break;
                        }
                    }
                    i3 = i5 - 1;
                    z = true;
                }
                if (i4 % 15 != 0 && i6 != NUMERIC_COMPACTION_MODE_LATCH) {
                    i2 = i4;
                    if (!z) {
                    }
                }
                i2 = i4;
                if (i4 > 0) {
                    sb.append(decodeBase900toBase10(iArr2, i4));
                    i2 = 0;
                }
            }
        }
        return i3;
    }

    private static int textCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[(iArr[0] - i) << 1];
        int[] iArr3 = new int[(iArr[0] - i) << 1];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < TEXT_COMPACTION_MODE_LATCH) {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
            } else if (i4 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                if (i4 != 928) {
                    switch (i4) {
                        case TEXT_COMPACTION_MODE_LATCH /* 900 */:
                            iArr2[i2] = TEXT_COMPACTION_MODE_LATCH;
                            i2++;
                            break;
                        case BYTE_COMPACTION_MODE_LATCH /* 901 */:
                        case NUMERIC_COMPACTION_MODE_LATCH /* 902 */:
                            break;
                        default:
                            switch (i4) {
                            }
                    }
                }
                i = i3 - 1;
                z = true;
            } else {
                iArr2[i2] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                i = i3 + 1;
                iArr3[i2] = iArr[i3];
                i2++;
            }
            i = i3;
        }
        decodeTextCompaction(iArr2, iArr3, i2, sb);
        return i;
    }
}
