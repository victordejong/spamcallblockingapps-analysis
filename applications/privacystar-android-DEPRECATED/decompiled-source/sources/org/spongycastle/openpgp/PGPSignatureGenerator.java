package org.spongycastle.openpgp;

import com.github.rahatarmanahmed.cpv.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Date;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.bcpg.OnePassSignaturePacket;
import org.spongycastle.bcpg.SignaturePacket;
import org.spongycastle.bcpg.SignatureSubpacket;
import org.spongycastle.bcpg.UserAttributeSubpacket;
import org.spongycastle.bcpg.sig.IssuerKeyID;
import org.spongycastle.bcpg.sig.SignatureCreationTime;
import org.spongycastle.openpgp.operator.PGPContentSigner;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSignatureGenerator.class */
public class PGPSignatureGenerator {
    private PGPContentSigner contentSigner;
    private PGPContentSignerBuilder contentSignerBuilder;
    private byte lastb;
    private OutputStream sigOut;
    private int sigType;
    private SignatureSubpacket[] unhashed = new SignatureSubpacket[0];
    private SignatureSubpacket[] hashed = new SignatureSubpacket[0];
    private int providedKeyAlgorithm = -1;

    public PGPSignatureGenerator(PGPContentSignerBuilder pGPContentSignerBuilder) {
        this.contentSignerBuilder = pGPContentSignerBuilder;
    }

    private void blockUpdate(byte[] bArr, int i, int i2) {
        try {
            this.sigOut.write(bArr, i, i2);
        } catch (IOException e) {
            throw new PGPRuntimeOperationException(e.getMessage(), e);
        }
    }

    private void byteUpdate(byte b) {
        try {
            this.sigOut.write(b);
        } catch (IOException e) {
            throw new PGPRuntimeOperationException(e.getMessage(), e);
        }
    }

    private byte[] getEncodedPublicKey(PGPPublicKey pGPPublicKey) throws PGPException {
        try {
            return pGPPublicKey.publicPk.getEncodedContents();
        } catch (IOException e) {
            throw new PGPException("exception preparing key.", e);
        }
    }

    private SignatureSubpacket[] insertSubpacket(SignatureSubpacket[] signatureSubpacketArr, SignatureSubpacket signatureSubpacket) {
        SignatureSubpacket[] signatureSubpacketArr2 = new SignatureSubpacket[signatureSubpacketArr.length + 1];
        signatureSubpacketArr2[0] = signatureSubpacket;
        System.arraycopy(signatureSubpacketArr, 0, signatureSubpacketArr2, 1, signatureSubpacketArr.length);
        return signatureSubpacketArr2;
    }

    private boolean packetPresent(SignatureSubpacket[] signatureSubpacketArr, int i) {
        for (int i2 = 0; i2 != signatureSubpacketArr.length; i2++) {
            if (signatureSubpacketArr[i2].getType() == i) {
                return true;
            }
        }
        return false;
    }

    private void updateWithIdData(int i, byte[] bArr) {
        update((byte) i);
        update((byte) (bArr.length >> 24));
        update((byte) (bArr.length >> 16));
        update((byte) (bArr.length >> 8));
        update((byte) bArr.length);
        update(bArr);
    }

    private void updateWithPublicKey(PGPPublicKey pGPPublicKey) throws PGPException {
        byte[] encodedPublicKey = getEncodedPublicKey(pGPPublicKey);
        update((byte) -103);
        update((byte) (encodedPublicKey.length >> 8));
        update((byte) encodedPublicKey.length);
        update(encodedPublicKey);
    }

    public PGPSignature generate() throws PGPException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        SignatureSubpacket[] insertSubpacket = !packetPresent(this.hashed, 2) ? insertSubpacket(this.hashed, new SignatureCreationTime(false, new Date())) : this.hashed;
        SignatureSubpacket[] insertSubpacket2 = (packetPresent(this.hashed, 16) || packetPresent(this.unhashed, 16)) ? this.unhashed : insertSubpacket(this.unhashed, new IssuerKeyID(false, this.contentSigner.getKeyID()));
        byte b = (byte) 4;
        try {
            byteArrayOutputStream.write(b);
            byteArrayOutputStream.write((byte) this.sigType);
            byteArrayOutputStream.write((byte) this.contentSigner.getKeyAlgorithm());
            byteArrayOutputStream.write((byte) this.contentSigner.getHashAlgorithm());
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            for (int i = 0; i != insertSubpacket.length; i++) {
                insertSubpacket[i].encode(byteArrayOutputStream2);
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            byteArrayOutputStream.write((byte) (byteArray.length >> 8));
            byteArrayOutputStream.write((byte) byteArray.length);
            byteArrayOutputStream.write(byteArray);
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.write(b);
            byteArrayOutputStream.write(-1);
            byteArrayOutputStream.write((byte) (byteArray2.length >> 24));
            byteArrayOutputStream.write((byte) (byteArray2.length >> 16));
            byteArrayOutputStream.write((byte) (byteArray2.length >> 8));
            byteArrayOutputStream.write((byte) byteArray2.length);
            byte[] byteArray3 = byteArrayOutputStream.toByteArray();
            blockUpdate(byteArray3, 0, byteArray3.length);
            MPInteger[] dsaSigToMpi = (this.contentSigner.getKeyAlgorithm() == 3 || this.contentSigner.getKeyAlgorithm() == 1) ? new MPInteger[]{new MPInteger(new BigInteger(1, this.contentSigner.getSignature()))} : PGPUtil.dsaSigToMpi(this.contentSigner.getSignature());
            byte[] digest = this.contentSigner.getDigest();
            return new PGPSignature(new SignaturePacket(this.sigType, this.contentSigner.getKeyID(), this.contentSigner.getKeyAlgorithm(), this.contentSigner.getHashAlgorithm(), insertSubpacket, insertSubpacket2, new byte[]{digest[0], digest[1]}, dsaSigToMpi));
        } catch (IOException e) {
            throw new PGPException("exception encoding hashed data.", e);
        }
    }

    public PGPSignature generateCertification(String str, PGPPublicKey pGPPublicKey) throws PGPException {
        updateWithPublicKey(pGPPublicKey);
        updateWithIdData(180, Strings.toUTF8ByteArray(str));
        return generate();
    }

    public PGPSignature generateCertification(PGPPublicKey pGPPublicKey) throws PGPException {
        if ((this.sigType == 40 || this.sigType == 24) && !pGPPublicKey.isMasterKey()) {
            throw new IllegalArgumentException("certifications involving subkey requires public key of revoking key as well.");
        }
        updateWithPublicKey(pGPPublicKey);
        return generate();
    }

    public PGPSignature generateCertification(PGPPublicKey pGPPublicKey, PGPPublicKey pGPPublicKey2) throws PGPException {
        updateWithPublicKey(pGPPublicKey);
        updateWithPublicKey(pGPPublicKey2);
        return generate();
    }

    public PGPSignature generateCertification(PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector, PGPPublicKey pGPPublicKey) throws PGPException {
        updateWithPublicKey(pGPPublicKey);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            UserAttributeSubpacket[] subpacketArray = pGPUserAttributeSubpacketVector.toSubpacketArray();
            for (int i = 0; i != subpacketArray.length; i++) {
                subpacketArray[i].encode(byteArrayOutputStream);
            }
            updateWithIdData(BuildConfig.VERSION_CODE, byteArrayOutputStream.toByteArray());
            return generate();
        } catch (IOException e) {
            throw new PGPException("cannot encode subpacket array", e);
        }
    }

    public PGPOnePassSignature generateOnePassVersion(boolean z) throws PGPException {
        return new PGPOnePassSignature(new OnePassSignaturePacket(this.sigType, this.contentSigner.getHashAlgorithm(), this.contentSigner.getKeyAlgorithm(), this.contentSigner.getKeyID(), z));
    }

    public void init(int i, PGPPrivateKey pGPPrivateKey) throws PGPException {
        this.contentSigner = this.contentSignerBuilder.build(i, pGPPrivateKey);
        this.sigOut = this.contentSigner.getOutputStream();
        this.sigType = this.contentSigner.getType();
        this.lastb = (byte) 0;
        if (this.providedKeyAlgorithm >= 0 && this.providedKeyAlgorithm != this.contentSigner.getKeyAlgorithm()) {
            throw new PGPException("key algorithm mismatch");
        }
    }

    public void setHashedSubpackets(PGPSignatureSubpacketVector pGPSignatureSubpacketVector) {
        if (pGPSignatureSubpacketVector == null) {
            this.hashed = new SignatureSubpacket[0];
        } else {
            this.hashed = pGPSignatureSubpacketVector.toSubpacketArray();
        }
    }

    public void setUnhashedSubpackets(PGPSignatureSubpacketVector pGPSignatureSubpacketVector) {
        if (pGPSignatureSubpacketVector == null) {
            this.unhashed = new SignatureSubpacket[0];
        } else {
            this.unhashed = pGPSignatureSubpacketVector.toSubpacketArray();
        }
    }

    public void update(byte b) {
        if (this.sigType == 1) {
            if (b == 13) {
                byteUpdate((byte) 13);
                byteUpdate((byte) 10);
            } else if (b != 10) {
                byteUpdate(b);
            } else if (this.lastb != 13) {
                byteUpdate((byte) 13);
                byteUpdate((byte) 10);
            }
            this.lastb = b;
            return;
        }
        byteUpdate(b);
    }

    public void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    public void update(byte[] bArr, int i, int i2) {
        if (this.sigType == 1) {
            for (int i3 = i; i3 != i2 + i; i3++) {
                update(bArr[i3]);
            }
            return;
        }
        blockUpdate(bArr, i, i2);
    }
}
