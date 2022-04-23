package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hj.class */
final class hj {
    public static final int a(Object obj) {
        hi hiVar = (hi) obj;
        if (hiVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = hiVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final Object a(Object obj, Object obj2) {
        hi hiVar = (hi) obj;
        hi hiVar2 = (hi) obj2;
        hi hiVar3 = hiVar;
        if (!hiVar2.isEmpty()) {
            hi hiVar4 = hiVar;
            if (!hiVar.f29087a) {
                hiVar4 = hiVar.b();
            }
            hiVar4.c();
            hiVar3 = hiVar4;
            if (!hiVar2.isEmpty()) {
                hiVar4.putAll(hiVar2);
                hiVar3 = hiVar4;
            }
        }
        return hiVar3;
    }
}
