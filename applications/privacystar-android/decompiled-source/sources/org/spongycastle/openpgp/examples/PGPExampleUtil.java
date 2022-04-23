package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchProviderException;
import java.util.Iterator;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedDataGenerator;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyRing;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSecretKeyRing;
import org.spongycastle.openpgp.PGPSecretKeyRingCollection;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/PGPExampleUtil.class */
class PGPExampleUtil {
    PGPExampleUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] compressFile(String str, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PGPCompressedDataGenerator pGPCompressedDataGenerator = new PGPCompressedDataGenerator(i);
        PGPUtil.writeFileToLiteralData(pGPCompressedDataGenerator.open(byteArrayOutputStream), 'b', new File(str));
        pGPCompressedDataGenerator.close();
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PGPPrivateKey findSecretKey(PGPSecretKeyRingCollection pGPSecretKeyRingCollection, long j, char[] cArr) throws PGPException, NoSuchProviderException {
        PGPSecretKey secretKey = pGPSecretKeyRingCollection.getSecretKey(j);
        if (secretKey == null) {
            return null;
        }
        return secretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
    }

    static PGPPublicKey readPublicKey(InputStream inputStream) throws IOException, PGPException {
        Iterator<PGPPublicKeyRing> keyRings = new PGPPublicKeyRingCollection(PGPUtil.getDecoderStream(inputStream), new JcaKeyFingerprintCalculator()).getKeyRings();
        while (keyRings.hasNext()) {
            Iterator<PGPPublicKey> publicKeys = keyRings.next().getPublicKeys();
            while (publicKeys.hasNext()) {
                PGPPublicKey next = publicKeys.next();
                if (next.isEncryptionKey()) {
                    return next;
                }
            }
        }
        throw new IllegalArgumentException("Can't find encryption key in key ring.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PGPPublicKey readPublicKey(String str) throws IOException, PGPException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        PGPPublicKey readPublicKey = readPublicKey(bufferedInputStream);
        bufferedInputStream.close();
        return readPublicKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PGPSecretKey readSecretKey(InputStream inputStream) throws IOException, PGPException {
        Iterator<PGPSecretKeyRing> keyRings = new PGPSecretKeyRingCollection(PGPUtil.getDecoderStream(inputStream), new JcaKeyFingerprintCalculator()).getKeyRings();
        while (keyRings.hasNext()) {
            Iterator<PGPSecretKey> secretKeys = keyRings.next().getSecretKeys();
            while (secretKeys.hasNext()) {
                PGPSecretKey next = secretKeys.next();
                if (next.isSigningKey()) {
                    return next;
                }
            }
        }
        throw new IllegalArgumentException("Can't find signing key in key ring.");
    }

    static PGPSecretKey readSecretKey(String str) throws IOException, PGPException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        PGPSecretKey readSecretKey = readSecretKey(bufferedInputStream);
        bufferedInputStream.close();
        return readSecretKey;
    }
}
