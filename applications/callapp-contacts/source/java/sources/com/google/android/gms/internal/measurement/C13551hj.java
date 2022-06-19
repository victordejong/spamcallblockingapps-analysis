package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.hj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hj.class */
final class C13551hj {
    /* renamed from: a */
    public static final int m12719a(Object obj) {
        C13550hi c13550hi = (C13550hi) obj;
        if (c13550hi.isEmpty()) {
            return 0;
        }
        Iterator it2 = c13550hi.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    /* renamed from: a */
    public static final Object m12718a(Object obj, Object obj2) {
        C13550hi c13550hi = (C13550hi) obj;
        C13550hi c13550hi2 = (C13550hi) obj2;
        C13550hi c13550hi3 = c13550hi;
        if (!c13550hi2.isEmpty()) {
            C13550hi c13550hi4 = c13550hi;
            if (!c13550hi.f50788a) {
                c13550hi4 = c13550hi.m12721b();
            }
            c13550hi4.m12720c();
            c13550hi3 = c13550hi4;
            if (!c13550hi2.isEmpty()) {
                c13550hi4.putAll(c13550hi2);
                c13550hi3 = c13550hi4;
            }
        }
        return c13550hi3;
    }
}
