package org.bouncycastle.ocsp;

import java.security.MessageDigest;
import java.security.Signature;
import java.security.cert.CertStore;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/OCSPUtil.class */
public class OCSPUtil {
    private static Hashtable algorithms = new Hashtable();
    private static Hashtable oids = new Hashtable();
    private static Set noParams = new HashSet();

    static {
        Hashtable hashtable = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.md2WithRSAEncryption;
        hashtable.put("MD2WITHRSAENCRYPTION", aSN1ObjectIdentifier);
        algorithms.put("MD2WITHRSA", aSN1ObjectIdentifier);
        Hashtable hashtable2 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = PKCSObjectIdentifiers.md5WithRSAEncryption;
        hashtable2.put("MD5WITHRSAENCRYPTION", aSN1ObjectIdentifier2);
        algorithms.put("MD5WITHRSA", aSN1ObjectIdentifier2);
        Hashtable hashtable3 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = PKCSObjectIdentifiers.sha1WithRSAEncryption;
        hashtable3.put("SHA1WITHRSAENCRYPTION", aSN1ObjectIdentifier3);
        algorithms.put("SHA1WITHRSA", aSN1ObjectIdentifier3);
        Hashtable hashtable4 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = PKCSObjectIdentifiers.sha224WithRSAEncryption;
        hashtable4.put("SHA224WITHRSAENCRYPTION", aSN1ObjectIdentifier4);
        algorithms.put("SHA224WITHRSA", aSN1ObjectIdentifier4);
        Hashtable hashtable5 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = PKCSObjectIdentifiers.sha256WithRSAEncryption;
        hashtable5.put("SHA256WITHRSAENCRYPTION", aSN1ObjectIdentifier5);
        algorithms.put("SHA256WITHRSA", aSN1ObjectIdentifier5);
        Hashtable hashtable6 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier6 = PKCSObjectIdentifiers.sha384WithRSAEncryption;
        hashtable6.put("SHA384WITHRSAENCRYPTION", aSN1ObjectIdentifier6);
        algorithms.put("SHA384WITHRSA", aSN1ObjectIdentifier6);
        Hashtable hashtable7 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier7 = PKCSObjectIdentifiers.sha512WithRSAEncryption;
        hashtable7.put("SHA512WITHRSAENCRYPTION", aSN1ObjectIdentifier7);
        algorithms.put("SHA512WITHRSA", aSN1ObjectIdentifier7);
        Hashtable hashtable8 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier8 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd160;
        hashtable8.put("RIPEMD160WITHRSAENCRYPTION", aSN1ObjectIdentifier8);
        algorithms.put("RIPEMD160WITHRSA", aSN1ObjectIdentifier8);
        Hashtable hashtable9 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier9 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd128;
        hashtable9.put("RIPEMD128WITHRSAENCRYPTION", aSN1ObjectIdentifier9);
        algorithms.put("RIPEMD128WITHRSA", aSN1ObjectIdentifier9);
        Hashtable hashtable10 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier10 = TeleTrusTObjectIdentifiers.rsaSignatureWithripemd256;
        hashtable10.put("RIPEMD256WITHRSAENCRYPTION", aSN1ObjectIdentifier10);
        algorithms.put("RIPEMD256WITHRSA", aSN1ObjectIdentifier10);
        Hashtable hashtable11 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier11 = X9ObjectIdentifiers.id_dsa_with_sha1;
        hashtable11.put("SHA1WITHDSA", aSN1ObjectIdentifier11);
        algorithms.put("DSAWITHSHA1", aSN1ObjectIdentifier11);
        Hashtable hashtable12 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier12 = NISTObjectIdentifiers.dsa_with_sha224;
        hashtable12.put("SHA224WITHDSA", aSN1ObjectIdentifier12);
        Hashtable hashtable13 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier13 = NISTObjectIdentifiers.dsa_with_sha256;
        hashtable13.put("SHA256WITHDSA", aSN1ObjectIdentifier13);
        Hashtable hashtable14 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier14 = X9ObjectIdentifiers.ecdsa_with_SHA1;
        hashtable14.put("SHA1WITHECDSA", aSN1ObjectIdentifier14);
        algorithms.put("ECDSAWITHSHA1", aSN1ObjectIdentifier14);
        Hashtable hashtable15 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier15 = X9ObjectIdentifiers.ecdsa_with_SHA224;
        hashtable15.put("SHA224WITHECDSA", aSN1ObjectIdentifier15);
        Hashtable hashtable16 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier16 = X9ObjectIdentifiers.ecdsa_with_SHA256;
        hashtable16.put("SHA256WITHECDSA", aSN1ObjectIdentifier16);
        Hashtable hashtable17 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier17 = X9ObjectIdentifiers.ecdsa_with_SHA384;
        hashtable17.put("SHA384WITHECDSA", aSN1ObjectIdentifier17);
        Hashtable hashtable18 = algorithms;
        ASN1ObjectIdentifier aSN1ObjectIdentifier18 = X9ObjectIdentifiers.ecdsa_with_SHA512;
        hashtable18.put("SHA512WITHECDSA", aSN1ObjectIdentifier18);
        Hashtable hashtable19 = algorithms;
        DERObjectIdentifier dERObjectIdentifier = CryptoProObjectIdentifiers.gostR3411_94_with_gostR3410_94;
        hashtable19.put("GOST3411WITHGOST3410", dERObjectIdentifier);
        algorithms.put("GOST3411WITHGOST3410-94", dERObjectIdentifier);
        oids.put(aSN1ObjectIdentifier, "MD2WITHRSA");
        oids.put(aSN1ObjectIdentifier2, "MD5WITHRSA");
        oids.put(aSN1ObjectIdentifier3, "SHA1WITHRSA");
        oids.put(aSN1ObjectIdentifier4, "SHA224WITHRSA");
        oids.put(aSN1ObjectIdentifier5, "SHA256WITHRSA");
        oids.put(aSN1ObjectIdentifier6, "SHA384WITHRSA");
        oids.put(aSN1ObjectIdentifier7, "SHA512WITHRSA");
        oids.put(aSN1ObjectIdentifier8, "RIPEMD160WITHRSA");
        oids.put(aSN1ObjectIdentifier9, "RIPEMD128WITHRSA");
        oids.put(aSN1ObjectIdentifier10, "RIPEMD256WITHRSA");
        oids.put(aSN1ObjectIdentifier11, "SHA1WITHDSA");
        oids.put(aSN1ObjectIdentifier12, "SHA224WITHDSA");
        oids.put(aSN1ObjectIdentifier13, "SHA256WITHDSA");
        oids.put(aSN1ObjectIdentifier14, "SHA1WITHECDSA");
        oids.put(aSN1ObjectIdentifier15, "SHA224WITHECDSA");
        oids.put(aSN1ObjectIdentifier16, "SHA256WITHECDSA");
        oids.put(aSN1ObjectIdentifier17, "SHA384WITHECDSA");
        oids.put(aSN1ObjectIdentifier18, "SHA512WITHECDSA");
        oids.put(dERObjectIdentifier, "GOST3411WITHGOST3410");
        noParams.add(aSN1ObjectIdentifier14);
        noParams.add(aSN1ObjectIdentifier15);
        noParams.add(aSN1ObjectIdentifier16);
        noParams.add(aSN1ObjectIdentifier17);
        noParams.add(aSN1ObjectIdentifier18);
        noParams.add(aSN1ObjectIdentifier11);
        noParams.add(aSN1ObjectIdentifier12);
        noParams.add(aSN1ObjectIdentifier13);
    }

    public static CertStore createCertStoreInstance(String str, CertStoreParameters certStoreParameters, String str2) {
        return str2 == null ? CertStore.getInstance(str, certStoreParameters) : CertStore.getInstance(str, certStoreParameters, str2);
    }

    public static MessageDigest createDigestInstance(String str, String str2) {
        return str2 == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, str2);
    }

    public static Signature createSignatureInstance(String str, String str2) {
        return str2 == null ? Signature.getInstance(str) : Signature.getInstance(str, str2);
    }

    public static CertificateFactory createX509CertificateFactory(String str) {
        return str == null ? CertificateFactory.getInstance("X.509") : CertificateFactory.getInstance("X.509", str);
    }

    public static Iterator getAlgNames() {
        Enumeration keys = algorithms.keys();
        ArrayList arrayList = new ArrayList();
        while (keys.hasMoreElements()) {
            arrayList.add(keys.nextElement());
        }
        return arrayList.iterator();
    }

    public static String getAlgorithmName(DERObjectIdentifier dERObjectIdentifier) {
        return oids.containsKey(dERObjectIdentifier) ? (String) oids.get(dERObjectIdentifier) : dERObjectIdentifier.getId();
    }

    public static DERObjectIdentifier getAlgorithmOID(String str) {
        String upperCase = Strings.toUpperCase(str);
        return algorithms.containsKey(upperCase) ? (DERObjectIdentifier) algorithms.get(upperCase) : new DERObjectIdentifier(upperCase);
    }

    public static AlgorithmIdentifier getSigAlgID(DERObjectIdentifier dERObjectIdentifier) {
        return noParams.contains(dERObjectIdentifier) ? new AlgorithmIdentifier(dERObjectIdentifier) : new AlgorithmIdentifier(dERObjectIdentifier, new DERNull());
    }
}
