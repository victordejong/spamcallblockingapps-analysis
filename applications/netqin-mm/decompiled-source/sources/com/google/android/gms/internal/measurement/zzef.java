package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import p131c.p161d.p170b.p224d.p252g.p258f.C4511i1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzef.class */
public final class zzef {
    /* renamed from: a */
    public static <T> zzec<T> m9808a(zzec<T> zzecVar) {
        return ((zzecVar instanceof C4511i1) || (zzecVar instanceof zzee)) ? zzecVar : zzecVar instanceof Serializable ? new zzee(zzecVar) : new C4511i1(zzecVar);
    }

    /* renamed from: a */
    public static <T> zzec<T> m9807a(T t) {
        return new zzeg(t);
    }
}
