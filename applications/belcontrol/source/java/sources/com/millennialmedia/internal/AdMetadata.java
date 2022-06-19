package com.millennialmedia.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdMetadata.class */
public class AdMetadata extends HashMap<String, String> {
    public static final String ENHANCED_AD_CONTROL_ENABLED = "enhancedAdControlEnabled";
    public static final String TRANSPARENT = "x-mm-transparent";

    public void addAll(AdMetadata adMetadata) {
        if (adMetadata != null) {
            for (Map.Entry<String, String> entry : adMetadata.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public boolean getBoolean(String str, boolean z) {
        boolean z2 = z;
        if (containsKey(str)) {
            Boolean valueOf = Boolean.valueOf(Boolean.parseBoolean(get(str)));
            z2 = z;
            if (valueOf != null) {
                z2 = valueOf.booleanValue();
            }
        }
        return z2;
    }

    public boolean isTransparent() {
        String str = get(TRANSPARENT);
        return str != null && Boolean.parseBoolean(str);
    }
}
