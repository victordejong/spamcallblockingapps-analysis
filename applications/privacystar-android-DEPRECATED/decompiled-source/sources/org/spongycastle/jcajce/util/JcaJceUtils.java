package org.spongycastle.jcajce.util;

import java.io.IOException;
import java.security.AlgorithmParameters;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/util/JcaJceUtils.class */
public class JcaJceUtils {
    private JcaJceUtils() {
    }

    public static ASN1Encodable extractParameters(AlgorithmParameters algorithmParameters) throws IOException {
        ASN1Primitive aSN1Primitive;
        try {
            aSN1Primitive = ASN1Primitive.fromByteArray(algorithmParameters.getEncoded("ASN.1"));
        } catch (Exception e) {
            aSN1Primitive = ASN1Primitive.fromByteArray(algorithmParameters.getEncoded());
        }
        return aSN1Primitive;
    }

    public static String getDigestAlgName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCSObjectIdentifiers.md5.equals(aSN1ObjectIdentifier) ? "MD5" : OIWObjectIdentifiers.idSHA1.equals(aSN1ObjectIdentifier) ? "SHA1" : NISTObjectIdentifiers.id_sha224.equals(aSN1ObjectIdentifier) ? "SHA224" : NISTObjectIdentifiers.id_sha256.equals(aSN1ObjectIdentifier) ? "SHA256" : NISTObjectIdentifiers.id_sha384.equals(aSN1ObjectIdentifier) ? "SHA384" : NISTObjectIdentifiers.id_sha512.equals(aSN1ObjectIdentifier) ? "SHA512" : TeleTrusTObjectIdentifiers.ripemd128.equals(aSN1ObjectIdentifier) ? "RIPEMD128" : TeleTrusTObjectIdentifiers.ripemd160.equals(aSN1ObjectIdentifier) ? "RIPEMD160" : TeleTrusTObjectIdentifiers.ripemd256.equals(aSN1ObjectIdentifier) ? "RIPEMD256" : CryptoProObjectIdentifiers.gostR3411.equals(aSN1ObjectIdentifier) ? "GOST3411" : aSN1ObjectIdentifier.getId();
    }

    public static void loadParameters(AlgorithmParameters algorithmParameters, ASN1Encodable aSN1Encodable) throws IOException {
        try {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded(), "ASN.1");
        } catch (Exception e) {
            algorithmParameters.init(aSN1Encodable.toASN1Primitive().getEncoded());
        }
    }
}
