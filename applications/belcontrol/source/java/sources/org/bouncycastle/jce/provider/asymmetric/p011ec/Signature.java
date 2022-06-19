package org.bouncycastle.jce.provider.asymmetric.p011ec;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.ECPublicKey;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.NullDigest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.ECDSASigner;
import org.bouncycastle.crypto.signers.ECNRSigner;
import org.bouncycastle.jce.interfaces.ECKey;
import org.bouncycastle.jce.provider.DSABase;
import org.bouncycastle.jce.provider.DSAEncoder;
import org.bouncycastle.jce.provider.JDKKeyFactory;
/* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature.class */
public class Signature extends DSABase {

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$CVCDSAEncoder */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder.class */
    public static class CVCDSAEncoder implements DSAEncoder {
        private CVCDSAEncoder() {
        }

        private byte[] makeUnsigned(BigInteger bigInteger) {
            byte[] byteArray = bigInteger.toByteArray();
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                byte[] bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
                return bArr;
            }
            return byteArray;
        }

        @Override // org.bouncycastle.jce.provider.DSAEncoder
        public BigInteger[] decode(byte[] bArr) {
            int length = bArr.length / 2;
            byte[] bArr2 = new byte[length];
            int length2 = bArr.length / 2;
            byte[] bArr3 = new byte[length2];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            System.arraycopy(bArr, length, bArr3, 0, length2);
            return new BigInteger[]{new BigInteger(1, bArr2), new BigInteger(1, bArr3)};
        }

        @Override // org.bouncycastle.jce.provider.DSAEncoder
        public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2) {
            byte[] makeUnsigned = makeUnsigned(bigInteger);
            byte[] makeUnsigned2 = makeUnsigned(bigInteger2);
            byte[] bArr = new byte[(makeUnsigned.length > makeUnsigned2.length ? makeUnsigned.length : makeUnsigned2.length) * 2];
            System.arraycopy(makeUnsigned, 0, bArr, (bArr.length / 2) - makeUnsigned.length, makeUnsigned.length);
            System.arraycopy(makeUnsigned2, 0, bArr, bArr.length - makeUnsigned2.length, makeUnsigned2.length);
            return bArr;
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$StdDSAEncoder */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder.class */
    public static class StdDSAEncoder implements DSAEncoder {
        private StdDSAEncoder() {
        }

        @Override // org.bouncycastle.jce.provider.DSAEncoder
        public BigInteger[] decode(byte[] bArr) {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) ASN1Object.fromByteArray(bArr);
            return new BigInteger[]{((DERInteger) aSN1Sequence.getObjectAt(0)).getValue(), ((DERInteger) aSN1Sequence.getObjectAt(1)).getValue()};
        }

        @Override // org.bouncycastle.jce.provider.DSAEncoder
        public byte[] encode(BigInteger bigInteger, BigInteger bigInteger2) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(new DERInteger(bigInteger));
            aSN1EncodableVector.add(new DERInteger(bigInteger2));
            return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encodable.DER);
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA.class */
    public static class ecCVCDSA extends Signature {
        public ecCVCDSA() {
            super(new SHA1Digest(), new ECDSASigner(), new CVCDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA224 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA224.class */
    public static class ecCVCDSA224 extends Signature {
        public ecCVCDSA224() {
            super(new SHA224Digest(), new ECDSASigner(), new CVCDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA256 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA256.class */
    public static class ecCVCDSA256 extends Signature {
        public ecCVCDSA256() {
            super(new SHA256Digest(), new ECDSASigner(), new CVCDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA.class */
    public static class ecDSA extends Signature {
        public ecDSA() {
            super(new SHA1Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA224 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA224.class */
    public static class ecDSA224 extends Signature {
        public ecDSA224() {
            super(new SHA224Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA256 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA256.class */
    public static class ecDSA256 extends Signature {
        public ecDSA256() {
            super(new SHA256Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA384 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA384.class */
    public static class ecDSA384 extends Signature {
        public ecDSA384() {
            super(new SHA384Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA512 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA512.class */
    public static class ecDSA512 extends Signature {
        public ecDSA512() {
            super(new SHA512Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSARipeMD160 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSARipeMD160.class */
    public static class ecDSARipeMD160 extends Signature {
        public ecDSARipeMD160() {
            super(new RIPEMD160Digest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSAnone */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSAnone.class */
    public static class ecDSAnone extends Signature {
        public ecDSAnone() {
            super(new NullDigest(), new ECDSASigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR.class */
    public static class ecNR extends Signature {
        public ecNR() {
            super(new SHA1Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR224 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR224.class */
    public static class ecNR224 extends Signature {
        public ecNR224() {
            super(new SHA224Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR256 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR256.class */
    public static class ecNR256 extends Signature {
        public ecNR256() {
            super(new SHA256Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR384 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR384.class */
    public static class ecNR384 extends Signature {
        public ecNR384() {
            super(new SHA384Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    /* renamed from: org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR512 */
    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR512.class */
    public static class ecNR512 extends Signature {
        public ecNR512() {
            super(new SHA512Digest(), new ECNRSigner(), new StdDSAEncoder());
        }
    }

    public Signature(Digest digest, DSA dsa, DSAEncoder dSAEncoder) {
        super(digest, dsa, dSAEncoder);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) {
        if (privateKey instanceof ECKey) {
            AsymmetricKeyParameter generatePrivateKeyParameter = ECUtil.generatePrivateKeyParameter(privateKey);
            this.digest.reset();
            if (secureRandom != null) {
                this.signer.init(true, new ParametersWithRandom(generatePrivateKeyParameter, secureRandom));
                return;
            } else {
                this.signer.init(true, generatePrivateKeyParameter);
                return;
            }
        }
        throw new InvalidKeyException("can't recognise key type in ECDSA based signer");
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) {
        AsymmetricKeyParameter generatePublicKeyParameter;
        if (publicKey instanceof ECPublicKey) {
            generatePublicKeyParameter = ECUtil.generatePublicKeyParameter(publicKey);
        } else {
            try {
                PublicKey createPublicKeyFromDERStream = JDKKeyFactory.createPublicKeyFromDERStream(publicKey.getEncoded());
                if (!(createPublicKeyFromDERStream instanceof ECPublicKey)) {
                    throw new InvalidKeyException("can't recognise key type in ECDSA based signer");
                }
                generatePublicKeyParameter = ECUtil.generatePublicKeyParameter(createPublicKeyFromDERStream);
            } catch (Exception e) {
                throw new InvalidKeyException("can't recognise key type in ECDSA based signer");
            }
        }
        this.digest.reset();
        this.signer.init(false, generatePublicKeyParameter);
    }
}
