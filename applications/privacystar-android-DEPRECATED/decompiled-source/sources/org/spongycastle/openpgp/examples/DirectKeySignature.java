package org.spongycastle.openpgp.examples;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.security.Security;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.bcpg.sig.NotationData;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyRing;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSecretKeyRing;
import org.spongycastle.openpgp.PGPSignature;
import org.spongycastle.openpgp.PGPSignatureGenerator;
import org.spongycastle.openpgp.PGPSignatureSubpacketGenerator;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/DirectKeySignature.class */
public class DirectKeySignature {
    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr.length == 1) {
            Iterator signaturesOfType = new PGPPublicKeyRing(PGPUtil.getDecoderStream(new FileInputStream(strArr[0])), new JcaKeyFingerprintCalculator()).getPublicKey().getSignaturesOfType(31);
            while (signaturesOfType.hasNext()) {
                PGPSignature pGPSignature = (PGPSignature) signaturesOfType.next();
                PrintStream printStream = System.out;
                printStream.println("Signature date is: " + pGPSignature.getHashedSubPackets().getSignatureCreationTime());
                NotationData[] notationDataOccurences = pGPSignature.getHashedSubPackets().getNotationDataOccurences();
                for (int i = 0; i < notationDataOccurences.length; i++) {
                    PrintStream printStream2 = System.out;
                    printStream2.println("Found Notaion named '" + notationDataOccurences[i].getNotationName() + "' with content '" + notationDataOccurences[i].getNotationValue() + "'.");
                }
            }
        } else if (strArr.length == 5) {
            PGPSecretKeyRing pGPSecretKeyRing = new PGPSecretKeyRing(PGPUtil.getDecoderStream(new FileInputStream(strArr[0])), new JcaKeyFingerprintCalculator());
            String str = strArr[1];
            PGPPublicKeyRing pGPPublicKeyRing = new PGPPublicKeyRing(PGPUtil.getDecoderStream(new FileInputStream(strArr[2])), new JcaKeyFingerprintCalculator());
            PGPPublicKeyRing pGPPublicKeyRing2 = new PGPPublicKeyRing(new ByteArrayInputStream(signPublicKey(pGPSecretKeyRing.getSecretKey(), str, pGPPublicKeyRing.getPublicKey(), strArr[3], strArr[4])), new JcaKeyFingerprintCalculator());
            ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(new FileOutputStream("SignedKey.asc"));
            pGPPublicKeyRing2.encode(armoredOutputStream);
            armoredOutputStream.flush();
            armoredOutputStream.close();
        } else {
            System.err.println("usage: DirectKeySignature secretKeyFile secretKeyPass publicKeyFile(key to be signed) NotationName NotationValue");
            System.err.println("or: DirectKeySignature signedPublicKeyFile");
        }
    }

    private static byte[] signPublicKey(PGPSecretKey pGPSecretKey, String str, PGPPublicKey pGPPublicKey, String str2, String str3) throws Exception {
        PGPPrivateKey extractPrivateKey = pGPSecretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(str.toCharArray()));
        PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(new JcaPGPContentSignerBuilder(pGPSecretKey.getPublicKey().getAlgorithm(), 2).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        pGPSignatureGenerator.init(31, extractPrivateKey);
        PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator = new PGPSignatureSubpacketGenerator();
        pGPSignatureSubpacketGenerator.setNotationData(true, true, str2, str3);
        pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketGenerator.generate());
        return PGPPublicKey.addCertification(pGPPublicKey, pGPSignatureGenerator.generate()).getEncoded();
    }
}
