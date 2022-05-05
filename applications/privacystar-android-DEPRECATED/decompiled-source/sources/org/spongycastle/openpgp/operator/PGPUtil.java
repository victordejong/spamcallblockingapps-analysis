package org.spongycastle.openpgp.operator;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.bcpg.HashAlgorithmTags;
import org.spongycastle.bcpg.S2K;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPUtil.class */
class PGPUtil implements HashAlgorithmTags {
    PGPUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] makeKeyFromPassPhrase(PGPDigestCalculator pGPDigestCalculator, int i, S2K s2k, char[] cArr) throws PGPException {
        int i2 = 128;
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 7:
            case 11:
                break;
            case 2:
            case 8:
            case 12:
                i2 = 192;
                break;
            case 6:
                i2 = 64;
                break;
            case 9:
            case 10:
            case 13:
                i2 = 256;
                break;
            default:
                throw new PGPException("unknown symmetric algorithm: " + i);
        }
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(cArr);
        byte[] bArr = new byte[(i2 + 7) / 8];
        if (s2k != null) {
            if (s2k.getHashAlgorithm() != pGPDigestCalculator.getAlgorithm()) {
                throw new PGPException("s2k/digestCalculator mismatch");
            }
        } else if (pGPDigestCalculator.getAlgorithm() != 1) {
            throw new PGPException("digestCalculator not for MD5");
        }
        OutputStream outputStream = pGPDigestCalculator.getOutputStream();
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            try {
                if (s2k != null) {
                    for (int i5 = 0; i5 != i4; i5++) {
                        outputStream.write(0);
                    }
                    byte[] iv = s2k.getIV();
                    int type = s2k.getType();
                    if (type != 3) {
                        switch (type) {
                            case 0:
                                outputStream.write(uTF8ByteArray);
                                break;
                            case 1:
                                outputStream.write(iv);
                                outputStream.write(uTF8ByteArray);
                                break;
                            default:
                                throw new PGPException("unknown S2K type: " + s2k.getType());
                        }
                    } else {
                        long iterationCount = s2k.getIterationCount();
                        outputStream.write(iv);
                        outputStream.write(uTF8ByteArray);
                        long length = iterationCount - (iv.length + uTF8ByteArray.length);
                        while (true) {
                            if (length > 0) {
                                if (length < iv.length) {
                                    outputStream.write(iv, 0, (int) length);
                                } else {
                                    outputStream.write(iv);
                                    long length2 = length - iv.length;
                                    if (length2 < uTF8ByteArray.length) {
                                        outputStream.write(uTF8ByteArray, 0, (int) length2);
                                        length = 0;
                                    } else {
                                        outputStream.write(uTF8ByteArray);
                                        length = length2 - uTF8ByteArray.length;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    for (int i6 = 0; i6 != i4; i6++) {
                        outputStream.write(0);
                    }
                    outputStream.write(uTF8ByteArray);
                }
                outputStream.close();
                byte[] digest = pGPDigestCalculator.getDigest();
                if (digest.length > bArr.length - i3) {
                    System.arraycopy(digest, 0, bArr, i3, bArr.length - i3);
                } else {
                    System.arraycopy(digest, 0, bArr, i3, digest.length);
                }
                i3 += digest.length;
                i4++;
            } catch (IOException e) {
                throw new PGPException("exception calculating digest: " + e.getMessage(), e);
            }
        }
        for (int i7 = 0; i7 != uTF8ByteArray.length; i7++) {
            uTF8ByteArray[i7] = (byte) 0;
        }
        return bArr;
    }

    public static byte[] makeKeyFromPassPhrase(PGPDigestCalculatorProvider pGPDigestCalculatorProvider, int i, S2K s2k, char[] cArr) throws PGPException {
        return makeKeyFromPassPhrase(s2k != null ? pGPDigestCalculatorProvider.get(s2k.getHashAlgorithm()) : pGPDigestCalculatorProvider.get(1), i, s2k, cArr);
    }
}
