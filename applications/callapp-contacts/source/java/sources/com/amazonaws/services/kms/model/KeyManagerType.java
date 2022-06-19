package com.amazonaws.services.kms.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/KeyManagerType.class */
public enum KeyManagerType {
    AWS("AWS"),
    CUSTOMER("CUSTOMER");
    
    private static final Map<String, KeyManagerType> enumMap;
    private String value;

    static {
        KeyManagerType keyManagerType = AWS;
        KeyManagerType keyManagerType2 = CUSTOMER;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("AWS", keyManagerType);
        hashMap.put("CUSTOMER", keyManagerType2);
    }

    KeyManagerType(String str) {
        this.value = str;
    }

    public static KeyManagerType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, KeyManagerType> map = enumMap;
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
