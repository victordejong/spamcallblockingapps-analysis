package com.amazonaws.services.kms.model;

import com.amazonaws.services.p101s3.model.BucketLifecycleConfiguration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/KeyState.class */
public enum KeyState {
    Enabled("Enabled"),
    Disabled(BucketLifecycleConfiguration.DISABLED),
    PendingDeletion("PendingDeletion"),
    PendingImport("PendingImport"),
    Unavailable("Unavailable");
    
    private static final Map<String, KeyState> enumMap;
    private String value;

    static {
        KeyState keyState = Enabled;
        KeyState keyState2 = Disabled;
        KeyState keyState3 = PendingDeletion;
        KeyState keyState4 = PendingImport;
        KeyState keyState5 = Unavailable;
        HashMap hashMap = new HashMap();
        enumMap = hashMap;
        hashMap.put("Enabled", keyState);
        hashMap.put(BucketLifecycleConfiguration.DISABLED, keyState2);
        hashMap.put("PendingDeletion", keyState3);
        hashMap.put("PendingImport", keyState4);
        hashMap.put("Unavailable", keyState5);
    }

    KeyState(String str) {
        this.value = str;
    }

    public static KeyState fromValue(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Value cannot be null or empty!");
        }
        Map<String, KeyState> map = enumMap;
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
