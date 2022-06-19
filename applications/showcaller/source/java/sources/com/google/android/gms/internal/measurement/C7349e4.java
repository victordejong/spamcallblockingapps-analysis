package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* renamed from: com.google.android.gms.internal.measurement.e4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e4.class */
public final class C7349e4 {
    /* renamed from: a */
    public static <T> AbstractC7321c4<T> m7558a(AbstractC7321c4<T> abstractC7321c4) {
        if ((abstractC7321c4 instanceof C7335d4) || (abstractC7321c4 instanceof zzfq)) {
            return abstractC7321c4;
        }
        return abstractC7321c4 instanceof Serializable ? new zzfq(abstractC7321c4) : new C7335d4(abstractC7321c4);
    }

    /* renamed from: b */
    public static <T> AbstractC7321c4<T> m7557b(T t) {
        return new zzfs(t);
    }
}
