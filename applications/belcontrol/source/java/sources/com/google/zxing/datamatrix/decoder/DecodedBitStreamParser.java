package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.crypto.tls.CipherSuite;
/* loaded from: classes-dex2jar.jar:com/google/zxing/datamatrix/decoder/DecodedBitStreamParser.class */
public final class DecodedBitStreamParser {
    private static final char[] C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT2_SET_CHARS;
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] TEXT_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] TEXT_SHIFT3_SET_CHARS = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* renamed from: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1.class */
    public static /* synthetic */ class C06181 {

        /* renamed from: $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode */
        public static final /* synthetic */ int[] f3638xb73eb560;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            f3638xb73eb560 = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3638xb73eb560[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3638xb73eb560[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3638xb73eb560[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3638xb73eb560[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode.class */
    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    static {
        char[] cArr = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
        C40_SHIFT2_SET_CHARS = cArr;
        TEXT_SHIFT2_SET_CHARS = cArr;
    }

    private DecodedBitStreamParser() {
    }

    public static DecoderResult decode(byte[] bArr) {
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Mode mode = Mode.ASCII_ENCODE;
        do {
            Mode mode2 = Mode.ASCII_ENCODE;
            if (mode == mode2) {
                mode = decodeAsciiSegment(bitSource, sb, sb2);
            } else {
                int i = C06181.f3638xb73eb560[mode.ordinal()];
                if (i == 1) {
                    decodeC40Segment(bitSource, sb);
                } else if (i == 2) {
                    decodeTextSegment(bitSource, sb);
                } else if (i == 3) {
                    decodeAnsiX12Segment(bitSource, sb);
                } else if (i == 4) {
                    decodeEdifactSegment(bitSource, sb);
                } else if (i != 5) {
                    throw FormatException.getFormatInstance();
                } else {
                    decodeBase256Segment(bitSource, sb, arrayList);
                }
                mode = mode2;
            }
            if (mode == Mode.PAD_ENCODE) {
                break;
            }
        } while (bitSource.available() > 0);
        if (sb2.length() > 0) {
            sb.append((CharSequence) sb2);
        }
        String sb3 = sb.toString();
        ArrayList arrayList2 = arrayList;
        if (arrayList.isEmpty()) {
            arrayList2 = null;
        }
        return new DecoderResult(bArr, sb3, arrayList2, null);
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb) {
        int readBits;
        char c;
        int i;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i3 == 0) {
                    c = '\r';
                } else if (i3 == 1) {
                    c = '*';
                } else if (i3 == 2) {
                    c = '>';
                } else if (i3 != 3) {
                    if (i3 < 14) {
                        i = i3 + 44;
                    } else if (i3 >= 40) {
                        throw FormatException.getFormatInstance();
                    } else {
                        i = i3 + 51;
                    }
                    c = (char) i;
                } else {
                    c = ' ';
                }
                sb.append(c);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb, StringBuilder sb2) {
        boolean z;
        String str;
        boolean z2 = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits == 0) {
                throw FormatException.getFormatInstance();
            }
            if (readBits <= 128) {
                int i = readBits;
                if (z2) {
                    i = readBits + 128;
                }
                sb.append((char) (i - 1));
                return Mode.ASCII_ENCODE;
            } else if (readBits == 129) {
                return Mode.PAD_ENCODE;
            } else {
                if (readBits > 229) {
                    z = z2;
                    switch (readBits) {
                        case HighLevelEncoder.LATCH_TO_C40 /* 230 */:
                            return Mode.C40_ENCODE;
                        case HighLevelEncoder.LATCH_TO_BASE256 /* 231 */:
                            return Mode.BASE256_ENCODE;
                        case 232:
                            sb.append((char) 29);
                            z = z2;
                            break;
                        case 233:
                        case 234:
                        case 241:
                            break;
                        case HighLevelEncoder.UPPER_SHIFT /* 235 */:
                            z = true;
                            break;
                        case 236:
                            str = "[)>\u001e05\u001d";
                            sb.append(str);
                            sb2.insert(0, "\u001e\u0004");
                            z = z2;
                            break;
                        case 237:
                            str = "[)>\u001e06\u001d";
                            sb.append(str);
                            sb2.insert(0, "\u001e\u0004");
                            z = z2;
                            break;
                        case HighLevelEncoder.LATCH_TO_ANSIX12 /* 238 */:
                            return Mode.ANSIX12_ENCODE;
                        case HighLevelEncoder.LATCH_TO_TEXT /* 239 */:
                            return Mode.TEXT_ENCODE;
                        case HighLevelEncoder.LATCH_TO_EDIFACT /* 240 */:
                            return Mode.EDIFACT_ENCODE;
                        default:
                            if (readBits != 254 || bitSource.available() != 0) {
                                throw FormatException.getFormatInstance();
                            }
                            z = z2;
                            break;
                            break;
                    }
                } else {
                    int i2 = readBits - 130;
                    if (i2 < 10) {
                        sb.append('0');
                    }
                    sb.append(i2);
                    z = z2;
                }
                z2 = z;
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb, Collection<byte[]> collection) {
        int byteOffset = bitSource.getByteOffset() + 1;
        int i = byteOffset + 1;
        int unrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (unrandomize255State == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State >= 250) {
            unrandomize255State = ((unrandomize255State - 249) * 250) + unrandomize255State(bitSource.readBits(8), i);
            i++;
        }
        if (unrandomize255State >= 0) {
            byte[] bArr = new byte[unrandomize255State];
            int i2 = 0;
            while (i2 < unrandomize255State) {
                if (bitSource.available() < 8) {
                    throw FormatException.getFormatInstance();
                }
                bArr[i2] = (byte) unrandomize255State(bitSource.readBits(8), i);
                i2++;
                i++;
            }
            collection.add(bArr);
            try {
                sb.append(new String(bArr, "ISO8859_1"));
                return;
            } catch (UnsupportedEncodingException e) {
                throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e)));
            }
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb) {
        int readBits;
        char c;
        int i;
        char c2;
        int i2;
        int[] iArr = new int[3];
        boolean z = false;
        int i3 = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr[i4];
                if (i3 != 0) {
                    if (i3 == 1) {
                        i = i5;
                        if (z) {
                            i2 = i5 + 128;
                            c2 = (char) i2;
                            sb.append(c2);
                            z = false;
                        }
                        c = (char) i;
                        sb.append(c);
                    } else if (i3 == 2) {
                        char[] cArr = C40_SHIFT2_SET_CHARS;
                        if (i5 < cArr.length) {
                            char c3 = cArr[i5];
                            c = c3;
                            if (z) {
                                c2 = (char) (c3 + 128);
                                sb.append(c2);
                                z = false;
                            }
                        } else if (i5 == 27) {
                            c = 29;
                        } else if (i5 != 30) {
                            throw FormatException.getFormatInstance();
                        } else {
                            z = true;
                        }
                        sb.append(c);
                    } else if (i3 != 3) {
                        throw FormatException.getFormatInstance();
                    } else {
                        if (z) {
                            i2 = i5 + 224;
                            c2 = (char) i2;
                            sb.append(c2);
                            z = false;
                        } else {
                            i = i5 + 96;
                            c = (char) i;
                            sb.append(c);
                        }
                    }
                    i3 = 0;
                } else if (i5 < 3) {
                    i3 = i5 + 1;
                } else {
                    char[] cArr2 = C40_BASIC_SET_CHARS;
                    if (i5 >= cArr2.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c4 = cArr2[i5];
                    if (z) {
                        sb.append((char) (c4 + 128));
                        z = false;
                    } else {
                        sb.append(c4);
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeEdifactSegment(BitSource bitSource, StringBuilder sb) {
        while (bitSource.available() > 16) {
            for (int i = 0; i < 4; i++) {
                int readBits = bitSource.readBits(6);
                if (readBits == 31) {
                    int bitOffset = 8 - bitSource.getBitOffset();
                    if (bitOffset == 8) {
                        return;
                    }
                    bitSource.readBits(bitOffset);
                    return;
                }
                int i2 = readBits;
                if ((readBits & 32) == 0) {
                    i2 = readBits | 64;
                }
                sb.append((char) i2);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb) {
        int readBits;
        char c;
        char c2;
        char c3;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            char[] cArr = TEXT_SHIFT2_SET_CHARS;
                            if (i3 < cArr.length) {
                                char c4 = cArr[i3];
                                c = c4;
                                if (z) {
                                    c3 = c4;
                                    c2 = (char) (c3 + 128);
                                    sb.append(c2);
                                    z = false;
                                }
                            } else if (i3 == 27) {
                                c = 29;
                            } else if (i3 != 30) {
                                throw FormatException.getFormatInstance();
                            } else {
                                z = true;
                            }
                            sb.append(c);
                        } else if (i != 3) {
                            throw FormatException.getFormatInstance();
                        } else {
                            char[] cArr2 = TEXT_SHIFT3_SET_CHARS;
                            if (i3 >= cArr2.length) {
                                throw FormatException.getFormatInstance();
                            }
                            char c5 = cArr2[i3];
                            c = c5;
                            if (z) {
                                c3 = c5;
                                c2 = (char) (c3 + 128);
                                sb.append(c2);
                                z = false;
                            }
                            sb.append(c);
                        }
                    } else if (z) {
                        c2 = (char) (i3 + 128);
                        sb.append(c2);
                        z = false;
                    } else {
                        c = (char) i3;
                        sb.append(c);
                    }
                    i = 0;
                } else if (i3 < 3) {
                    i = i3 + 1;
                } else {
                    char[] cArr3 = TEXT_BASIC_SET_CHARS;
                    if (i3 >= cArr3.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c6 = cArr3[i3];
                    if (z) {
                        sb.append((char) (c6 + 128));
                        z = false;
                    } else {
                        sb.append(c6);
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    private static int unrandomize255State(int i, int i2) {
        int i3 = i - (((i2 * CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }
}
