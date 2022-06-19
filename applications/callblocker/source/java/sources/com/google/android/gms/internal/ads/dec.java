package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dec.class */
final class dec implements ddz {
    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: a */
    public final int mo9999a(int i, Object obj, Object obj2) {
        dea deaVar = (dea) obj;
        ddy ddyVar = (ddy) obj2;
        if (deaVar.isEmpty()) {
            return 0;
        }
        Iterator it = deaVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: a */
    public final Object mo9997a(Object obj, Object obj2) {
        dea deaVar = (dea) obj;
        dea deaVar2 = (dea) obj2;
        dea deaVar3 = deaVar;
        if (!deaVar2.isEmpty()) {
            deaVar3 = deaVar;
            if (!deaVar.m10004d()) {
                deaVar3 = deaVar.m10006b();
            }
            deaVar3.m10008a(deaVar2);
        }
        return deaVar3;
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: a */
    public final Map<?, ?> mo9998a(Object obj) {
        return (dea) obj;
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: b */
    public final Map<?, ?> mo9996b(Object obj) {
        return (dea) obj;
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: c */
    public final boolean mo9995c(Object obj) {
        return !((dea) obj).m10004d();
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: d */
    public final Object mo9994d(Object obj) {
        ((dea) obj).m10005c();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: e */
    public final Object mo9993e(Object obj) {
        return dea.m10009a().m10006b();
    }

    @Override // com.google.android.gms.internal.ads.ddz
    /* renamed from: f */
    public final ddx<?, ?> mo9992f(Object obj) {
        ddy ddyVar = (ddy) obj;
        throw new NoSuchMethodError();
    }
}
