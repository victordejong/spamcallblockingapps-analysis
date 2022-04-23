package com.mopub.common.util;

import com.mopub.common.Preconditions;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/MoPubCollections.class */
public class MoPubCollections {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void addAllNonNull(Collection<? super T> collection, Collection<T> collection2) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(collection2);
        collection.addAll(collection2);
        collection.removeAll(Collections.singleton(null));
    }

    public static <T> void addAllNonNull(Collection<? super T> collection, T... tArr) {
        Collections.addAll(collection, tArr);
        collection.removeAll(Collections.singleton(null));
    }
}
