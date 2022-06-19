package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/rss/expanded/decoders/AI01decoder.class */
public abstract class AI01decoder extends AbstractExpandedDecoder {
    static final int GTIN_SIZE = 40;

    public AI01decoder(BitArray bitArray) {
        super(bitArray);
    }

    private static void appendCheckDigit(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int charAt = sb.charAt(i3 + i) - '0';
            int i4 = charAt;
            if ((i3 & 1) == 0) {
                i4 = charAt * 3;
            }
            i2 += i4;
        }
        int i5 = 10 - (i2 % 10);
        if (i5 == 10) {
            i5 = 0;
        }
        sb.append(i5);
    }

    public final void encodeCompressedGtin(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        encodeCompressedGtinWithoutAI(sb, i, length);
    }

    public final void encodeCompressedGtinWithoutAI(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray((i3 * 10) + i, 10);
            if (extractNumericValueFromBitArray / 100 == 0) {
                sb.append('0');
            }
            if (extractNumericValueFromBitArray / 10 == 0) {
                sb.append('0');
            }
            sb.append(extractNumericValueFromBitArray);
        }
        appendCheckDigit(sb, i2);
    }
}
