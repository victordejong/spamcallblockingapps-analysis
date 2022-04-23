package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ei.class */
public abstract class ei<T> implements Serializable {
    public static <T> ei<T> a(T t) {
        return new ej(t);
    }

    public static <T> ei<T> c() {
        return eg.f28987a;
    }

    public abstract boolean a();

    public abstract T b();
}
