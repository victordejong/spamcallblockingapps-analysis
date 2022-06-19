package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.z3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z3.class */
public final class C2210z3 {
    /* renamed from: a */
    public static <T> AbstractC2201x3<T> m4117a(AbstractC2201x3<T> abstractC2201x3) {
        if ((abstractC2201x3 instanceof y3) || (abstractC2201x3 instanceof zzfq)) {
            return abstractC2201x3;
        }
        return abstractC2201x3 instanceof Serializable ? new zzfq(abstractC2201x3) : new y3(abstractC2201x3);
    }

    /* renamed from: b */
    public static <T> AbstractC2201x3<T> m4116b(@NullableDecl T t) {
        return new zzfs(t);
    }
}
