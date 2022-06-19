package com.google.common.base;

import java.util.Arrays;
/* renamed from: com.google.common.base.g */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/g.class */
public final class C8751g extends AbstractC8744c {
    /* renamed from: a */
    public static boolean m2804a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m2803b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
