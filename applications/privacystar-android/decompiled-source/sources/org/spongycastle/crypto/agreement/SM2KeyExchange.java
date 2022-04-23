package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SM3Digest;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ParametersWithID;
import org.spongycastle.crypto.params.SM2KeyExchangePrivateParameters;
import org.spongycastle.crypto.params.SM2KeyExchangePublicParameters;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/SM2KeyExchange.class */
public class SM2KeyExchange {
    private int curveLength;
    private final Digest digest;
    private ECDomainParameters ecParams;
    private ECPrivateKeyParameters ephemeralKey;
    private ECPoint ephemeralPubPoint;
    private boolean initiator;
    private ECPrivateKeyParameters staticKey;
    private ECPoint staticPubPoint;
    private byte[] userID;

    /* renamed from: w */
    private int f1010w;

    public SM2KeyExchange() {
        this(new SM3Digest());
    }

    public SM2KeyExchange(Digest digest) {
        this.digest = digest;
    }

    /* renamed from: S1 */
    private byte[] m196S1(Digest digest, ECPoint eCPoint, byte[] bArr) {
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.update((byte) 2);
        addFieldElement(digest, eCPoint.getAffineYCoord());
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: S2 */
    private byte[] m195S2(Digest digest, ECPoint eCPoint, byte[] bArr) {
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.update((byte) 3);
        addFieldElement(digest, eCPoint.getAffineYCoord());
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private void addFieldElement(Digest digest, ECFieldElement eCFieldElement) {
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.curveLength, eCFieldElement.toBigInteger());
        digest.update(asUnsignedByteArray, 0, asUnsignedByteArray.length);
    }

    private void addUserID(Digest digest, byte[] bArr) {
        int length = bArr.length * 8;
        digest.update((byte) ((length >> 8) & 255));
        digest.update((byte) (length & 255));
        digest.update(bArr, 0, bArr.length);
    }

    private byte[] calculateInnerHash(Digest digest, ECPoint eCPoint, byte[] bArr, byte[] bArr2, ECPoint eCPoint2, ECPoint eCPoint3) {
        addFieldElement(digest, eCPoint.getAffineXCoord());
        digest.update(bArr, 0, bArr.length);
        digest.update(bArr2, 0, bArr2.length);
        addFieldElement(digest, eCPoint2.getAffineXCoord());
        addFieldElement(digest, eCPoint2.getAffineYCoord());
        addFieldElement(digest, eCPoint3.getAffineXCoord());
        addFieldElement(digest, eCPoint3.getAffineYCoord());
        byte[] bArr3 = new byte[digest.getDigestSize()];
        digest.doFinal(bArr3, 0);
        return bArr3;
    }

    private ECPoint calculateU(SM2KeyExchangePublicParameters sM2KeyExchangePublicParameters) {
        BigInteger mod = this.staticKey.getD().add(reduce(this.ephemeralPubPoint.getAffineXCoord().toBigInteger()).multiply(this.ephemeralKey.getD())).mod(this.ecParams.getN());
        return sM2KeyExchangePublicParameters.getStaticPublicKey().getQ().add(sM2KeyExchangePublicParameters.getEphemeralPublicKey().getQ().multiply(reduce(sM2KeyExchangePublicParameters.getEphemeralPublicKey().getQ().getAffineXCoord().toBigInteger())).normalize()).normalize().multiply(this.ecParams.getH().multiply(mod)).normalize();
    }

    private byte[] getZ(Digest digest, byte[] bArr, ECPoint eCPoint) {
        addUserID(digest, bArr);
        addFieldElement(digest, this.ecParams.getCurve().getA());
        addFieldElement(digest, this.ecParams.getCurve().getB());
        addFieldElement(digest, this.ecParams.getG().getAffineXCoord());
        addFieldElement(digest, this.ecParams.getG().getAffineYCoord());
        addFieldElement(digest, eCPoint.getAffineXCoord());
        addFieldElement(digest, eCPoint.getAffineYCoord());
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] kdf(ECPoint eCPoint, byte[] bArr, byte[] bArr2, int i) {
        int digestSize = this.digest.getDigestSize() * 8;
        byte[] bArr3 = new byte[this.digest.getDigestSize()];
        byte[] bArr4 = new byte[(i + 7) / 8];
        int i2 = 1;
        int i3 = 0;
        for (int i4 = 1; i4 <= ((i + digestSize) - 1) / digestSize; i4++) {
            addFieldElement(this.digest, eCPoint.getAffineXCoord());
            addFieldElement(this.digest, eCPoint.getAffineYCoord());
            this.digest.update(bArr, 0, bArr.length);
            this.digest.update(bArr2, 0, bArr2.length);
            this.digest.update((byte) (i2 >> 24));
            this.digest.update((byte) (i2 >> 16));
            this.digest.update((byte) (i2 >> 8));
            this.digest.update((byte) i2);
            this.digest.doFinal(bArr3, 0);
            if (bArr3.length + i3 < bArr4.length) {
                System.arraycopy(bArr3, 0, bArr4, i3, bArr3.length);
            } else {
                System.arraycopy(bArr3, 0, bArr4, i3, bArr4.length - i3);
            }
            i3 += bArr3.length;
            i2++;
        }
        return bArr4;
    }

    private BigInteger reduce(BigInteger bigInteger) {
        return bigInteger.and(BigInteger.valueOf(1L).shiftLeft(this.f1010w).subtract(BigInteger.valueOf(1L))).setBit(this.f1010w);
    }

    public byte[] calculateKey(int i, CipherParameters cipherParameters) {
        byte[] bArr;
        SM2KeyExchangePublicParameters sM2KeyExchangePublicParameters;
        if (cipherParameters instanceof ParametersWithID) {
            ParametersWithID parametersWithID = (ParametersWithID) cipherParameters;
            sM2KeyExchangePublicParameters = (SM2KeyExchangePublicParameters) parametersWithID.getParameters();
            bArr = parametersWithID.getID();
        } else {
            sM2KeyExchangePublicParameters = (SM2KeyExchangePublicParameters) cipherParameters;
            bArr = new byte[0];
        }
        byte[] z = getZ(this.digest, this.userID, this.staticPubPoint);
        byte[] z2 = getZ(this.digest, bArr, sM2KeyExchangePublicParameters.getStaticPublicKey().getQ());
        ECPoint calculateU = calculateU(sM2KeyExchangePublicParameters);
        return this.initiator ? kdf(calculateU, z, z2, i) : kdf(calculateU, z2, z, i);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v26, types: [byte[], byte[][]] */
    public byte[][] calculateKeyWithConfirmation(int i, byte[] bArr, CipherParameters cipherParameters) {
        byte[] bArr2;
        SM2KeyExchangePublicParameters sM2KeyExchangePublicParameters;
        if (cipherParameters instanceof ParametersWithID) {
            ParametersWithID parametersWithID = (ParametersWithID) cipherParameters;
            sM2KeyExchangePublicParameters = (SM2KeyExchangePublicParameters) parametersWithID.getParameters();
            bArr2 = parametersWithID.getID();
        } else {
            sM2KeyExchangePublicParameters = (SM2KeyExchangePublicParameters) cipherParameters;
            bArr2 = new byte[0];
        }
        if (!this.initiator || bArr != null) {
            byte[] z = getZ(this.digest, this.userID, this.staticPubPoint);
            byte[] z2 = getZ(this.digest, bArr2, sM2KeyExchangePublicParameters.getStaticPublicKey().getQ());
            ECPoint calculateU = calculateU(sM2KeyExchangePublicParameters);
            if (this.initiator) {
                byte[] kdf = kdf(calculateU, z, z2, i);
                byte[] calculateInnerHash = calculateInnerHash(this.digest, calculateU, z, z2, this.ephemeralPubPoint, sM2KeyExchangePublicParameters.getEphemeralPublicKey().getQ());
                if (Arrays.constantTimeAreEqual(m196S1(this.digest, calculateU, calculateInnerHash), bArr)) {
                    return new byte[]{kdf, m195S2(this.digest, calculateU, calculateInnerHash)};
                }
                throw new IllegalStateException("confirmation tag mismatch");
            }
            byte[] kdf2 = kdf(calculateU, z2, z, i);
            byte[] calculateInnerHash2 = calculateInnerHash(this.digest, calculateU, z2, z, sM2KeyExchangePublicParameters.getEphemeralPublicKey().getQ(), this.ephemeralPubPoint);
            return new byte[]{kdf2, m196S1(this.digest, calculateU, calculateInnerHash2), m195S2(this.digest, calculateU, calculateInnerHash2)};
        }
        throw new IllegalArgumentException("if initiating, confirmationTag must be set");
    }

    public int getFieldSize() {
        return (this.staticKey.getParameters().getCurve().getFieldSize() + 7) / 8;
    }

    public void init(CipherParameters cipherParameters) {
        SM2KeyExchangePrivateParameters sM2KeyExchangePrivateParameters;
        if (cipherParameters instanceof ParametersWithID) {
            ParametersWithID parametersWithID = (ParametersWithID) cipherParameters;
            sM2KeyExchangePrivateParameters = (SM2KeyExchangePrivateParameters) parametersWithID.getParameters();
            this.userID = parametersWithID.getID();
        } else {
            sM2KeyExchangePrivateParameters = (SM2KeyExchangePrivateParameters) cipherParameters;
            this.userID = new byte[0];
        }
        this.initiator = sM2KeyExchangePrivateParameters.isInitiator();
        this.staticKey = sM2KeyExchangePrivateParameters.getStaticPrivateKey();
        this.ephemeralKey = sM2KeyExchangePrivateParameters.getEphemeralPrivateKey();
        this.ecParams = this.staticKey.getParameters();
        this.staticPubPoint = sM2KeyExchangePrivateParameters.getStaticPublicPoint();
        this.ephemeralPubPoint = sM2KeyExchangePrivateParameters.getEphemeralPublicPoint();
        this.curveLength = (this.ecParams.getCurve().getFieldSize() + 7) / 8;
        this.f1010w = (this.ecParams.getCurve().getFieldSize() / 2) - 1;
    }
}
