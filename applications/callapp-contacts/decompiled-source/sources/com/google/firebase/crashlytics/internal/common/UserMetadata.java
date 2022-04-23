package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/UserMetadata.class */
public class UserMetadata {
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private String userId = null;
    private final Map<String, String> attributes = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static String sanitizeAttribute(String str) {
        String str2 = str;
        if (str != null) {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() > 1024) {
                str2 = trim.substring(0, 1024);
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String sanitizeKey(String str) {
        if (str != null) {
            return sanitizeAttribute(str);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    private void setSyncCustomKeys(Map<String, String> map) {
        synchronized (this) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String sanitizeKey = sanitizeKey(entry.getKey());
                String sanitizeAttribute = entry.getValue() == null ? "" : sanitizeAttribute(entry.getValue());
                if (this.attributes.containsKey(sanitizeKey)) {
                    hashMap.put(sanitizeKey, sanitizeAttribute);
                } else {
                    hashMap2.put(sanitizeKey, sanitizeAttribute);
                }
            }
            this.attributes.putAll(hashMap);
            if (this.attributes.size() + hashMap2.size() > 64) {
                int size = this.attributes.size();
                Logger.getLogger().v("Exceeded maximum number of custom attributes (64).");
                hashMap2.keySet().retainAll(new ArrayList(hashMap2.keySet()).subList(0, 64 - size));
            }
            this.attributes.putAll(hashMap2);
        }
    }

    public Map<String, String> getCustomKeys() {
        return Collections.unmodifiableMap(this.attributes);
    }

    public String getUserId() {
        return this.userId;
    }

    public void setCustomKey(String str, String str2) {
        setSyncCustomKeys(new HashMap<String, String>(str, str2) { // from class: com.google.firebase.crashlytics.internal.common.UserMetadata.1
            final /* synthetic */ String val$key;
            final /* synthetic */ String val$value;

            {
                this.val$key = str;
                this.val$value = str2;
                put(UserMetadata.sanitizeKey(str), UserMetadata.sanitizeAttribute(str2));
            }
        });
    }

    public void setCustomKeys(Map<String, String> map) {
        setSyncCustomKeys(map);
    }

    public void setUserId(String str) {
        this.userId = sanitizeAttribute(str);
    }
}
