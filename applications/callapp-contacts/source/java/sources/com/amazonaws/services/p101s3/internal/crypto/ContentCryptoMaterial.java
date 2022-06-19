package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.kms.model.DecryptRequest;
import com.amazonaws.services.kms.model.EncryptRequest;
import com.amazonaws.services.p101s3.KeyWrapException;
import com.amazonaws.services.p101s3.model.CryptoMode;
import com.amazonaws.services.p101s3.model.EncryptionMaterials;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsAccessor;
import com.amazonaws.services.p101s3.model.ExtraMaterialsDescription;
import com.amazonaws.services.p101s3.model.KMSEncryptionMaterials;
import com.amazonaws.services.p101s3.model.MaterialsDescriptionProvider;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.json.JsonUtils;
import java.nio.ByteBuffer;
import java.security.PrivateKey;
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
/* renamed from: com.amazonaws.services.s3.internal.crypto.ContentCryptoMaterial */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial.class */
final class ContentCryptoMaterial {

    /* renamed from: a */
    final CipherLite f12401a;

    /* renamed from: b */
    private final String f12402b;

    /* renamed from: c */
    private final Map<String, String> f12403c;

    /* renamed from: d */
    private final byte[] f12404d;

    ContentCryptoMaterial(Map<String, String> map, byte[] bArr, String str, CipherLite cipherLite) {
        this.f12401a = cipherLite;
        this.f12402b = str;
        this.f12404d = (byte[]) bArr.clone();
        this.f12403c = map;
    }

    /* renamed from: a */
    public static ContentCryptoMaterial m38380a(ObjectMetadata objectMetadata, EncryptionMaterialsAccessor encryptionMaterialsAccessor, Provider provider, long[] jArr, ExtraMaterialsDescription extraMaterialsDescription, boolean z, AWSKMSClient aWSKMSClient) {
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
        boolean m38342a = KMSSecuredCEK.m38342a(str4);
        Map<String, String> m38379a = m38379a(str3);
        Map<String, String> mergeInto = (m38342a || extraMaterialsDescription == null) ? m38379a : extraMaterialsDescription.mergeInto(m38379a);
        if (m38342a) {
            KMSEncryptionMaterials kMSEncryptionMaterials2 = new KMSEncryptionMaterials(m38379a.get(KMSEncryptionMaterials.CUSTOMER_MASTER_KEY_ID));
            kMSEncryptionMaterials2.addDescriptions(m38379a);
            kMSEncryptionMaterials = kMSEncryptionMaterials2;
        } else {
            kMSEncryptionMaterials = encryptionMaterialsAccessor == null ? null : encryptionMaterialsAccessor.getEncryptionMaterials(mergeInto);
            if (kMSEncryptionMaterials == null) {
                throw new AmazonClientException("Unable to retrieve the client encryption materials");
            }
        }
        String str5 = userMetadata.get("x-amz-cek-alg");
        boolean z2 = jArr != null;
        ContentCryptoScheme m38369a = ContentCryptoScheme.m38369a(str5, z2);
        if (z2) {
            bArr = m38369a.mo38365a(decode2, jArr[0]);
        } else {
            int mo38359f = m38369a.mo38359f();
            bArr = decode2;
            if (mo38359f > 0) {
                int parseInt = Integer.parseInt(userMetadata.get("x-amz-tag-len"));
                if (mo38359f != parseInt) {
                    throw new AmazonClientException("Unsupported tag length: " + parseInt + ", expected: " + mo38359f);
                }
                bArr = decode2;
            }
        }
        if (z && str4 == null) {
            throw m38373b();
        }
        return new ContentCryptoMaterial(mergeInto, decode, str4, m38369a.m38367a(m38374a(decode, str4, kMSEncryptionMaterials, provider, m38369a, aWSKMSClient), bArr, 2, provider));
    }

    /* renamed from: a */
    public static ContentCryptoMaterial m38378a(Map<String, String> map, EncryptionMaterialsAccessor encryptionMaterialsAccessor, Provider provider, long[] jArr, ExtraMaterialsDescription extraMaterialsDescription, boolean z, AWSKMSClient aWSKMSClient) {
        KMSEncryptionMaterials kMSEncryptionMaterials;
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
        boolean m38342a = KMSSecuredCEK.m38342a(str3);
        Map<String, String> m38379a = m38379a(map.get("x-amz-matdesc"));
        Map<String, String> mergeInto = (extraMaterialsDescription == null || m38342a) ? m38379a : extraMaterialsDescription.mergeInto(m38379a);
        if (m38342a) {
            kMSEncryptionMaterials = new KMSEncryptionMaterials(m38379a.get(KMSEncryptionMaterials.CUSTOMER_MASTER_KEY_ID));
            kMSEncryptionMaterials.addDescriptions(m38379a);
        } else {
            kMSEncryptionMaterials = encryptionMaterialsAccessor == null ? null : encryptionMaterialsAccessor.getEncryptionMaterials(mergeInto);
            if (kMSEncryptionMaterials == null) {
                throw new AmazonClientException("Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file ".concat(String.valueOf(map)));
            }
        }
        String str4 = map.get("x-amz-cek-alg");
        boolean z2 = jArr != null;
        ContentCryptoScheme m38369a = ContentCryptoScheme.m38369a(str4, z2);
        if (z2) {
            bArr = m38369a.mo38365a(decode2, jArr[0]);
        } else {
            int mo38359f = m38369a.mo38359f();
            bArr = decode2;
            if (mo38359f > 0) {
                int parseInt = Integer.parseInt(map.get("x-amz-tag-len"));
                if (mo38359f != parseInt) {
                    throw new AmazonClientException("Unsupported tag length: " + parseInt + ", expected: " + mo38359f);
                }
                bArr = decode2;
            }
        }
        if (z && str3 == null) {
            throw m38373b();
        }
        return new ContentCryptoMaterial(mergeInto, decode, str3, m38369a.m38367a(m38374a(decode, str3, kMSEncryptionMaterials, provider, m38369a, aWSKMSClient), bArr, 2, provider));
    }

    /* renamed from: a */
    public static ContentCryptoMaterial m38376a(SecretKey secretKey, byte[] bArr, ContentCryptoScheme contentCryptoScheme, Provider provider, SecuredCEK securedCEK) {
        return new ContentCryptoMaterial(securedCEK.f12449c, securedCEK.f12447a, securedCEK.f12448b, contentCryptoScheme.m38367a(secretKey, bArr, 1, provider));
    }

    /* renamed from: a */
    public static ContentCryptoMaterial m38375a(SecretKey secretKey, byte[] bArr, EncryptionMaterials encryptionMaterials, S3CryptoScheme s3CryptoScheme, Provider provider, AWSKMSClient aWSKMSClient, AmazonWebServiceRequest amazonWebServiceRequest) {
        return m38376a(secretKey, bArr, s3CryptoScheme.f12442b, provider, m38377a(secretKey, encryptionMaterials, s3CryptoScheme.f12441a, S3CryptoScheme.m38308a(), provider, aWSKMSClient, amazonWebServiceRequest));
    }

    /* renamed from: a */
    private static SecuredCEK m38377a(SecretKey secretKey, EncryptionMaterials encryptionMaterials, S3KeyWrapScheme s3KeyWrapScheme, SecureRandom secureRandom, Provider provider, AWSKMSClient aWSKMSClient, AmazonWebServiceRequest amazonWebServiceRequest) {
        if (encryptionMaterials.isKMSEnabled()) {
            Map<String, String> m38382a = m38382a(encryptionMaterials, amazonWebServiceRequest);
            EncryptRequest withPlaintext = new EncryptRequest().withEncryptionContext(m38382a).withKeyId(encryptionMaterials.getCustomerMasterKeyId()).withPlaintext(ByteBuffer.wrap(secretKey.getEncoded()));
            withPlaintext.withGeneralProgressListener(amazonWebServiceRequest.getGeneralProgressListener()).withRequestMetricCollector(amazonWebServiceRequest.getRequestMetricCollector());
            return new KMSSecuredCEK(BinaryUtils.m38260a(aWSKMSClient.m38488a(withPlaintext).getCiphertextBlob()), m38382a);
        }
        Map<String, String> materialsDescription = encryptionMaterials.getMaterialsDescription();
        SecretKey secretKey2 = encryptionMaterials.getKeyPair() != null ? encryptionMaterials.getKeyPair().getPublic() : encryptionMaterials.getSymmetricKey();
        String mo38305a = s3KeyWrapScheme.mo38305a(secretKey2, provider);
        try {
            if (mo38305a != null) {
                Cipher cipher = provider == null ? Cipher.getInstance(mo38305a) : Cipher.getInstance(mo38305a, provider);
                cipher.init(3, secretKey2, secureRandom);
                return new SecuredCEK(cipher.wrap(secretKey), mo38305a, materialsDescription);
            }
            byte[] encoded = secretKey.getEncoded();
            String algorithm = secretKey2.getAlgorithm();
            Cipher cipher2 = provider != null ? Cipher.getInstance(algorithm, provider) : Cipher.getInstance(algorithm);
            cipher2.init(1, secretKey2);
            return new SecuredCEK(cipher2.doFinal(encoded), null, materialsDescription);
        } catch (Exception e) {
            throw new AmazonClientException("Unable to encrypt symmetric key", e);
        }
    }

    /* renamed from: a */
    private String m38384a() {
        Map<String, String> map = this.f12403c;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = Collections.emptyMap();
        }
        return JsonUtils.mapToString(map2);
    }

    /* renamed from: a */
    public static Map<String, String> m38382a(EncryptionMaterials encryptionMaterials, AmazonWebServiceRequest amazonWebServiceRequest) {
        Map<String, String> materialsDescription = encryptionMaterials.getMaterialsDescription();
        TreeMap treeMap = materialsDescription;
        if (amazonWebServiceRequest instanceof MaterialsDescriptionProvider) {
            Map<String, String> materialsDescription2 = ((MaterialsDescriptionProvider) amazonWebServiceRequest).getMaterialsDescription();
            treeMap = materialsDescription;
            if (materialsDescription2 != null) {
                treeMap = new TreeMap(materialsDescription);
                treeMap.putAll(materialsDescription2);
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    private static Map<String, String> m38379a(String str) {
        Map<String, String> jsonToMap = JsonUtils.jsonToMap(str);
        if (jsonToMap == null) {
            return null;
        }
        return Collections.unmodifiableMap(jsonToMap);
    }

    /* renamed from: a */
    private static SecretKey m38374a(byte[] bArr, String str, EncryptionMaterials encryptionMaterials, Provider provider, ContentCryptoScheme contentCryptoScheme, AWSKMSClient aWSKMSClient) {
        PrivateKey privateKey;
        if (KMSSecuredCEK.m38342a(str)) {
            return new SecretKeySpec(BinaryUtils.m38260a(aWSKMSClient.m38489a(new DecryptRequest().withEncryptionContext(encryptionMaterials.getMaterialsDescription()).withCiphertextBlob(ByteBuffer.wrap(bArr))).getPlaintext()), contentCryptoScheme.mo38371a());
        }
        if (encryptionMaterials.getKeyPair() != null) {
            privateKey = encryptionMaterials.getKeyPair().getPrivate();
            if (privateKey == null) {
                throw new AmazonClientException("Key encrypting key not available");
            }
        } else {
            privateKey = encryptionMaterials.getSymmetricKey();
            if (privateKey == null) {
                throw new AmazonClientException("Key encrypting key not available");
            }
        }
        try {
            if (str != null) {
                Cipher cipher = provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
                cipher.init(4, privateKey);
                return (SecretKey) cipher.unwrap(bArr, str, 3);
            }
            Cipher cipher2 = provider != null ? Cipher.getInstance(privateKey.getAlgorithm(), provider) : Cipher.getInstance(privateKey.getAlgorithm());
            cipher2.init(2, privateKey);
            return new SecretKeySpec(cipher2.doFinal(bArr), "AES");
        } catch (Exception e) {
            throw new AmazonClientException("Unable to decrypt symmetric key from object metadata", e);
        }
    }

    /* renamed from: b */
    private static KeyWrapException m38373b() {
        return new KeyWrapException("Missing key-wrap for the content-encrypting-key");
    }

    /* renamed from: c */
    private byte[] m38372c() {
        return (byte[]) this.f12404d.clone();
    }

    /* renamed from: a */
    public final ObjectMetadata m38381a(ObjectMetadata objectMetadata, CryptoMode cryptoMode) {
        if (cryptoMode != CryptoMode.EncryptionOnly || KMSSecuredCEK.m38342a(this.f12402b)) {
            objectMetadata.addUserMetadata("x-amz-key-v2", Base64.encodeAsString(m38372c()));
            objectMetadata.addUserMetadata("x-amz-iv", Base64.encodeAsString(this.f12401a.f12389b.getIV()));
            objectMetadata.addUserMetadata("x-amz-matdesc", m38384a());
            ContentCryptoScheme contentCryptoScheme = this.f12401a.f12390c;
            objectMetadata.addUserMetadata("x-amz-cek-alg", contentCryptoScheme.mo38364b());
            int mo38359f = contentCryptoScheme.mo38359f();
            if (mo38359f > 0) {
                objectMetadata.addUserMetadata("x-amz-tag-len", String.valueOf(mo38359f));
            }
            String str = this.f12402b;
            if (str != null) {
                objectMetadata.addUserMetadata("x-amz-wrap-alg", str);
            }
        } else {
            objectMetadata.addUserMetadata("x-amz-key", Base64.encodeAsString(m38372c()));
            objectMetadata.addUserMetadata("x-amz-iv", Base64.encodeAsString(this.f12401a.f12389b.getIV()));
            objectMetadata.addUserMetadata("x-amz-matdesc", m38384a());
        }
        return objectMetadata;
    }

    /* renamed from: a */
    public final String m38383a(CryptoMode cryptoMode) {
        HashMap hashMap;
        if (cryptoMode != CryptoMode.EncryptionOnly || KMSSecuredCEK.m38342a(this.f12402b)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("x-amz-key-v2", Base64.encodeAsString(m38372c()));
            hashMap2.put("x-amz-iv", Base64.encodeAsString(this.f12401a.f12389b.getIV()));
            hashMap2.put("x-amz-matdesc", m38384a());
            ContentCryptoScheme contentCryptoScheme = this.f12401a.f12390c;
            hashMap2.put("x-amz-cek-alg", contentCryptoScheme.mo38364b());
            int mo38359f = contentCryptoScheme.mo38359f();
            if (mo38359f > 0) {
                hashMap2.put("x-amz-tag-len", String.valueOf(mo38359f));
            }
            String str = this.f12402b;
            hashMap = hashMap2;
            if (str != null) {
                hashMap2.put("x-amz-wrap-alg", str);
                hashMap = hashMap2;
            }
        } else {
            hashMap = new HashMap();
            hashMap.put("x-amz-key", Base64.encodeAsString(m38372c()));
            hashMap.put("x-amz-iv", Base64.encodeAsString(this.f12401a.f12389b.getIV()));
            hashMap.put("x-amz-matdesc", m38384a());
        }
        return JsonUtils.mapToString(hashMap);
    }
}
