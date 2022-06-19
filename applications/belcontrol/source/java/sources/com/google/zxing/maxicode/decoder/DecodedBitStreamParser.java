package com.google.zxing.maxicode.decoder;

import com.google.zxing.common.DecoderResult;
import java.text.DecimalFormat;
import org.bouncycastle.crypto.tls.CipherSuite;
/* loaded from: classes-dex2jar.jar:com/google/zxing/maxicode/decoder/DecodedBitStreamParser.class */
public final class DecodedBitStreamParser {
    private static final char ECI = 65530;

    /* renamed from: FS */
    private static final char f3640FS = 28;

    /* renamed from: GS */
    private static final char f3641GS = 29;
    private static final char LATCHA = 65527;
    private static final char LATCHB = 65528;
    private static final char LOCK = 65529;

    /* renamed from: NS */
    private static final char f3642NS = 65531;
    private static final char PAD = 65532;

    /* renamed from: RS */
    private static final char f3643RS = 30;
    private static final String[] SETS = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "��\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "��\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};
    private static final char SHIFTA = 65520;
    private static final char SHIFTB = 65521;
    private static final char SHIFTC = 65522;
    private static final char SHIFTD = 65523;
    private static final char SHIFTE = 65524;
    private static final char THREESHIFTA = 65526;
    private static final char TWOSHIFTA = 65525;

    private DecodedBitStreamParser() {
    }

    public static DecoderResult decode(byte[] bArr, int i) {
        String str;
        StringBuilder sb;
        int i2;
        StringBuilder sb2 = new StringBuilder((int) CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA);
        if (i == 2 || i == 3) {
            int i3 = 0;
            if (i == 2) {
                str = new DecimalFormat("0000000000".substring(0, getPostCode2Length(bArr))).format(getPostCode2(bArr));
            } else {
                str = getPostCode3(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat("000");
            String format = decimalFormat.format(getCountry(bArr));
            String format2 = decimalFormat.format(getServiceClass(bArr));
            sb2.append(getMessage(bArr, 10, 84));
            if (sb2.toString().startsWith("[)>\u001e01\u001d")) {
                i3 = 9;
                sb = new StringBuilder();
            } else {
                sb = new StringBuilder();
            }
            sb.append(str);
            sb.append((char) 29);
            sb.append(format);
            sb.append((char) 29);
            sb.append(format2);
            sb.append((char) 29);
            sb2.insert(i3, sb.toString());
        } else {
            if (i == 4) {
                i2 = 93;
            } else if (i == 5) {
                i2 = 77;
            }
            sb2.append(getMessage(bArr, 1, i2));
        }
        return new DecoderResult(bArr, sb2.toString(), null, String.valueOf(i));
    }

    private static int getBit(int i, byte[] bArr) {
        int i2 = i - 1;
        return ((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0 ? 0 : 1;
    }

    private static int getCountry(byte[] bArr) {
        return getInt(bArr, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38});
    }

    private static int getInt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length != 0) {
            int i = 0;
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                i += getBit(bArr2[i2], bArr) << ((bArr2.length - i2) - 1);
            }
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String getMessage(byte[] bArr, int i, int i2) {
        int i3;
        StringBuilder sb = new StringBuilder();
        int i4 = i;
        int i5 = 0;
        int i6 = -1;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i4 < i + i2) {
                char charAt = SETS[i5].charAt(bArr[i4]);
                int i9 = i5;
                switch (charAt) {
                    case SHIFTA /* 65520 */:
                    case SHIFTB /* 65521 */:
                    case SHIFTC /* 65522 */:
                    case SHIFTD /* 65523 */:
                    case SHIFTE /* 65524 */:
                        i6 = 1;
                        i3 = i5;
                        i5 = charAt - SHIFTA;
                        break;
                    case TWOSHIFTA /* 65525 */:
                        i6 = 2;
                        i3 = i5;
                        i5 = 0;
                        break;
                    case THREESHIFTA /* 65526 */:
                        i6 = 3;
                        i3 = i5;
                        i5 = 0;
                        break;
                    case LATCHA /* 65527 */:
                        i9 = 0;
                        i6 = -1;
                        i5 = i9;
                        i3 = i8;
                        break;
                    case LATCHB /* 65528 */:
                        i9 = 1;
                        i6 = -1;
                        i5 = i9;
                        i3 = i8;
                        break;
                    case LOCK /* 65529 */:
                        i6 = -1;
                        i5 = i9;
                        i3 = i8;
                        break;
                    case ECI /* 65530 */:
                    default:
                        sb.append(charAt);
                        i3 = i8;
                        break;
                    case f3642NS /* 65531 */:
                        int i10 = i4 + 1;
                        byte b = bArr[i10];
                        int i11 = i10 + 1;
                        byte b2 = bArr[i11];
                        int i12 = i11 + 1;
                        byte b3 = bArr[i12];
                        int i13 = i12 + 1;
                        byte b4 = bArr[i13];
                        i4 = i13 + 1;
                        sb.append(new DecimalFormat("000000000").format((b << 24) + (b2 << 18) + (b3 << 12) + (b4 << 6) + bArr[i4]));
                        i3 = i8;
                        break;
                }
                if (i6 == 0) {
                    i5 = i3;
                }
                i4++;
                i6--;
                i7 = i3;
            }
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == PAD) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private static int getPostCode2(byte[] bArr) {
        return getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    private static int getPostCode2Length(byte[] bArr) {
        return getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32});
    }

    private static String getPostCode3(byte[] bArr) {
        String[] strArr = SETS;
        return String.valueOf(new char[]{strArr[0].charAt(getInt(bArr, new byte[]{39, 40, 41, 42, 31, 32})), strArr[0].charAt(getInt(bArr, new byte[]{33, 34, 35, 36, 25, 26})), strArr[0].charAt(getInt(bArr, new byte[]{27, 28, 29, 30, 19, 20})), strArr[0].charAt(getInt(bArr, new byte[]{21, 22, 23, 24, 13, 14})), strArr[0].charAt(getInt(bArr, new byte[]{15, 16, 17, 18, 7, 8})), strArr[0].charAt(getInt(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    private static int getServiceClass(byte[] bArr) {
        return getInt(bArr, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52});
    }
}
