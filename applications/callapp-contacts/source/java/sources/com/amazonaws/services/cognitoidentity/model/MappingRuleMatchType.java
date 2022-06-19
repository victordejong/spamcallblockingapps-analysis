package com.amazonaws.services.cognitoidentity.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/MappingRuleMatchType.class */
public enum MappingRuleMatchType {
    Equals("Equals"),
    Contains("Contains"),
    StartsWith("StartsWith"),
    NotEqual("NotEqual");
    
    private static final Map<String, MappingRuleMatchType> enumMap;
    private String value;

    static {
        MappingRuleMatchType mappingRuleMatchType = Equals;
        MappingRuleMatchType mappingRuleMatchType2 = Contains;
        MappingRuleMatchType mappingRuleMatchType3 = StartsWith;
        MappingRuleMatchType mappingRuleMatchType4 = NotEqual;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("Equals", mappingRuleMatchType);
        hashMap.put("Contains", mappingRuleMatchType2);
        hashMap.put("StartsWith", mappingRuleMatchType3);
        hashMap.put("NotEqual", mappingRuleMatchType4);
    }

    MappingRuleMatchType(String str) {
        this.value = str;
    }

    public static MappingRuleMatchType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, MappingRuleMatchType> map = enumMap;
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
