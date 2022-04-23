package com.amazonaws.services.kms.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/SigningAlgorithmSpec.class */
public enum SigningAlgorithmSpec {
    RSASSA_PSS_SHA_256("RSASSA_PSS_SHA_256"),
    RSASSA_PSS_SHA_384("RSASSA_PSS_SHA_384"),
    RSASSA_PSS_SHA_512("RSASSA_PSS_SHA_512"),
    RSASSA_PKCS1_V1_5_SHA_256("RSASSA_PKCS1_V1_5_SHA_256"),
    RSASSA_PKCS1_V1_5_SHA_384("RSASSA_PKCS1_V1_5_SHA_384"),
    RSASSA_PKCS1_V1_5_SHA_512("RSASSA_PKCS1_V1_5_SHA_512"),
    ECDSA_SHA_256("ECDSA_SHA_256"),
    ECDSA_SHA_384("ECDSA_SHA_384"),
    ECDSA_SHA_512("ECDSA_SHA_512");
    
    private static final Map<String, SigningAlgorithmSpec> enumMap;
    private String value;

    static {
        SigningAlgorithmSpec signingAlgorithmSpec = RSASSA_PSS_SHA_256;
        SigningAlgorithmSpec signingAlgorithmSpec2 = RSASSA_PSS_SHA_384;
        SigningAlgorithmSpec signingAlgorithmSpec3 = RSASSA_PSS_SHA_512;
        SigningAlgorithmSpec signingAlgorithmSpec4 = RSASSA_PKCS1_V1_5_SHA_256;
        SigningAlgorithmSpec signingAlgorithmSpec5 = RSASSA_PKCS1_V1_5_SHA_384;
        SigningAlgorithmSpec signingAlgorithmSpec6 = RSASSA_PKCS1_V1_5_SHA_512;
        SigningAlgorithmSpec signingAlgorithmSpec7 = ECDSA_SHA_256;
        SigningAlgorithmSpec signingAlgorithmSpec8 = ECDSA_SHA_384;
        SigningAlgorithmSpec signingAlgorithmSpec9 = ECDSA_SHA_512;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("RSASSA_PSS_SHA_256", signingAlgorithmSpec);
        hashMap.put("RSASSA_PSS_SHA_384", signingAlgorithmSpec2);
        hashMap.put("RSASSA_PSS_SHA_512", signingAlgorithmSpec3);
        hashMap.put("RSASSA_PKCS1_V1_5_SHA_256", signingAlgorithmSpec4);
        hashMap.put("RSASSA_PKCS1_V1_5_SHA_384", signingAlgorithmSpec5);
        hashMap.put("RSASSA_PKCS1_V1_5_SHA_512", signingAlgorithmSpec6);
        hashMap.put("ECDSA_SHA_256", signingAlgorithmSpec7);
        hashMap.put("ECDSA_SHA_384", signingAlgorithmSpec8);
        hashMap.put("ECDSA_SHA_512", signingAlgorithmSpec9);
    }

    SigningAlgorithmSpec(String str) {
        this.value = str;
    }

    public static SigningAlgorithmSpec fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, SigningAlgorithmSpec> map = enumMap;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}
