package com.amazonaws.services.cognitoidentity.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/AmbiguousRoleResolutionType.class */
public enum AmbiguousRoleResolutionType {
    AuthenticatedRole("AuthenticatedRole"),
    Deny("Deny");
    
    private static final Map<String, AmbiguousRoleResolutionType> enumMap;
    private String value;

    static {
        AmbiguousRoleResolutionType ambiguousRoleResolutionType = AuthenticatedRole;
        AmbiguousRoleResolutionType ambiguousRoleResolutionType2 = Deny;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("AuthenticatedRole", ambiguousRoleResolutionType);
        hashMap.put("Deny", ambiguousRoleResolutionType2);
    }

    AmbiguousRoleResolutionType(String str) {
        this.value = str;
    }

    public static AmbiguousRoleResolutionType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, AmbiguousRoleResolutionType> map = enumMap;
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
