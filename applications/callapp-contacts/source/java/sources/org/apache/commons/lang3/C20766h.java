package org.apache.commons.lang3;

import java.util.Objects;
import java.util.function.Supplier;
/* renamed from: org.apache.commons.lang3.h */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/h.class */
public final class C20766h {
    /* renamed from: a */
    public static <T> T m514a(T t, final String str, final Object... objArr) {
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

    /* renamed from: a */
    public static void m512a(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }
}
