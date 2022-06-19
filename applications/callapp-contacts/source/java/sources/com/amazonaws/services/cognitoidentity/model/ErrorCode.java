package com.amazonaws.services.cognitoidentity.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/ErrorCode.class */
public enum ErrorCode {
    AccessDenied("AccessDenied"),
    InternalServerError("InternalServerError");
    
    private static final Map<String, ErrorCode> enumMap;
    private String value;

    static {
        ErrorCode errorCode = AccessDenied;
        ErrorCode errorCode2 = InternalServerError;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("AccessDenied", errorCode);
        hashMap.put("InternalServerError", errorCode2);
    }

    ErrorCode(String str) {
        this.value = str;
    }

    public static ErrorCode fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, ErrorCode> map = enumMap;
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
