package com.twitter.sdk.android.core.models;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/ModelUtils.class */
public final class ModelUtils {
    private ModelUtils() {
    }

    public static <T> List<T> getSafeList(List<T> list) {
        return list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }

    public static <K, V> Map<K, V> getSafeMap(Map<K, V> map) {
        return map == null ? Collections.emptyMap() : Collections.unmodifiableMap(map);
    }
}
