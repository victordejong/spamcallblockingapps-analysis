package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.z3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z3.class */
public final class C2210z3 {
    /* renamed from: a */
    public static <T> AbstractC2201x3<T> m4117a(AbstractC2201x3<T> x3Var) {
        if ((x3Var instanceof y3) || (x3Var instanceof zzfq)) {
            return x3Var;
        }
        return x3Var instanceof Serializable ? new zzfq(x3Var) : new y3(x3Var);
    }

    /* renamed from: b */
    public static <T> AbstractC2201x3<T> m4116b(@NullableDecl T t) {
        return new zzfs(t);
    }
}
