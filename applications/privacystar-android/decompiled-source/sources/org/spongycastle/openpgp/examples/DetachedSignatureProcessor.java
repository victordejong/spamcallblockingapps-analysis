package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.Security;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSignature;
import org.spongycastle.openpgp.PGPSignatureGenerator;
import org.spongycastle.openpgp.PGPSignatureList;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentVerifierBuilderProvider;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/DetachedSignatureProcessor.class */
public class DetachedSignatureProcessor {
    private static void createSignature(String str, InputStream inputStream, OutputStream outputStream, char[] cArr, boolean z) throws GeneralSecurityException, IOException, PGPException {
        OutputStream outputStream2 = outputStream;
        if (z) {
            outputStream2 = new ArmoredOutputStream(outputStream);
        }
        PGPSecretKey readSecretKey = PGPExampleUtil.readSecretKey(inputStream);
        PGPPrivateKey extractPrivateKey = readSecretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(new JcaPGPContentSignerBuilder(readSecretKey.getPublicKey().getAlgorithm(), 2).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        pGPSignatureGenerator.init(0, extractPrivateKey);
        BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(outputStream2);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        while (true) {
            int read = bufferedInputStream.read();
            if (read < 0) {
                break;
            }
            pGPSignatureGenerator.update((byte) read);
        }
        bufferedInputStream.close();
        pGPSignatureGenerator.generate().encode(bCPGOutputStream);
        if (z) {
            outputStream2.close();
        }
    }

    private static void createSignature(String str, String str2, String str3, char[] cArr, boolean z) throws GeneralSecurityException, IOException, PGPException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str2));
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
        createSignature(str, bufferedInputStream, bufferedOutputStream, cArr, z);
        bufferedOutputStream.close();
        bufferedInputStream.close();
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr[0].equals("-s")) {
            if (strArr[1].equals("-a")) {
                String str = strArr[2];
                String str2 = strArr[3];
                createSignature(str, str2, strArr[2] + ".asc", strArr[4].toCharArray(), true);
                return;
            }
            String str3 = strArr[1];
            String str4 = strArr[2];
            createSignature(str3, str4, strArr[1] + ".bpg", strArr[3].toCharArray(), false);
        } else if (strArr[0].equals("-v")) {
            verifySignature(strArr[1], strArr[2], strArr[3]);
        } else {
            System.err.println("usage: DetachedSignatureProcessor [-s [-a] file keyfile passPhrase]|[-v file sigFile keyFile]");
        }
    }

    private static void verifySignature(String str, InputStream inputStream, InputStream inputStream2) throws GeneralSecurityException, IOException, PGPException {
        Object nextObject = new JcaPGPObjectFactory(PGPUtil.getDecoderStream(inputStream)).nextObject();
        PGPSignatureList pGPSignatureList = nextObject instanceof PGPCompressedData ? (PGPSignatureList) new JcaPGPObjectFactory(((PGPCompressedData) nextObject).getDataStream()).nextObject() : (PGPSignatureList) nextObject;
        PGPPublicKeyRingCollection pGPPublicKeyRingCollection = new PGPPublicKeyRingCollection(PGPUtil.getDecoderStream(inputStream2), new JcaKeyFingerprintCalculator());
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        PGPSignature pGPSignature = pGPSignatureList.get(0);
        pGPSignature.init(new JcaPGPContentVerifierBuilderProvider().setProvider(BouncyCastleProvider.PROVIDER_NAME), pGPPublicKeyRingCollection.getPublicKey(pGPSignature.getKeyID()));
        while (true) {
            int read = bufferedInputStream.read();
            if (read < 0) {
                break;
            }
            pGPSignature.update((byte) read);
        }
        bufferedInputStream.close();
        if (pGPSignature.verify()) {
            System.out.println("signature verified.");
        } else {
            System.out.println("signature verification failed.");
        }
    }

    private static void verifySignature(String str, String str2, String str3) throws GeneralSecurityException, IOException, PGPException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str2));
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str3));
        verifySignature(str, bufferedInputStream, bufferedInputStream2);
        bufferedInputStream2.close();
        bufferedInputStream.close();
    }
}
