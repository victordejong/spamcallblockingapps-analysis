package org.bouncycastle.openssl;

import java.security.Provider;
import java.security.Security;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.bouncycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMUtilities.class */
public final class PEMUtilities {
    private static final Map KEYSIZES;
    private static final Set PKCS5_SCHEME_1;
    private static final Set PKCS5_SCHEME_2;

    static {
        HashMap hashMap = new HashMap();
        KEYSIZES = hashMap;
        HashSet hashSet = new HashSet();
        PKCS5_SCHEME_1 = hashSet;
        HashSet hashSet2 = new HashSet();
        PKCS5_SCHEME_2 = hashSet2;
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD2AndRC2_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD5AndRC2_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithSHA1AndRC2_CBC);
        hashSet2.add(PKCSObjectIdentifiers.id_PBES2);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.des_EDE3_CBC;
        hashSet2.add(aSN1ObjectIdentifier);
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_aes128_CBC;
        hashSet2.add(aSN1ObjectIdentifier2);
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_aes192_CBC;
        hashSet2.add(aSN1ObjectIdentifier3);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_aes256_CBC;
        hashSet2.add(aSN1ObjectIdentifier4);
        hashMap.put(aSN1ObjectIdentifier.getId(), new Integer(192));
        hashMap.put(aSN1ObjectIdentifier2.getId(), new Integer(128));
        hashMap.put(aSN1ObjectIdentifier3.getId(), new Integer(192));
        hashMap.put(aSN1ObjectIdentifier4.getId(), new Integer(256));
    }

    public static byte[] crypt(boolean z, String str, byte[] bArr, char[] cArr, String str2, byte[] bArr2) {
        Provider provider;
        if (str != null) {
            Provider provider2 = Security.getProvider(str);
            if (provider2 == null) {
                throw new EncryptionException("cannot find provider: " + str);
            }
            provider = provider2;
        } else {
            provider = null;
        }
        return crypt(z, provider, bArr, cArr, str2, bArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [javax.crypto.Cipher] */
    /* JADX WARN: Type inference failed for: r0v37, types: [javax.crypto.spec.RC2ParameterSpec] */
    /* JADX WARN: Type inference failed for: r0v38, types: [javax.crypto.spec.RC2ParameterSpec] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.String] */
    public static byte[] crypt(boolean z, Provider provider, byte[] bArr, char[] cArr, String str, byte[] bArr2) {
        String str2;
        String str3;
        SecretKey secretKey;
        SecretKey secretKey2;
        SecretKey ivParameterSpec = new IvParameterSpec(bArr2);
        str.endsWith("-CFB");
        if ("NoPadding" != 0) {
            str3 = "CFB";
            str2 = "NoPadding";
        } else {
            str3 = "CBC";
            str2 = "PKCS5Padding";
        }
        if (str.endsWith("-ECB") || "DES-EDE".equals(str) || "DES-EDE3".equals(str)) {
            ivParameterSpec = null;
            str3 = "ECB";
        }
        if (str.endsWith("-OFB")) {
            str3 = "OFB";
            str2 = "OFB";
        }
        str.startsWith("DES-EDE");
        if (1 != 0) {
            SecretKey key = getKey(cArr, "DESede", 24, bArr2, !str.startsWith("DES-EDE3"));
            secretKey = key;
            secretKey2 = key;
        } else if (str.startsWith("DES-")) {
            SecretKey key2 = getKey(cArr, "DES", 8, bArr2);
            secretKey2 = key2;
            secretKey = key2;
        } else if (str.startsWith("BF-")) {
            SecretKey key3 = getKey(cArr, "Blowfish", 16, bArr2);
            secretKey2 = key3;
            secretKey = key3;
        } else {
            str.startsWith("RC2-");
            int i = 128;
            if (128 != 0) {
                if (str.startsWith("RC2-40-")) {
                    i = 40;
                } else if (str.startsWith("RC2-64-")) {
                    i = 64;
                }
                secretKey = getKey(cArr, "RC2", i / 8, bArr2);
                SecretKey rC2ParameterSpec = ivParameterSpec == null ? new RC2ParameterSpec(i) : new RC2ParameterSpec(i, bArr2);
                ivParameterSpec = rC2ParameterSpec;
                secretKey2 = rC2ParameterSpec;
            } else if (!str.startsWith("AES-")) {
                throw new EncryptionException("unknown encryption with private key");
            } else {
                byte[] bArr3 = bArr2;
                if (bArr2.length > 8) {
                    bArr3 = new byte[8];
                    System.arraycopy(bArr2, 0, bArr3, 0, 8);
                }
                if (!str.startsWith("AES-128-")) {
                    if (str.startsWith("AES-192-")) {
                        i = 192;
                    } else if (!str.startsWith("AES-256-")) {
                        throw new EncryptionException("unknown AES encryption with private key");
                    } else {
                        i = 256;
                    }
                }
                SecretKey key4 = getKey(cArr, "AES", i / 8, bArr3);
                secretKey = key4;
                secretKey2 = key4;
            }
        }
        try {
            Cipher cipher = z ? Cipher.getInstance(secretKey2 + "/" + str3 + "/" + str2, provider) : 2;
            ?? r0 = ivParameterSpec;
            if (r0 == 0) {
                r0.init(cipher == 1 ? 1 : 0, secretKey);
            } else {
                r0.init(cipher == 1 ? 1 : 0, secretKey, ivParameterSpec);
            }
            return r0.doFinal(bArr);
        } catch (Exception e) {
            throw new EncryptionException("exception using cipher - please check password and data.", e);
        }
    }

    public static SecretKey generateSecretKeyForPKCS5Scheme2(String str, char[] cArr, byte[] bArr, int i) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator();
        pKCS5S2ParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr, i);
        return new SecretKeySpec(((KeyParameter) pKCS5S2ParametersGenerator.generateDerivedParameters(getKeySize(str))).getKey(), str);
    }

    private static SecretKey getKey(char[] cArr, String str, int i, byte[] bArr) {
        return getKey(cArr, str, i, bArr, false);
    }

    private static SecretKey getKey(char[] cArr, String str, int i, byte[] bArr, boolean z) {
        OpenSSLPBEParametersGenerator openSSLPBEParametersGenerator = new OpenSSLPBEParametersGenerator();
        openSSLPBEParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr);
        byte[] key = ((KeyParameter) openSSLPBEParametersGenerator.generateDerivedParameters(i * 8)).getKey();
        if (z && key.length >= 24) {
            System.arraycopy(key, 0, key, 16, 8);
        }
        return new SecretKeySpec(key, str);
    }

    public static int getKeySize(String str) {
        Map map = KEYSIZES;
        if (map.containsKey(str)) {
            return ((Integer) map.get(str)).intValue();
        }
        throw new IllegalStateException("no key size for algorithm: " + str);
    }

    public static boolean isPKCS12(DERObjectIdentifier dERObjectIdentifier) {
        return dERObjectIdentifier.getId().startsWith(PKCSObjectIdentifiers.pkcs_12PbeIds.getId());
    }

    public static boolean isPKCS5Scheme1(DERObjectIdentifier dERObjectIdentifier) {
        return PKCS5_SCHEME_1.contains(dERObjectIdentifier);
    }

    public static boolean isPKCS5Scheme2(DERObjectIdentifier dERObjectIdentifier) {
        return PKCS5_SCHEME_2.contains(dERObjectIdentifier);
    }
}
