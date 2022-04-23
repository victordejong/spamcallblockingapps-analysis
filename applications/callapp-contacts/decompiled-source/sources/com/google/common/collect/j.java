package com.google.common.collect;

import com.google.common.base.m;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/j.class */
public final class j {
    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Collection<?> collection, Object obj) {
        m.a(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
