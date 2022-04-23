package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.BCPGObject;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.bcpg.DSASecretBCPGKey;
import org.spongycastle.bcpg.ECDSAPublicBCPGKey;
import org.spongycastle.bcpg.ECSecretBCPGKey;
import org.spongycastle.bcpg.ElGamalSecretBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.RSASecretBCPGKey;
import org.spongycastle.bcpg.S2K;
import org.spongycastle.bcpg.SecretKeyPacket;
import org.spongycastle.bcpg.SecretSubkeyPacket;
import org.spongycastle.bcpg.UserAttributePacket;
import org.spongycastle.bcpg.UserIDPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.openpgp.operator.PBEProtectionRemoverFactory;
import org.spongycastle.openpgp.operator.PBESecretKeyDecryptor;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSecretKey.class */
public class PGPSecretKey {
    PGPPublicKey pub;
    SecretKeyPacket secret;

    public PGPSecretKey(int i, PGPKeyPair pGPKeyPair, String str, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(i, pGPKeyPair, str, null, pGPSignatureSubpacketVector, pGPSignatureSubpacketVector2, pGPContentSignerBuilder, pBESecretKeyEncryptor);
    }

    public PGPSecretKey(int i, PGPKeyPair pGPKeyPair, String str, PGPDigestCalculator pGPDigestCalculator, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(pGPKeyPair.getPrivateKey(), certifiedPublicKey(i, pGPKeyPair, str, pGPSignatureSubpacketVector, pGPSignatureSubpacketVector2, pGPContentSignerBuilder), pGPDigestCalculator, true, pBESecretKeyEncryptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPSecretKey(SecretKeyPacket secretKeyPacket, PGPPublicKey pGPPublicKey) {
        this.secret = secretKeyPacket;
        this.pub = pGPPublicKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPSecretKey(PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PGPDigestCalculator pGPDigestCalculator, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(pGPPrivateKey, pGPPublicKey, pGPDigestCalculator, false, pBESecretKeyEncryptor);
    }

    public PGPSecretKey(PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PGPDigestCalculator pGPDigestCalculator, boolean z, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this.pub = pGPPublicKey;
        this.secret = buildSecretKeyPacket(z, pGPPrivateKey, pGPPublicKey, pBESecretKeyEncryptor, pGPDigestCalculator);
    }

    private static SecretKeyPacket buildSecretKeyPacket(boolean z, PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PBESecretKeyEncryptor pBESecretKeyEncryptor, PGPDigestCalculator pGPDigestCalculator) throws PGPException {
        int i;
        BCPGObject bCPGObject = (BCPGObject) pGPPrivateKey.getPrivateKeyDataPacket();
        if (bCPGObject == null) {
            return z ? new SecretKeyPacket(pGPPublicKey.publicPk, 0, null, null, new byte[0]) : new SecretSubkeyPacket(pGPPublicKey.publicPk, 0, null, null, new byte[0]);
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(byteArrayOutputStream);
            bCPGOutputStream.writeObject(bCPGObject);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bCPGOutputStream.write(checksum(pGPDigestCalculator, byteArray, byteArray.length));
            int algorithm = pBESecretKeyEncryptor != null ? pBESecretKeyEncryptor.getAlgorithm() : 0;
            if (algorithm == 0) {
                return z ? new SecretKeyPacket(pGPPublicKey.publicPk, algorithm, null, null, byteArrayOutputStream.toByteArray()) : new SecretSubkeyPacket(pGPPublicKey.publicPk, algorithm, null, null, byteArrayOutputStream.toByteArray());
            }
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            byte[] encryptKeyData = pBESecretKeyEncryptor.encryptKeyData(byteArray2, 0, byteArray2.length);
            byte[] cipherIV = pBESecretKeyEncryptor.getCipherIV();
            S2K s2k = pBESecretKeyEncryptor.getS2K();
            if (pGPDigestCalculator == null) {
                i = 255;
            } else if (pGPDigestCalculator.getAlgorithm() != 2) {
                throw new PGPException("only SHA1 supported for key checksum calculations.");
            } else {
                i = 254;
            }
            return z ? new SecretKeyPacket(pGPPublicKey.publicPk, algorithm, i, s2k, cipherIV, encryptKeyData) : new SecretSubkeyPacket(pGPPublicKey.publicPk, algorithm, i, s2k, cipherIV, encryptKeyData);
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception encrypting key", e2);
        }
    }

    private static PGPPublicKey certifiedPublicKey(int i, PGPKeyPair pGPKeyPair, String str, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder) throws PGPException {
        try {
            PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(pGPContentSignerBuilder);
            pGPSignatureGenerator.init(i, pGPKeyPair.getPrivateKey());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketVector);
            pGPSignatureGenerator.setUnhashedSubpackets(pGPSignatureSubpacketVector2);
            try {
                return PGPPublicKey.addCertification(pGPKeyPair.getPublicKey(), str, pGPSignatureGenerator.generateCertification(str, pGPKeyPair.getPublicKey()));
            } catch (Exception e) {
                throw new PGPException("exception doing certification: " + e, e);
            }
        } catch (Exception e2) {
            throw new PGPException("creating signature generator: " + e2, e2);
        }
    }

    private static byte[] checksum(PGPDigestCalculator pGPDigestCalculator, byte[] bArr, int i) throws PGPException {
        if (pGPDigestCalculator != null) {
            OutputStream outputStream = pGPDigestCalculator.getOutputStream();
            try {
                outputStream.write(bArr, 0, i);
                outputStream.close();
                return pGPDigestCalculator.getDigest();
            } catch (Exception e) {
                throw new PGPException("checksum digest calculation failed: " + e.getMessage(), e);
            }
        } else {
            int i2 = 0;
            for (int i3 = 0; i3 != i; i3++) {
                i2 += bArr[i3] & 255;
            }
            return new byte[]{(byte) (i2 >> 8), (byte) i2};
        }
    }

    public static PGPSecretKey copyWithNewPassword(PGPSecretKey pGPSecretKey, PBESecretKeyDecryptor pBESecretKeyDecryptor, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        byte[] bArr;
        int i;
        int i2;
        byte[] bArr2;
        S2K s2k;
        byte[] bArr3;
        if (pGPSecretKey.isPrivateKeyEmpty()) {
            throw new PGPException("no private key in this SecretKey - public key present only.");
        }
        byte[] extractKeyData = pGPSecretKey.extractKeyData(pBESecretKeyDecryptor);
        int s2KUsage = pGPSecretKey.secret.getS2KUsage();
        if (pBESecretKeyEncryptor == null || pBESecretKeyEncryptor.getAlgorithm() == 0) {
            if (pGPSecretKey.secret.getS2KUsage() == 254) {
                bArr = new byte[extractKeyData.length - 18];
                System.arraycopy(extractKeyData, 0, bArr, 0, bArr.length - 2);
                byte[] checksum = checksum(null, bArr, bArr.length - 2);
                bArr[bArr.length - 2] = checksum[0];
                bArr[bArr.length - 1] = checksum[1];
            } else {
                bArr = extractKeyData;
            }
            bArr2 = null;
            s2k = null;
            i2 = 0;
            i = 0;
        } else {
            if (s2KUsage == 0) {
                s2KUsage = 255;
            }
            if (pGPSecretKey.secret.getPublicKeyPacket().getVersion() < 4) {
                byte[] key = pBESecretKeyEncryptor.getKey();
                byte[] bArr4 = new byte[extractKeyData.length];
                if (pBESecretKeyEncryptor.getHashAlgorithm() != 1) {
                    throw new PGPException("MD5 Digest Calculator required for version 3 key encryptor.");
                }
                byte[] bArr5 = null;
                int i3 = 0;
                for (int i4 = 0; i4 != 4; i4++) {
                    byte b = extractKeyData[i3];
                    int i5 = i3 + 1;
                    int i6 = (((b << 8) | (extractKeyData[i5] & 255)) + 7) / 8;
                    bArr4[i3] = extractKeyData[i3];
                    bArr4[i5] = extractKeyData[i5];
                    if (i4 == 0) {
                        bArr3 = pBESecretKeyEncryptor.encryptKeyData(key, extractKeyData, i3 + 2, i6);
                        bArr5 = pBESecretKeyEncryptor.getCipherIV();
                    } else {
                        byte[] bArr6 = new byte[bArr5.length];
                        System.arraycopy(bArr4, i3 - bArr5.length, bArr6, 0, bArr6.length);
                        bArr3 = pBESecretKeyEncryptor.encryptKeyData(key, bArr6, extractKeyData, i3 + 2, i6);
                    }
                    System.arraycopy(bArr3, 0, bArr4, i3 + 2, bArr3.length);
                    i3 += i6 + 2;
                }
                bArr4[i3] = extractKeyData[i3];
                int i7 = i3 + 1;
                bArr4[i7] = extractKeyData[i7];
                s2k = pBESecretKeyEncryptor.getS2K();
                i2 = pBESecretKeyEncryptor.getAlgorithm();
                i = s2KUsage;
                bArr = bArr4;
                bArr2 = bArr5;
            } else {
                bArr = pBESecretKeyEncryptor.encryptKeyData(extractKeyData, 0, extractKeyData.length);
                bArr2 = pBESecretKeyEncryptor.getCipherIV();
                s2k = pBESecretKeyEncryptor.getS2K();
                i2 = pBESecretKeyEncryptor.getAlgorithm();
                i = s2KUsage;
            }
        }
        return new PGPSecretKey(pGPSecretKey.secret instanceof SecretSubkeyPacket ? new SecretSubkeyPacket(pGPSecretKey.secret.getPublicKeyPacket(), i2, i, s2k, bArr2, bArr) : new SecretKeyPacket(pGPSecretKey.secret.getPublicKeyPacket(), i2, i, s2k, bArr2, bArr), pGPSecretKey.pub);
    }

    private byte[] extractKeyData(PBESecretKeyDecryptor pBESecretKeyDecryptor) throws PGPException {
        byte[] secretKeyData = this.secret.getSecretKeyData();
        byte[] bArr = secretKeyData;
        if (this.secret.getEncAlgorithm() != 0) {
            try {
                if (this.secret.getPublicKeyPacket().getVersion() == 4) {
                    bArr = pBESecretKeyDecryptor.recoverKeyData(this.secret.getEncAlgorithm(), pBESecretKeyDecryptor.makeKeyFromPassPhrase(this.secret.getEncAlgorithm(), this.secret.getS2K()), this.secret.getIV(), secretKeyData, 0, secretKeyData.length);
                    boolean z = this.secret.getS2KUsage() == 254;
                    byte[] checksum = checksum(z ? pBESecretKeyDecryptor.getChecksumCalculator(2) : null, bArr, z ? bArr.length - 20 : bArr.length - 2);
                    for (int i = 0; i != checksum.length; i++) {
                        if (checksum[i] != bArr[(bArr.length - checksum.length) + i]) {
                            throw new PGPException("checksum mismatch at " + i + " of " + checksum.length);
                        }
                    }
                } else {
                    byte[] makeKeyFromPassPhrase = pBESecretKeyDecryptor.makeKeyFromPassPhrase(this.secret.getEncAlgorithm(), this.secret.getS2K());
                    byte[] bArr2 = new byte[secretKeyData.length];
                    byte[] bArr3 = new byte[this.secret.getIV().length];
                    System.arraycopy(this.secret.getIV(), 0, bArr3, 0, bArr3.length);
                    int i2 = 0;
                    for (int i3 = 0; i3 != 4; i3++) {
                        byte b = secretKeyData[i2];
                        int i4 = i2 + 1;
                        int i5 = (((b << 8) | (secretKeyData[i4] & 255)) + 7) / 8;
                        bArr2[i2] = secretKeyData[i2];
                        bArr2[i4] = secretKeyData[i4];
                        int i6 = i2 + 2;
                        byte[] recoverKeyData = pBESecretKeyDecryptor.recoverKeyData(this.secret.getEncAlgorithm(), makeKeyFromPassPhrase, bArr3, secretKeyData, i6, i5);
                        System.arraycopy(recoverKeyData, 0, bArr2, i6, recoverKeyData.length);
                        i2 += i5 + 2;
                        if (i3 != 3) {
                            System.arraycopy(secretKeyData, i2 - bArr3.length, bArr3, 0, bArr3.length);
                        }
                    }
                    bArr2[i2] = secretKeyData[i2];
                    int i7 = i2 + 1;
                    bArr2[i7] = secretKeyData[i7];
                    int i8 = (secretKeyData[i7] & 255) | ((secretKeyData[i2] << 8) & 65280);
                    int i9 = 0;
                    for (int i10 = 0; i10 < bArr2.length - 2; i10++) {
                        i9 += bArr2[i10] & 255;
                    }
                    int i11 = i9 & 65535;
                    if (i11 != i8) {
                        throw new PGPException("checksum mismatch: passphrase wrong, expected " + Integer.toHexString(i8) + " found " + Integer.toHexString(i11));
                    }
                    bArr = bArr2;
                }
            } catch (PGPException e) {
                throw e;
            } catch (Exception e2) {
                throw new PGPException("Exception decrypting key", e2);
            }
        }
        return bArr;
    }

    private static byte[] getDValue(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, String str) throws IOException, PGPException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected")) {
            String readString = SXprUtils.readString(inputStream, inputStream.read());
            SXprUtils.skipOpenParenthesis(inputStream);
            S2K parseS2K = SXprUtils.parseS2K(inputStream);
            byte[] readBytes = SXprUtils.readBytes(inputStream, inputStream.read());
            SXprUtils.skipCloseParenthesis(inputStream);
            byte[] readBytes2 = SXprUtils.readBytes(inputStream, inputStream.read());
            PBESecretKeyDecryptor createDecryptor = pBEProtectionRemoverFactory.createDecryptor(readString);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(createDecryptor.recoverKeyData(7, createDecryptor.makeKeyFromPassPhrase(7, parseS2K), readBytes, readBytes2, 0, readBytes2.length));
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.readString(byteArrayInputStream, byteArrayInputStream.read());
            return SXprUtils.readBytes(byteArrayInputStream, byteArrayInputStream.read());
        }
        throw new PGPException("protected block not found");
    }

    public static PGPSecretKey parseSecretKeyFromSExpr(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, PGPPublicKey pGPPublicKey) throws IOException, PGPException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected-private-key")) {
            SXprUtils.skipOpenParenthesis(inputStream);
            if (SXprUtils.readString(inputStream, inputStream.read()).equals("ecc")) {
                SXprUtils.skipOpenParenthesis(inputStream);
                SXprUtils.readString(inputStream, inputStream.read());
                String readString = SXprUtils.readString(inputStream, inputStream.read());
                SXprUtils.skipCloseParenthesis(inputStream);
                SXprUtils.skipOpenParenthesis(inputStream);
                if (SXprUtils.readString(inputStream, inputStream.read()).equals("q")) {
                    SXprUtils.readBytes(inputStream, inputStream.read());
                    SXprUtils.skipCloseParenthesis(inputStream);
                    return new PGPSecretKey(new SecretKeyPacket(pGPPublicKey.getPublicKeyPacket(), 0, null, null, new ECSecretBCPGKey(new BigInteger(1, getDValue(inputStream, pBEProtectionRemoverFactory, readString))).getEncoded()), pGPPublicKey);
                }
                throw new PGPException("no q value found");
            }
            throw new PGPException("no curve details found");
        }
        throw new PGPException("unknown key type found");
    }

    public static PGPSecretKey parseSecretKeyFromSExpr(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected-private-key")) {
            SXprUtils.skipOpenParenthesis(inputStream);
            if (SXprUtils.readString(inputStream, inputStream.read()).equals("ecc")) {
                SXprUtils.skipOpenParenthesis(inputStream);
                SXprUtils.readString(inputStream, inputStream.read());
                String readString = SXprUtils.readString(inputStream, inputStream.read());
                String str = readString;
                if (readString.startsWith("NIST ")) {
                    str = readString.substring("NIST ".length());
                }
                SXprUtils.skipCloseParenthesis(inputStream);
                SXprUtils.skipOpenParenthesis(inputStream);
                if (SXprUtils.readString(inputStream, inputStream.read()).equals("q")) {
                    PublicKeyPacket publicKeyPacket = new PublicKeyPacket(19, new Date(), new ECDSAPublicBCPGKey(ECNamedCurveTable.getOID(str), new BigInteger(1, SXprUtils.readBytes(inputStream, inputStream.read()))));
                    SXprUtils.skipCloseParenthesis(inputStream);
                    return new PGPSecretKey(new SecretKeyPacket(publicKeyPacket, 0, null, null, new ECSecretBCPGKey(new BigInteger(1, getDValue(inputStream, pBEProtectionRemoverFactory, str))).getEncoded()), new PGPPublicKey(publicKeyPacket, keyFingerPrintCalculator));
                }
                throw new PGPException("no q value found");
            }
            throw new PGPException("no curve details found");
        }
        throw new PGPException("unknown key type found");
    }

    public static PGPSecretKey replacePublicKey(PGPSecretKey pGPSecretKey, PGPPublicKey pGPPublicKey) {
        if (pGPPublicKey.getKeyID() == pGPSecretKey.getKeyID()) {
            return new PGPSecretKey(pGPSecretKey.secret, pGPPublicKey);
        }
        throw new IllegalArgumentException("keyIDs do not match");
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream = outputStream instanceof BCPGOutputStream ? (BCPGOutputStream) outputStream : new BCPGOutputStream(outputStream);
        bCPGOutputStream.writePacket(this.secret);
        if (this.pub.trustPk != null) {
            bCPGOutputStream.writePacket(this.pub.trustPk);
        }
        if (this.pub.subSigs == null) {
            for (int i = 0; i != this.pub.keySigs.size(); i++) {
                ((PGPSignature) this.pub.keySigs.get(i)).encode(bCPGOutputStream);
            }
            for (int i2 = 0; i2 != this.pub.ids.size(); i2++) {
                if (this.pub.ids.get(i2) instanceof UserIDPacket) {
                    bCPGOutputStream.writePacket((UserIDPacket) this.pub.ids.get(i2));
                } else {
                    bCPGOutputStream.writePacket(new UserAttributePacket(((PGPUserAttributeSubpacketVector) this.pub.ids.get(i2)).toSubpacketArray()));
                }
                if (this.pub.idTrusts.get(i2) != null) {
                    bCPGOutputStream.writePacket((ContainedPacket) this.pub.idTrusts.get(i2));
                }
                ArrayList arrayList = (ArrayList) this.pub.idSigs.get(i2);
                for (int i3 = 0; i3 != arrayList.size(); i3++) {
                    ((PGPSignature) arrayList.get(i3)).encode(bCPGOutputStream);
                }
            }
            return;
        }
        for (int i4 = 0; i4 != this.pub.subSigs.size(); i4++) {
            ((PGPSignature) this.pub.subSigs.get(i4)).encode(bCPGOutputStream);
        }
    }

    public PGPPrivateKey extractPrivateKey(PBESecretKeyDecryptor pBESecretKeyDecryptor) throws PGPException {
        if (isPrivateKeyEmpty()) {
            return null;
        }
        PublicKeyPacket publicKeyPacket = this.secret.getPublicKeyPacket();
        try {
            BCPGInputStream bCPGInputStream = new BCPGInputStream(new ByteArrayInputStream(extractKeyData(pBESecretKeyDecryptor)));
            int algorithm = publicKeyPacket.getAlgorithm();
            switch (algorithm) {
                case 1:
                case 2:
                case 3:
                    return new PGPPrivateKey(getKeyID(), publicKeyPacket, new RSASecretBCPGKey(bCPGInputStream));
                default:
                    switch (algorithm) {
                        case 16:
                        case 20:
                            return new PGPPrivateKey(getKeyID(), publicKeyPacket, new ElGamalSecretBCPGKey(bCPGInputStream));
                        case 17:
                            return new PGPPrivateKey(getKeyID(), publicKeyPacket, new DSASecretBCPGKey(bCPGInputStream));
                        case 18:
                        case 19:
                            return new PGPPrivateKey(getKeyID(), publicKeyPacket, new ECSecretBCPGKey(bCPGInputStream));
                        default:
                            throw new PGPException("unknown public key algorithm encountered");
                    }
            }
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception constructing key", e2);
        }
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int getKeyEncryptionAlgorithm() {
        return this.secret.getEncAlgorithm();
    }

    public long getKeyID() {
        return this.pub.getKeyID();
    }

    public PGPPublicKey getPublicKey() {
        return this.pub;
    }

    public S2K getS2K() {
        return this.secret.getS2K();
    }

    public int getS2KUsage() {
        return this.secret.getS2KUsage();
    }

    public Iterator getUserAttributes() {
        return this.pub.getUserAttributes();
    }

    public Iterator getUserIDs() {
        return this.pub.getUserIDs();
    }

    public boolean isMasterKey() {
        return this.pub.isMasterKey();
    }

    public boolean isPrivateKeyEmpty() {
        byte[] secretKeyData = this.secret.getSecretKeyData();
        boolean z = true;
        if (secretKeyData != null) {
            z = secretKeyData.length < 1;
        }
        return z;
    }

    public boolean isSigningKey() {
        int algorithm = this.pub.getAlgorithm();
        boolean z = true;
        if (algorithm != 1) {
            z = true;
            if (algorithm != 3) {
                z = true;
                if (algorithm != 17) {
                    z = true;
                    if (algorithm != 19) {
                        z = algorithm == 20;
                    }
                }
            }
        }
        return z;
    }
}
