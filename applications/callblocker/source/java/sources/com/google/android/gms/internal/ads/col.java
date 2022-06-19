package com.google.android.gms.internal.ads;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/col.class */
public abstract class col<T> implements Serializable {
    /* renamed from: a */
    public static <T> col<T> m10945a(@NullableDecl T t) {
        return t == null ? cod.f13437a : new coq(t);
    }

    @NullableDecl
    /* renamed from: a */
    public abstract T mo10940a();
}
