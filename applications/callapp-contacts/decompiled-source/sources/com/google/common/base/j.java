package com.google.common.base;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/j.class */
public final class j extends f {
    private j() {
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
