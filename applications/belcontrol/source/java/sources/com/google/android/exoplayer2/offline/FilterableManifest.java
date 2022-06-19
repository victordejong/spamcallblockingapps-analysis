package com.google.android.exoplayer2.offline;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/FilterableManifest.class */
public interface FilterableManifest<T, K> {
    T copy(List<K> list);
}
