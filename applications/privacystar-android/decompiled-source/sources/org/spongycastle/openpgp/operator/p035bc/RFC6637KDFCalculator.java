package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.openpgp.operator.bc.RFC6637KDFCalculator */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator.class */
class RFC6637KDFCalculator {
    private static final byte[] ANONYMOUS_SENDER = Hex.decode("416E6F6E796D6F75732053656E64657220202020");
    private final PGPDigestCalculator digCalc;
    private final int keyAlgorithm;

    public RFC6637KDFCalculator(PGPDigestCalculator pGPDigestCalculator, int i) {
        this.digCalc = pGPDigestCalculator;
        this.keyAlgorithm = i;
    }

    private static byte[] KDF(PGPDigestCalculator pGPDigestCalculator, ECPoint eCPoint, int i, byte[] bArr) throws IOException {
        byte[] encoded = eCPoint.getXCoord().getEncoded();
        OutputStream outputStream = pGPDigestCalculator.getOutputStream();
        outputStream.write(0);
        outputStream.write(0);
        outputStream.write(0);
        outputStream.write(1);
        outputStream.write(encoded);
        outputStream.write(bArr);
        byte[] bArr2 = new byte[i];
        System.arraycopy(pGPDigestCalculator.getDigest(), 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    private static int getKeyLen(int i) throws PGPException {
        switch (i) {
            case 7:
                return 16;
            case 8:
                return 24;
            case 9:
                return 32;
            default:
                throw new PGPException("unknown symmetric algorithm ID: " + i);
        }
    }

    public byte[] createKey(ECPoint eCPoint, byte[] bArr) throws PGPException {
        try {
            return KDF(this.digCalc, eCPoint, getKeyLen(this.keyAlgorithm), bArr);
        } catch (IOException e) {
            throw new PGPException("Exception performing KDF: " + e.getMessage(), e);
        }
    }
}
