package com.google.zxing.aztec.decoder;

import com.android.internal.telephony.PhoneConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.millennialmedia.internal.PlayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder.class */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", "c", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG, "e", "f", "g", "h", "i", "j", "k", "l", "m", GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION, "o", TtmlNode.TAG_P, "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", PhoneConstants.APN_TYPE_ALL, "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", "0", "1", PlayList.VERSION, "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder$1.class */
    public static /* synthetic */ class C06161 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder$Table.class */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = readByte(zArr, i << 3);
        }
        return bArr;
    }

    private boolean[] correctBits(boolean[] zArr) {
        GenericGF genericGF;
        int i;
        int i2;
        int i3 = 8;
        if (this.ddata.getNbLayers() <= 2) {
            i3 = 6;
            genericGF = GenericGF.AZTEC_DATA_6;
        } else if (this.ddata.getNbLayers() <= 8) {
            genericGF = GenericGF.AZTEC_DATA_8;
        } else if (this.ddata.getNbLayers() <= 22) {
            i3 = 10;
            genericGF = GenericGF.AZTEC_DATA_10;
        } else {
            i3 = 12;
            genericGF = GenericGF.AZTEC_DATA_12;
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i3;
        if (length >= nbDatablocks) {
            int length2 = zArr.length % i3;
            int[] iArr = new int[length];
            int i4 = 0;
            while (i4 < length) {
                iArr[i4] = readCode(zArr, length2, i3);
                i4++;
                length2 += i3;
            }
            try {
                new ReedSolomonDecoder(genericGF).decode(iArr, length - nbDatablocks);
                int i5 = (1 << i3) - 1;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i6 < nbDatablocks) {
                        int i9 = iArr[i6];
                        if (i9 == 0 || i9 == i5) {
                            break;
                        }
                        if (i9 != 1) {
                            i2 = i8;
                            if (i9 != i5 - 1) {
                                i6++;
                                i7 = i2;
                            }
                        }
                        i2 = i8 + 1;
                        i6++;
                        i7 = i2;
                    } else {
                        boolean[] zArr2 = new boolean[(nbDatablocks * i3) - i8];
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            int i12 = i11;
                            if (i10 >= nbDatablocks) {
                                return zArr2;
                            }
                            int i13 = iArr[i10];
                            if (i13 == 1 || i13 == i5 - 1) {
                                Arrays.fill(zArr2, i12, (i12 + i3) - 1, i13 > 1);
                                i = i12 + (i3 - 1);
                            } else {
                                int i14 = i3 - 1;
                                while (true) {
                                    i = i12;
                                    if (i14 >= 0) {
                                        zArr2[i12] = ((1 << i14) & i13) != 0;
                                        i14--;
                                        i12++;
                                    }
                                }
                            }
                            i10++;
                            i11 = i;
                        }
                    }
                }
                throw FormatException.getFormatInstance();
            } catch (ReedSolomonException e) {
                throw FormatException.getFormatInstance(e);
            }
        }
        throw FormatException.getFormatInstance();
    }

    private boolean[] extractBits(BitMatrix bitMatrix) {
        boolean isCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        int i = (isCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, isCompact)];
        if (isCompact) {
            for (int i2 = 0; i2 < i; i2++) {
                iArr[i2] = i2;
            }
        } else {
            int i3 = i / 2;
            int i4 = ((i + 1) + (((i3 - 1) / 15) * 2)) / 2;
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i5 / 15) + i5;
                iArr[(i3 - i5) - 1] = (i4 - i6) - 1;
                iArr[i3 + i5] = i6 + i4 + 1;
            }
        }
        int i7 = 0;
        for (int i8 = 0; i8 < nbLayers; i8++) {
            int i9 = ((nbLayers - i8) << 2) + (isCompact ? 9 : 12);
            int i10 = i8 << 1;
            int i11 = (i - 1) - i10;
            for (int i12 = 0; i12 < i9; i12++) {
                int i13 = i12 << 1;
                for (int i14 = 0; i14 < 2; i14++) {
                    int i15 = i10 + i14;
                    int i16 = iArr[i15];
                    int i17 = i10 + i12;
                    zArr[i7 + i13 + i14] = bitMatrix.get(i16, iArr[i17]);
                    int i18 = iArr[i17];
                    int i19 = i11 - i14;
                    zArr[(i9 * 2) + i7 + i13 + i14] = bitMatrix.get(i18, iArr[i19]);
                    int i20 = iArr[i19];
                    int i21 = i11 - i12;
                    zArr[(i9 * 4) + i7 + i13 + i14] = bitMatrix.get(i20, iArr[i21]);
                    zArr[(i9 * 6) + i7 + i13 + i14] = bitMatrix.get(iArr[i21], iArr[i15]);
                }
            }
            i7 += i9 << 3;
        }
        return zArr;
    }

    private static String getCharacter(Table table, int i) {
        int i2 = C06161.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return LOWER_TABLE[i];
            }
            if (i2 == 3) {
                return MIXED_TABLE[i];
            }
            if (i2 == 4) {
                return PUNCT_TABLE[i];
            }
            if (i2 != 5) {
                throw new IllegalStateException("Bad table");
            }
            return DIGIT_TABLE[i];
        }
        return UPPER_TABLE[i];
    }

    private static String getEncodedData(boolean[] zArr) {
        Table table;
        int length = zArr.length;
        Table table2 = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        Table table3 = table2;
        int i = 0;
        while (i < length) {
            if (table2 != Table.BINARY) {
                int i2 = table2 == Table.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int readCode = readCode(zArr, i, i2);
                i += i2;
                String character = getCharacter(table2, readCode);
                if (character.startsWith("CTRL_")) {
                    table = getTable(character.charAt(5));
                    if (character.charAt(6) != 'L') {
                        table3 = table2;
                        table2 = table;
                    }
                } else {
                    sb.append(character);
                    table = table3;
                }
                table2 = table;
                table3 = table;
            } else if (length - i < 5) {
                break;
            } else {
                int readCode2 = readCode(zArr, i, 5);
                int i3 = i + 5;
                int i4 = readCode2;
                int i5 = i3;
                if (readCode2 == 0) {
                    if (length - i3 < 11) {
                        break;
                    }
                    i4 = readCode(zArr, i3, 11) + 31;
                    i5 = i3 + 11;
                }
                int i6 = 0;
                int i7 = i5;
                while (true) {
                    table = table3;
                    i = i7;
                    if (i6 >= i4) {
                        break;
                    } else if (length - i7 < 8) {
                        i = length;
                        table = table3;
                        break;
                    } else {
                        sb.append((char) readCode(zArr, i7, 8));
                        i7 += 8;
                        i6++;
                    }
                }
                table2 = table;
                table3 = table;
            }
        }
        return sb.toString();
    }

    private static Table getTable(char c) {
        return c != 'B' ? c != 'D' ? c != 'P' ? c != 'L' ? c != 'M' ? Table.UPPER : Table.MIXED : Table.LOWER : Table.PUNCT : Table.DIGIT : Table.BINARY;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    private static byte readByte(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? readCode(zArr, i, 8) : readCode(zArr, i, length) << (8 - length));
    }

    private static int readCode(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            int i5 = i3 << 1;
            i3 = i5;
            if (zArr[i4]) {
                i3 = i5 | 1;
            }
        }
        return i3;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) {
        this.ddata = aztecDetectorResult;
        boolean[] correctBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(correctBits), getEncodedData(correctBits), null, null);
        decoderResult.setNumBits(correctBits.length);
        return decoderResult;
    }
}
