package com.twitter.sdk.android.core.models;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/BindingValues.class */
public class BindingValues {
    private final Map<String, Object> bindingValues;

    public BindingValues() {
        this(Collections.EMPTY_MAP);
    }

    public BindingValues(Map<String, Object> map) {
        this.bindingValues = Collections.unmodifiableMap(map);
    }

    public boolean containsKey(String str) {
        return this.bindingValues.containsKey(str);
    }

    public <T> T get(String str) {
        try {
            return (T) this.bindingValues.get(str);
        } catch (ClassCastException e) {
            return null;
        }
    }
}
