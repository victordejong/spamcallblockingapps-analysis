package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.Collection;
/* renamed from: com.google.common.collect.j */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/j.class */
public final class C15525j {
    private C15525j() {
    }

    /* renamed from: a */
    public static boolean m8779a(Collection<?> collection, Object obj) {
        C15391m.m8946a(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
