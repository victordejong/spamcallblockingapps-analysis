package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eo.class */
public final class eo {
    public static <T> ek<T> a(ek<T> ekVar) {
        if ((ekVar instanceof em) || (ekVar instanceof el)) {
            return ekVar;
        }
        return ekVar instanceof Serializable ? new el<>(ekVar) : new em<>(ekVar);
    }

    public static <T> ek<T> a(T t) {
        return new en(t);
    }
}
