package com.google.android.libraries.places.internal;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzdm.class */
public final class zzdm extends LinkedHashMap<Long, Integer> {
    public zzdm(int i, float f, boolean z) {
        super(16, 0.75f, true);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<Long, Integer> entry) {
        return size() > 10;
    }
}
