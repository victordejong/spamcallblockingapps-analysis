package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/decoder/Decoder.class */
public final class Decoder {
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.QR_CODE_FIELD_256);

    private void correctErrors(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.rsDecoder.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (ReedSolomonException e) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private DecoderResult decode(BitMatrixParser bitMatrixParser, Map<DecodeHintType, ?> map) {
        Version readVersion = bitMatrixParser.readVersion();
        ErrorCorrectionLevel errorCorrectionLevel = bitMatrixParser.readFormatInformation().getErrorCorrectionLevel();
        DataBlock[] dataBlocks = DataBlock.getDataBlocks(bitMatrixParser.readCodewords(), readVersion, errorCorrectionLevel);
        int i = 0;
        for (DataBlock dataBlock : dataBlocks) {
            i += dataBlock.getNumDataCodewords();
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (DataBlock dataBlock2 : dataBlocks) {
            byte[] codewords = dataBlock2.getCodewords();
            int numDataCodewords = dataBlock2.getNumDataCodewords();
            correctErrors(codewords, numDataCodewords);
            int i3 = 0;
            while (i3 < numDataCodewords) {
                bArr[i2] = codewords[i3];
                i3++;
                i2++;
            }
        }
        return DecodedBitStreamParser.decode(bArr, readVersion, errorCorrectionLevel, map);
    }

    public DecoderResult decode(BitMatrix bitMatrix) {
        return decode(bitMatrix, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) {
        ChecksumException e;
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        FormatException e2 = null;
        try {
            return decode(bitMatrixParser, map);
        } catch (FormatException e3) {
            e2 = e3;
            e = null;
            try {
                bitMatrixParser.remask();
                bitMatrixParser.setMirror(true);
                bitMatrixParser.readVersion();
                bitMatrixParser.readFormatInformation();
                bitMatrixParser.mirror();
                DecoderResult decode = decode(bitMatrixParser, map);
                decode.setOther(new QRCodeDecoderMetaData(true));
                return decode;
            } catch (FormatException | ChecksumException e4) {
                if (e2 == null) {
                    throw e;
                }
                throw e2;
            }
        } catch (ChecksumException e5) {
            e = e5;
            bitMatrixParser.remask();
            bitMatrixParser.setMirror(true);
            bitMatrixParser.readVersion();
            bitMatrixParser.readFormatInformation();
            bitMatrixParser.mirror();
            DecoderResult decode2 = decode(bitMatrixParser, map);
            decode2.setOther(new QRCodeDecoderMetaData(true));
            return decode2;
        }
    }

    public DecoderResult decode(boolean[][] zArr) {
        return decode(zArr, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(boolean[][] zArr, Map<DecodeHintType, ?> map) {
        return decode(BitMatrix.parse(zArr), map);
    }
}
