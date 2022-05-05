package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd.class */
final class zzfd implements zzfa {
    @Override // com.google.android.gms.internal.icing.zzfa
    /* renamed from: b */
    public final Object mo13764b(Object obj, Object obj2) {
        zzfb zzfbVar = (zzfb) obj;
        zzfb zzfbVar2 = (zzfb) obj2;
        zzfb zzfbVar3 = zzfbVar;
        if (!zzfbVar2.isEmpty()) {
            zzfbVar3 = zzfbVar;
            if (!zzfbVar.m13773a()) {
                zzfbVar3 = zzfbVar.m13770g();
            }
            zzfbVar3.m13772b(zzfbVar2);
        }
        return zzfbVar3;
    }

    @Override // com.google.android.gms.internal.icing.zzfa
    /* renamed from: c */
    public final zzey<?, ?> mo13763c(Object obj) {
        zzez zzezVar = (zzez) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.icing.zzfa
    /* renamed from: d */
    public final Object mo13762d(Object obj) {
        ((zzfb) obj).m13771f();
        return obj;
    }

    @Override // com.google.android.gms.internal.icing.zzfa
    /* renamed from: e */
    public final int mo13761e(int i, Object obj, Object obj2) {
        zzfb zzfbVar = (zzfb) obj;
        zzez zzezVar = (zzez) obj2;
        if (zzfbVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzfbVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.icing.zzfa
    /* renamed from: f */
    public final Map<?, ?> mo13760f(Object obj) {
        return (zzfb) obj;
    }
}
