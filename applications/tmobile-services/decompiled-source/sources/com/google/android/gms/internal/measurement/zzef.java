package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzef.class */
public final class zzef {
    /* renamed from: a */
    public static <T> zzec<T> m12732a(zzec<T> zzecVar) {
        return ((zzecVar instanceof zzeh) || (zzecVar instanceof zzee)) ? zzecVar : zzecVar instanceof Serializable ? new zzee(zzecVar) : new zzeh(zzecVar);
    }

    /* renamed from: b */
    public static <T> zzec<T> m12731b(@NullableDecl T t) {
        return new zzeg(t);
    }
}
