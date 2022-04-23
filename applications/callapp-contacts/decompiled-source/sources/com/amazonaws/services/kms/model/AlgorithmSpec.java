package com.amazonaws.services.kms.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/AlgorithmSpec.class */
public enum AlgorithmSpec {
    RSAES_PKCS1_V1_5("RSAES_PKCS1_V1_5"),
    RSAES_OAEP_SHA_1("RSAES_OAEP_SHA_1"),
    RSAES_OAEP_SHA_256("RSAES_OAEP_SHA_256");
    
    private static final Map<String, AlgorithmSpec> enumMap;
    private String value;

    static {
        AlgorithmSpec algorithmSpec = RSAES_PKCS1_V1_5;
        AlgorithmSpec algorithmSpec2 = RSAES_OAEP_SHA_1;
        AlgorithmSpec algorithmSpec3 = RSAES_OAEP_SHA_256;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("RSAES_PKCS1_V1_5", algorithmSpec);
        hashMap.put("RSAES_OAEP_SHA_1", algorithmSpec2);
        hashMap.put("RSAES_OAEP_SHA_256", algorithmSpec3);
    }

    AlgorithmSpec(String str) {
        this.value = str;
    }

    public static AlgorithmSpec fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, AlgorithmSpec> map = enumMap;
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
