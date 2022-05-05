package org.spongycastle.openpgp.operator;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/RFC6637Utils.class */
public class RFC6637Utils {
    private static final byte[] ANONYMOUS_SENDER = Hex.decode("416E6F6E796D6F75732053656E64657220202020");

    private RFC6637Utils() {
    }

    public static byte[] createUserKeyingMaterial(PublicKeyPacket publicKeyPacket, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException, PGPException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) publicKeyPacket.getKey();
        byte[] encoded = eCDHPublicBCPGKey.getCurveOID().getEncoded();
        byteArrayOutputStream.write(encoded, 1, encoded.length - 1);
        byteArrayOutputStream.write(publicKeyPacket.getAlgorithm());
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(1);
        byteArrayOutputStream.write(eCDHPublicBCPGKey.getHashAlgorithm());
        byteArrayOutputStream.write(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
        byteArrayOutputStream.write(ANONYMOUS_SENDER);
        byteArrayOutputStream.write(keyFingerPrintCalculator.calculateFingerprint(publicKeyPacket));
        return byteArrayOutputStream.toByteArray();
    }

    public static String getAgreementAlgorithm(PublicKeyPacket publicKeyPacket) {
        ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) publicKeyPacket.getKey();
        switch (eCDHPublicBCPGKey.getHashAlgorithm()) {
            case 8:
                return "ECCDHwithSHA256CKDF";
            case 9:
                return "ECCDHwithSHA384CKDF";
            case 10:
                return "ECCDHwithSHA512CKDF";
            default:
                throw new IllegalArgumentException("Unknown hash algorithm specified: " + ((int) eCDHPublicBCPGKey.getHashAlgorithm()));
        }
    }

    public static ASN1ObjectIdentifier getKeyEncryptionOID(int i) throws PGPException {
        switch (i) {
            case 7:
                return NISTObjectIdentifiers.id_aes128_wrap;
            case 8:
                return NISTObjectIdentifiers.id_aes192_wrap;
            case 9:
                return NISTObjectIdentifiers.id_aes256_wrap;
            default:
                throw new PGPException("unknown symmetric algorithm ID: " + i);
        }
    }
}
