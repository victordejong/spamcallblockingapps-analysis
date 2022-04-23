package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjd.class */
final class zzjd implements zzje {
    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: a */
    public final Map<?, ?> mo12345a(Object obj) {
        return (zzjb) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: b */
    public final Object mo12344b(Object obj) {
        return zzjb.m12351b().m12349g();
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: c */
    public final boolean mo12343c(Object obj) {
        return !((zzjb) obj).m12347j();
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: d */
    public final Map<?, ?> mo12342d(Object obj) {
        return (zzjb) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: e */
    public final zzjc<?, ?> mo12341e(Object obj) {
        zziz zzizVar = (zziz) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: f */
    public final Object mo12340f(Object obj, Object obj2) {
        zzjb zzjbVar = (zzjb) obj;
        zzjb zzjbVar2 = (zzjb) obj2;
        zzjb zzjbVar3 = zzjbVar;
        if (!zzjbVar2.isEmpty()) {
            zzjbVar3 = zzjbVar;
            if (!zzjbVar.m12347j()) {
                zzjbVar3 = zzjbVar.m12349g();
            }
            zzjbVar3.m12350f(zzjbVar2);
        }
        return zzjbVar3;
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: g */
    public final Object mo12339g(Object obj) {
        ((zzjb) obj).m12348i();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzje
    /* renamed from: h */
    public final int mo12338h(int i, Object obj, Object obj2) {
        zzjb zzjbVar = (zzjb) obj;
        zziz zzizVar = (zziz) obj2;
        if (zzjbVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzjbVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
