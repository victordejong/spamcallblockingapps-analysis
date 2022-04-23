package com.amazonaws.services.kms.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/OriginType.class */
public enum OriginType {
    AWS_KMS("AWS_KMS"),
    EXTERNAL("EXTERNAL"),
    AWS_CLOUDHSM("AWS_CLOUDHSM");
    
    private static final Map<String, OriginType> enumMap;
    private String value;

    static {
        OriginType originType = AWS_KMS;
        OriginType originType2 = EXTERNAL;
        OriginType originType3 = AWS_CLOUDHSM;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("AWS_KMS", originType);
        hashMap.put("EXTERNAL", originType2);
        hashMap.put("AWS_CLOUDHSM", originType3);
    }

    OriginType(String str) {
        this.value = str;
    }

    public static OriginType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, OriginType> map = enumMap;
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
