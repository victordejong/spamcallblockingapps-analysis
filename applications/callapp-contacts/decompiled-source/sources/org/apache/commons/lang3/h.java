package org.apache.commons.lang3;

import java.util.Objects;
import java.util.function.Supplier;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/h.class */
public final class h {
    public static <T> T a(T t, final String str, final Object... objArr) {
        Objects.requireNonNull(t, new Supplier() { // from class: org.apache.commons.lang3._$$Lambda$h$wReEV0j_4k2V6gRQnBL2k8RQOsg
            @Override // java.util.function.Supplier
            public final Object get() {
                String format;
                format = String.format(str, objArr);
                return format;
            }
        });
        return t;
    }

    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }
}
