package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.Logger;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/UserMetadata.class */
public class UserMetadata {
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private String userId = null;
    private final ConcurrentHashMap<String, String> attributes = new ConcurrentHashMap<>();

    private static String sanitizeAttribute(String str) {
        String str2 = str;
        if (str != null) {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() > MAX_ATTRIBUTE_SIZE) {
                str2 = trim.substring(0, MAX_ATTRIBUTE_SIZE);
            }
        }
        return str2;
    }

    @NonNull
    public Map<String, String> getCustomKeys() {
        return Collections.unmodifiableMap(this.attributes);
    }

    @Nullable
    public String getUserId() {
        return this.userId;
    }

    public void setCustomKey(String str, String str2) {
        if (str != null) {
            String sanitizeAttribute = sanitizeAttribute(str);
            if (this.attributes.size() < 64 || this.attributes.containsKey(sanitizeAttribute)) {
                this.attributes.put(sanitizeAttribute, str2 == null ? "" : sanitizeAttribute(str2));
            } else {
                Logger.getLogger().m8450d("Exceeded maximum number of custom attributes (64)");
            }
        } else {
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
    }

    public void setUserId(String str) {
        this.userId = sanitizeAttribute(str);
    }
}
