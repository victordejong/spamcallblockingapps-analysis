package com.criteo.publisher.p020a0;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* renamed from: com.criteo.publisher.a0.o */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/o.class */
public class C1927o {
    /* renamed from: a */
    public static int m36004a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m36005a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    @Nullable
    /* renamed from: b */
    public static <T> T m36003b(@Nullable T t, @Nullable T t2) {
        return t == null ? t2 : t;
    }
}
