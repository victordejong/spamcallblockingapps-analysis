package com.google.android.gms.internal.icing;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcb.class */
public final class zzcb {
    /* renamed from: a */
    public static <T> zzcc<T> m13992a(zzcc<T> zzccVar) {
        return ((zzccVar instanceof zzcd) || (zzccVar instanceof zzce)) ? zzccVar : zzccVar instanceof Serializable ? new zzce(zzccVar) : new zzcd(zzccVar);
    }

    /* renamed from: b */
    public static <T> zzcc<T> m13991b(@NullableDecl T t) {
        return new zzcg(t);
    }
}
