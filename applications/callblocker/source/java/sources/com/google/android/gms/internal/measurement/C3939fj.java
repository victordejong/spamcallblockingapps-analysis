package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.fj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fj.class */
final class C3939fj implements AbstractC3936fg {
    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: a */
    public final int mo5558a(int i, Object obj, Object obj2) {
        C3937fh c3937fh = (C3937fh) obj;
        C3935ff c3935ff = (C3935ff) obj2;
        if (c3937fh.isEmpty()) {
            return 0;
        }
        Iterator it = c3937fh.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: a */
    public final Object mo5556a(Object obj, Object obj2) {
        C3937fh c3937fh = (C3937fh) obj;
        C3937fh c3937fh2 = (C3937fh) obj2;
        C3937fh c3937fh3 = c3937fh;
        if (!c3937fh2.isEmpty()) {
            c3937fh3 = c3937fh;
            if (!c3937fh.m5563d()) {
                c3937fh3 = c3937fh.m5565b();
            }
            c3937fh3.m5567a(c3937fh2);
        }
        return c3937fh3;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: a */
    public final Map<?, ?> mo5557a(Object obj) {
        return (C3937fh) obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: b */
    public final Map<?, ?> mo5555b(Object obj) {
        return (C3937fh) obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: c */
    public final boolean mo5554c(Object obj) {
        return !((C3937fh) obj).m5563d();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: d */
    public final Object mo5553d(Object obj) {
        ((C3937fh) obj).m5564c();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: e */
    public final Object mo5552e(Object obj) {
        return C3937fh.m5568a().m5565b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3936fg
    /* renamed from: f */
    public final C3934fe<?, ?> mo5551f(Object obj) {
        C3935ff c3935ff = (C3935ff) obj;
        throw new NoSuchMethodError();
    }
}
