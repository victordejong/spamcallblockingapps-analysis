package com.amazonaws.services.kms.model;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ConnectionStateType.class */
public enum ConnectionStateType {
    CONNECTED("CONNECTED"),
    CONNECTING("CONNECTING"),
    FAILED("FAILED"),
    DISCONNECTED("DISCONNECTED"),
    DISCONNECTING("DISCONNECTING");
    
    private static final Map<String, ConnectionStateType> enumMap;
    private String value;

    static {
        ConnectionStateType connectionStateType = CONNECTED;
        ConnectionStateType connectionStateType2 = CONNECTING;
        ConnectionStateType connectionStateType3 = FAILED;
        ConnectionStateType connectionStateType4 = DISCONNECTED;
        ConnectionStateType connectionStateType5 = DISCONNECTING;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("CONNECTED", connectionStateType);
        hashMap.put("CONNECTING", connectionStateType2);
        hashMap.put("FAILED", connectionStateType3);
        hashMap.put("DISCONNECTED", connectionStateType4);
        hashMap.put("DISCONNECTING", connectionStateType5);
    }

    ConnectionStateType(String str) {
        this.value = str;
    }

    public static ConnectionStateType fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, ConnectionStateType> map = enumMap;
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
