package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPEncryptedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataList;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPOnePassSignatureList;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyEncryptedData;
import org.spongycastle.openpgp.PGPSecretKeyRingCollection;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcePGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/KeyBasedFileProcessor.class */
public class KeyBasedFileProcessor {
    private static void decryptFile(InputStream inputStream, InputStream inputStream2, char[] cArr, String str) throws IOException, NoSuchProviderException {
        try {
            JcaPGPObjectFactory jcaPGPObjectFactory = new JcaPGPObjectFactory(PGPUtil.getDecoderStream(inputStream));
            Object nextObject = jcaPGPObjectFactory.nextObject();
            Iterator encryptedDataObjects = (nextObject instanceof PGPEncryptedDataList ? (PGPEncryptedDataList) nextObject : (PGPEncryptedDataList) jcaPGPObjectFactory.nextObject()).getEncryptedDataObjects();
            PGPSecretKeyRingCollection pGPSecretKeyRingCollection = new PGPSecretKeyRingCollection(PGPUtil.getDecoderStream(inputStream2), new JcaKeyFingerprintCalculator());
            PGPPrivateKey pGPPrivateKey = null;
            PGPPublicKeyEncryptedData pGPPublicKeyEncryptedData = null;
            while (pGPPrivateKey == null && encryptedDataObjects.hasNext()) {
                pGPPublicKeyEncryptedData = (PGPPublicKeyEncryptedData) encryptedDataObjects.next();
                pGPPrivateKey = PGPExampleUtil.findSecretKey(pGPSecretKeyRingCollection, pGPPublicKeyEncryptedData.getKeyID(), cArr);
            }
            if (pGPPrivateKey == null) {
                throw new IllegalArgumentException("secret key for message not found.");
            }
            Object nextObject2 = new JcaPGPObjectFactory(pGPPublicKeyEncryptedData.getDataStream(new JcePublicKeyDataDecryptorFactoryBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(pGPPrivateKey))).nextObject();
            Object obj = nextObject2;
            if (nextObject2 instanceof PGPCompressedData) {
                obj = new JcaPGPObjectFactory(((PGPCompressedData) nextObject2).getDataStream()).nextObject();
            }
            if (obj instanceof PGPLiteralData) {
                PGPLiteralData pGPLiteralData = (PGPLiteralData) obj;
                String fileName = pGPLiteralData.getFileName();
                String str2 = fileName;
                if (fileName.length() == 0) {
                    str2 = str;
                }
                InputStream inputStream3 = pGPLiteralData.getInputStream();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
                Streams.pipeAll(inputStream3, bufferedOutputStream);
                bufferedOutputStream.close();
                if (!pGPPublicKeyEncryptedData.isIntegrityProtected()) {
                    System.err.println("no message integrity check");
                } else if (!pGPPublicKeyEncryptedData.verify()) {
                    System.err.println("message failed integrity check");
                } else {
                    System.err.println("message integrity check passed");
                }
            } else if (obj instanceof PGPOnePassSignatureList) {
                throw new PGPException("encrypted message contains a signed message - not literal data.");
            } else {
                throw new PGPException("message is not a simple encrypted file - type unknown.");
            }
        } catch (PGPException e) {
            System.err.println(e);
            if (e.getUnderlyingException() != null) {
                e.getUnderlyingException().printStackTrace();
            }
        }
    }

    private static void decryptFile(String str, String str2, char[] cArr, String str3) throws IOException, NoSuchProviderException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str2));
        decryptFile(bufferedInputStream, bufferedInputStream2, cArr, str3);
        bufferedInputStream2.close();
        bufferedInputStream.close();
    }

    private static void encryptFile(OutputStream outputStream, String str, PGPPublicKey pGPPublicKey, boolean z, boolean z2) throws IOException, NoSuchProviderException {
        OutputStream outputStream2 = outputStream;
        if (z) {
            outputStream2 = new ArmoredOutputStream(outputStream);
        }
        try {
            byte[] compressFile = PGPExampleUtil.compressFile(str, 1);
            PGPEncryptedDataGenerator pGPEncryptedDataGenerator = new PGPEncryptedDataGenerator(new JcePGPDataEncryptorBuilder(3).setWithIntegrityPacket(z2).setSecureRandom(new SecureRandom()).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            pGPEncryptedDataGenerator.addMethod(new JcePublicKeyKeyEncryptionMethodGenerator(pGPPublicKey).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            OutputStream open = pGPEncryptedDataGenerator.open(outputStream2, compressFile.length);
            open.write(compressFile);
            open.close();
            if (z) {
                outputStream2.close();
            }
        } catch (PGPException e) {
            System.err.println(e);
            if (e.getUnderlyingException() != null) {
                e.getUnderlyingException().printStackTrace();
            }
        }
    }

    private static void encryptFile(String str, String str2, String str3, boolean z, boolean z2) throws IOException, NoSuchProviderException, PGPException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        encryptFile(bufferedOutputStream, str2, PGPExampleUtil.readPublicKey(str3), z, z2);
        bufferedOutputStream.close();
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr.length == 0) {
            System.err.println("usage: KeyBasedFileProcessor -e|-d [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]");
            return;
        }
        boolean z = false;
        if (strArr[0].equals("-e")) {
            if (strArr[1].equals("-a") || strArr[1].equals("-ai") || strArr[1].equals("-ia")) {
                String str = strArr[2] + ".asc";
                String str2 = strArr[2];
                String str3 = strArr[3];
                if (strArr[1].indexOf(105) > 0) {
                    z = true;
                }
                encryptFile(str, str2, str3, true, z);
            } else if (strArr[1].equals("-i")) {
                encryptFile(strArr[2] + ".bpg", strArr[2], strArr[3], false, true);
            } else {
                encryptFile(strArr[1] + ".bpg", strArr[1], strArr[2], false, false);
            }
        } else if (strArr[0].equals("-d")) {
            decryptFile(strArr[1], strArr[2], strArr[3].toCharArray(), new File(strArr[1]).getName() + ".out");
        } else {
            System.err.println("usage: KeyBasedFileProcessor -d|-e [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]");
        }
    }
}
