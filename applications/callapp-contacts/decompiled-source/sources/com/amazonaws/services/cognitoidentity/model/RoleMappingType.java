package com.amazonaws.services.cognitoidentity.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/RoleMappingType.class */
public enum RoleMappingType {
    Token("Token"),
    Rules("Rules");
    
    private static final Map<String, RoleMappingType> enumMap;
    private String value;

    static {
        RoleMappingType roleMappingType = Token;
        RoleMappingType roleMappingType2 = Rules;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("Token", roleMappingType);
        hashMap.put("Rules", roleMappingType2);
    }

    RoleMappingType(String str) {
        this.value = str;
    }

    public static RoleMappingType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, RoleMappingType> map = enumMap;
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
