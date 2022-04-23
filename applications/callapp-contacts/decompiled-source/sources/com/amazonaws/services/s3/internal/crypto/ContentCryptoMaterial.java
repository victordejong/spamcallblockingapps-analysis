package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.kms.model.DecryptRequest;
import com.amazonaws.services.kms.model.EncryptRequest;
import com.amazonaws.services.s3.KeyWrapException;
import com.amazonaws.services.s3.model.CryptoMode;
import com.amazonaws.services.s3.model.EncryptionMaterials;
import com.amazonaws.services.s3.model.EncryptionMaterialsAccessor;
import com.amazonaws.services.s3.model.ExtraMaterialsDescription;
import com.amazonaws.services.s3.model.KMSEncryptionMaterials;
import com.amazonaws.services.s3.model.MaterialsDescriptionProvider;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.json.JsonUtils;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.Provider;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial.class */
final class ContentCryptoMaterial {

    /* renamed from: a  reason: collision with root package name */
    final CipherLite f6850a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6851b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f6852c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f6853d;

    ContentCryptoMaterial(Map<String, String> map, byte[] bArr, String str, CipherLite cipherLite) {
        this.f6850a = cipherLite;
        this.f6851b = str;
        this.f6853d = (byte[]) bArr.clone();
        this.f6852c = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentCryptoMaterial a(ObjectMetadata objectMetadata, EncryptionMaterialsAccessor encryptionMaterialsAccessor, Provider provider, long[] jArr, ExtraMaterialsDescription extraMaterialsDescription, boolean z, AWSKMSClient aWSKMSClient) {
        KMSEncryptionMaterials kMSEncryptionMaterials;
        byte[] bArr;
        Map<String, String> userMetadata = objectMetadata.getUserMetadata();
        String str = userMetadata.get("x-amz-key-v2");
        String str2 = str;
        if (str == null) {
            str2 = userMetadata.get("x-amz-key");
            if (str2 == null) {
                throw new AmazonClientException("Content encrypting key not found.");
            }
        }
        byte[] decode = Base64.decode(str2);
        byte[] decode2 = Base64.decode(userMetadata.get("x-amz-iv"));
        if (decode == null || decode2 == null) {
            throw new AmazonClientException("Content encrypting key or IV not found.");
        }
        String str3 = userMetadata.get("x-amz-matdesc");
        String str4 = userMetadata.get("x-amz-wrap-alg");
        boolean a2 = KMSSecuredCEK.a(str4);
        Map<String, String> a3 = a(str3);
        Map<String, String> mergeInto = (a2 || extraMaterialsDescription == null) ? a3 : extraMaterialsDescription.mergeInto(a3);
        if (a2) {
            KMSEncryptionMaterials kMSEncryptionMaterials2 = new KMSEncryptionMaterials(a3.get(KMSEncryptionMaterials.CUSTOMER_MASTER_KEY_ID));
            kMSEncryptionMaterials2.addDescriptions(a3);
            kMSEncryptionMaterials = kMSEncryptionMaterials2;
        } else {
            kMSEncryptionMaterials = encryptionMaterialsAccessor == null ? null : encryptionMaterialsAccessor.getEncryptionMaterials(mergeInto);
            if (kMSEncryptionMaterials == null) {
                throw new AmazonClientException("Unable to retrieve the client encryption materials");
            }
        }
        String str5 = userMetadata.get("x-amz-cek-alg");
        boolean z2 = jArr != null;
        ContentCryptoScheme a4 = ContentCryptoScheme.a(str5, z2);
        if (z2) {
            bArr = a4.a(decode2, jArr[0]);
        } else {
            int f = a4.f();
            bArr = decode2;
            if (f > 0) {
                int parseInt = Integer.parseInt(userMetadata.get("x-amz-tag-len"));
                if (f == parseInt) {
                    bArr = decode2;
                } else {
                    throw new AmazonClientException("Unsupported tag length: " + parseInt + ", expected: " + f);
                }
            }
        }
        if (!z || str4 != null) {
            return new ContentCryptoMaterial(mergeInto, decode, str4, a4.a(a(decode, str4, kMSEncryptionMaterials, provider, a4, aWSKMSClient), bArr, 2, provider));
        }
        throw b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentCryptoMaterial a(Map<String, String> map, EncryptionMaterialsAccessor encryptionMaterialsAccessor, Provider provider, long[] jArr, ExtraMaterialsDescription extraMaterialsDescription, boolean z, AWSKMSClient aWSKMSClient) {
        EncryptionMaterials encryptionMaterials;
        byte[] bArr;
        String str = map.get("x-amz-key-v2");
        String str2 = str;
        if (str == null) {
            str2 = map.get("x-amz-key");
            if (str2 == null) {
                throw new AmazonClientException("Content encrypting key not found.");
            }
        }
        byte[] decode = Base64.decode(str2);
        byte[] decode2 = Base64.decode(map.get("x-amz-iv"));
        if (decode == null || decode2 == null) {
            throw new AmazonClientException("Necessary encryption info not found in the instruction file ".concat(String.valueOf(map)));
        }
        String str3 = map.get("x-amz-wrap-alg");
        boolean a2 = KMSSecuredCEK.a(str3);
        Map<String, String> a3 = a(map.get("x-amz-matdesc"));
        Map<String, String> mergeInto = (extraMaterialsDescription == null || a2) ? a3 : extraMaterialsDescription.mergeInto(a3);
        if (a2) {
            encryptionMaterials = new KMSEncryptionMaterials(a3.get(KMSEncryptionMaterials.CUSTOMER_MASTER_KEY_ID));
            encryptionMaterials.addDescriptions(a3);
        } else {
            encryptionMaterials = encryptionMaterialsAccessor == null ? null : encryptionMaterialsAccessor.getEncryptionMaterials(mergeInto);
            if (encryptionMaterials == null) {
                throw new AmazonClientException("Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file ".concat(String.valueOf(map)));
            }
        }
        String str4 = map.get("x-amz-cek-alg");
        boolean z2 = jArr != null;
        ContentCryptoScheme a4 = ContentCryptoScheme.a(str4, z2);
        if (z2) {
            bArr = a4.a(decode2, jArr[0]);
        } else {
            int f = a4.f();
            bArr = decode2;
            if (f > 0) {
                int parseInt = Integer.parseInt(map.get("x-amz-tag-len"));
                if (f == parseInt) {
                    bArr = decode2;
                } else {
                    throw new AmazonClientException("Unsupported tag length: " + parseInt + ", expected: " + f);
                }
            }
        }
        if (!z || str3 != null) {
            return new ContentCryptoMaterial(mergeInto, decode, str3, a4.a(a(decode, str3, encryptionMaterials, provider, a4, aWSKMSClient), bArr, 2, provider));
        }
        throw b();
    }

    public static ContentCryptoMaterial a(SecretKey secretKey, byte[] bArr, ContentCryptoScheme contentCryptoScheme, Provider provider, SecuredCEK securedCEK) {
        return new ContentCryptoMaterial(securedCEK.f6880c, securedCEK.f6878a, securedCEK.f6879b, contentCryptoScheme.a(secretKey, bArr, 1, provider));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContentCryptoMaterial a(SecretKey secretKey, byte[] bArr, EncryptionMaterials encryptionMaterials, S3CryptoScheme s3CryptoScheme, Provider provider, AWSKMSClient aWSKMSClient, AmazonWebServiceRequest amazonWebServiceRequest) {
        return a(secretKey, bArr, s3CryptoScheme.f6873b, provider, a(secretKey, encryptionMaterials, s3CryptoScheme.f6872a, S3CryptoScheme.a(), provider, aWSKMSClient, amazonWebServiceRequest));
    }

    private static SecuredCEK a(SecretKey secretKey, EncryptionMaterials encryptionMaterials, S3KeyWrapScheme s3KeyWrapScheme, SecureRandom secureRandom, Provider provider, AWSKMSClient aWSKMSClient, AmazonWebServiceRequest amazonWebServiceRequest) {
        if (encryptionMaterials.isKMSEnabled()) {
            Map<String, String> a2 = a(encryptionMaterials, amazonWebServiceRequest);
            EncryptRequest withPlaintext = new EncryptRequest().withEncryptionContext(a2).withKeyId(encryptionMaterials.getCustomerMasterKeyId()).withPlaintext(ByteBuffer.wrap(secretKey.getEncoded()));
            withPlaintext.withGeneralProgressListener(amazonWebServiceRequest.getGeneralProgressListener()).withRequestMetricCollector(amazonWebServiceRequest.getRequestMetricCollector());
            return new KMSSecuredCEK(BinaryUtils.a(aWSKMSClient.a(withPlaintext).getCiphertextBlob()), a2);
        }
        Map<String, String> materialsDescription = encryptionMaterials.getMaterialsDescription();
        Key key = encryptionMaterials.getKeyPair() != null ? encryptionMaterials.getKeyPair().getPublic() : encryptionMaterials.getSymmetricKey();
        String a3 = s3KeyWrapScheme.a(key, provider);
        try {
            if (a3 != null) {
                Cipher instance = provider == null ? Cipher.getInstance(a3) : Cipher.getInstance(a3, provider);
                instance.init(3, key, secureRandom);
                return new SecuredCEK(instance.wrap(secretKey), a3, materialsDescription);
            }
            byte[] encoded = secretKey.getEncoded();
            String algorithm = key.getAlgorithm();
            Cipher instance2 = provider != null ? Cipher.getInstance(algorithm, provider) : Cipher.getInstance(algorithm);
            instance2.init(1, key);
            return new SecuredCEK(instance2.doFinal(encoded), null, materialsDescription);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to encrypt symmetric key", e);
        }
    }

    private String a() {
        Map<String, String> map = this.f6852c;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = Collections.emptyMap();
        }
        return JsonUtils.mapToString(map2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> a(EncryptionMaterials encryptionMaterials, AmazonWebServiceRequest amazonWebServiceRequest) {
        Map<String, String> materialsDescription = encryptionMaterials.getMaterialsDescription();
        Map<String, String> map = materialsDescription;
        if (amazonWebServiceRequest instanceof MaterialsDescriptionProvider) {
            Map<String, String> materialsDescription2 = ((MaterialsDescriptionProvider) amazonWebServiceRequest).getMaterialsDescription();
            map = materialsDescription;
            if (materialsDescription2 != null) {
                map = new TreeMap<>(materialsDescription);
                map.putAll(materialsDescription2);
            }
        }
        return map;
    }

    private static Map<String, String> a(String str) {
        Map<String, String> jsonToMap = JsonUtils.jsonToMap(str);
        if (jsonToMap == null) {
            return null;
        }
        return Collections.unmodifiableMap(jsonToMap);
    }

    private static SecretKey a(byte[] bArr, String str, EncryptionMaterials encryptionMaterials, Provider provider, ContentCryptoScheme contentCryptoScheme, AWSKMSClient aWSKMSClient) {
        Key key;
        if (KMSSecuredCEK.a(str)) {
            return new SecretKeySpec(BinaryUtils.a(aWSKMSClient.a(new DecryptRequest().withEncryptionContext(encryptionMaterials.getMaterialsDescription()).withCiphertextBlob(ByteBuffer.wrap(bArr))).getPlaintext()), contentCryptoScheme.a());
        }
        if (encryptionMaterials.getKeyPair() != null) {
            key = encryptionMaterials.getKeyPair().getPrivate();
            if (key == null) {
                throw new AmazonClientException("Key encrypting key not available");
            }
        } else {
            key = encryptionMaterials.getSymmetricKey();
            if (key == null) {
                throw new AmazonClientException("Key encrypting key not available");
            }
        }
        try {
            if (str != null) {
                Cipher instance = provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
                instance.init(4, key);
                return (SecretKey) instance.unwrap(bArr, str, 3);
            }
            Cipher instance2 = provider != null ? Cipher.getInstance(key.getAlgorithm(), provider) : Cipher.getInstance(key.getAlgorithm());
            instance2.init(2, key);
            return new SecretKeySpec(instance2.doFinal(bArr), "AES");
        } catch (Exception e) {
            throw new AmazonClientException("Unable to decrypt symmetric key from object metadata", e);
        }
    }

    private static KeyWrapException b() {
        return new KeyWrapException("Missing key-wrap for the content-encrypting-key");
    }

    private byte[] c() {
        return (byte[]) this.f6853d.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ObjectMetadata a(ObjectMetadata objectMetadata, CryptoMode cryptoMode) {
        if (cryptoMode != CryptoMode.EncryptionOnly || KMSSecuredCEK.a(this.f6851b)) {
            objectMetadata.addUserMetadata("x-amz-key-v2", Base64.encodeAsString(c()));
            objectMetadata.addUserMetadata("x-amz-iv", Base64.encodeAsString(this.f6850a.f6843b.getIV()));
            objectMetadata.addUserMetadata("x-amz-matdesc", a());
            ContentCryptoScheme contentCryptoScheme = this.f6850a.f6844c;
            objectMetadata.addUserMetadata("x-amz-cek-alg", contentCryptoScheme.b());
            int f = contentCryptoScheme.f();
            if (f > 0) {
                objectMetadata.addUserMetadata("x-amz-tag-len", String.valueOf(f));
            }
            String str = this.f6851b;
            if (str != null) {
                objectMetadata.addUserMetadata("x-amz-wrap-alg", str);
            }
        } else {
            objectMetadata.addUserMetadata("x-amz-key", Base64.encodeAsString(c()));
            objectMetadata.addUserMetadata("x-amz-iv", Base64.encodeAsString(this.f6850a.f6843b.getIV()));
            objectMetadata.addUserMetadata("x-amz-matdesc", a());
        }
        return objectMetadata;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(CryptoMode cryptoMode) {
        HashMap hashMap;
        if (cryptoMode != CryptoMode.EncryptionOnly || KMSSecuredCEK.a(this.f6851b)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("x-amz-key-v2", Base64.encodeAsString(c()));
            hashMap2.put("x-amz-iv", Base64.encodeAsString(this.f6850a.f6843b.getIV()));
            hashMap2.put("x-amz-matdesc", a());
            ContentCryptoScheme contentCryptoScheme = this.f6850a.f6844c;
            hashMap2.put("x-amz-cek-alg", contentCryptoScheme.b());
            int f = contentCryptoScheme.f();
            if (f > 0) {
                hashMap2.put("x-amz-tag-len", String.valueOf(f));
            }
            String str = this.f6851b;
            hashMap = hashMap2;
            if (str != null) {
                hashMap2.put("x-amz-wrap-alg", str);
                hashMap = hashMap2;
            }
        } else {
            hashMap = new HashMap();
            hashMap.put("x-amz-key", Base64.encodeAsString(c()));
            hashMap.put("x-amz-iv", Base64.encodeAsString(this.f6850a.f6843b.getIV()));
            hashMap.put("x-amz-matdesc", a());
        }
        return JsonUtils.mapToString(hashMap);
    }
}
