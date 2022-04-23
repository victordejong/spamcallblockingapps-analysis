package org.spongycastle.openpgp.examples;

import java.io.FileInputStream;
import java.io.PrintStream;
import java.security.Security;
import java.util.Iterator;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyRing;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/PubringDump.class */
public class PubringDump {
    public static String getAlgorithm(int i) {
        switch (i) {
            case 1:
                return "RSA_GENERAL";
            case 2:
                return "RSA_ENCRYPT";
            case 3:
                return "RSA_SIGN";
            default:
                switch (i) {
                    case 16:
                        return "ELGAMAL_ENCRYPT";
                    case 17:
                        return "DSA";
                    case 18:
                        return "ECDH";
                    case 19:
                        return "ECDSA";
                    case 20:
                        return "ELGAMAL_GENERAL";
                    case 21:
                        return "DIFFIE_HELLMAN";
                    default:
                        return "unknown";
                }
        }
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        Iterator<PGPPublicKeyRing> keyRings = new PGPPublicKeyRingCollection(PGPUtil.getDecoderStream(new FileInputStream(strArr[0])), new JcaKeyFingerprintCalculator()).getKeyRings();
        while (keyRings.hasNext()) {
            PGPPublicKeyRing next = keyRings.next();
            try {
                next.getPublicKey();
                Iterator<PGPPublicKey> publicKeys = next.getPublicKeys();
                boolean z = true;
                while (publicKeys.hasNext()) {
                    PGPPublicKey next2 = publicKeys.next();
                    if (z) {
                        PrintStream printStream = System.out;
                        printStream.println("Key ID: " + Long.toHexString(next2.getKeyID()));
                        z = false;
                    } else {
                        PrintStream printStream2 = System.out;
                        printStream2.println("Key ID: " + Long.toHexString(next2.getKeyID()) + " (subkey)");
                    }
                    PrintStream printStream3 = System.out;
                    printStream3.println("            Algorithm: " + getAlgorithm(next2.getAlgorithm()));
                    PrintStream printStream4 = System.out;
                    printStream4.println("            Fingerprint: " + new String(Hex.encode(next2.getFingerprint())));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
