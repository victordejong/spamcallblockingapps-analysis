package com.google.zxing.aztec.decoder;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import io.realm.com_telguarder_features_numberLookup_dRealmProxy;
import org.slf4j.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder.class */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {"CTRL_PS", " ", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, "T", "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] LOWER_TABLE = {"CTRL_PS", " ", "a", "b", "c", com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, "e", "f", "g", POBConstants.KEY_H, "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", POBConstants.KEY_W, "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] MIXED_TABLE = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] PUNCT_TABLE = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", Marker.ANY_NON_NULL_MARKER, ",", "-", ".", "/", ":", ";", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.EQUAL_TO_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] DIGIT_TABLE = {"CTRL_PS", " ", AppEventsConstants.EVENT_PARAM_VALUE_NO, "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1 */
    /* loaded from: classes2-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder$1.class */
    public static /* synthetic */ class C17251 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

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

    /* loaded from: classes2-dex2jar.jar:com/google/zxing/aztec/decoder/Decoder$Table.class */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = readByte(zArr, i << 3);
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ee, code lost:
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean[] correctBits(boolean[] r7) throws com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.decoder.Decoder.correctBits(boolean[]):boolean[]");
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
        int i2 = C17251.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
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
        Table table3 = Table.UPPER;
        StringBuilder sb = new StringBuilder(20);
        int i = 0;
        while (i < length) {
            if (table3 != Table.BINARY) {
                int i2 = table3 == Table.DIGIT ? 4 : 5;
                if (length - i < i2) {
                    break;
                }
                int readCode = readCode(zArr, i, i2);
                i += i2;
                String character = getCharacter(table3, readCode);
                if (character.startsWith("CTRL_")) {
                    Table table4 = getTable(character.charAt(5));
                    if (character.charAt(6) == 'L') {
                        table = table4;
                    } else {
                        table2 = table3;
                        table3 = table4;
                    }
                } else {
                    sb.append(character);
                    table = table2;
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
                    table = table2;
                    i = i7;
                    if (i6 >= i4) {
                        break;
                    } else if (length - i7 < 8) {
                        i = length;
                        table = table2;
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

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) throws FormatException {
        this.ddata = aztecDetectorResult;
        boolean[] correctBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(correctBits), getEncodedData(correctBits), null, null);
        decoderResult.setNumBits(correctBits.length);
        return decoderResult;
    }
}
