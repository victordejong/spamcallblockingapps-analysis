package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dop.class */
final class dop implements dom {
    @Override // com.google.android.gms.internal.ads.dom
    public final Object a() {
        return don.a().b();
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final Object a(Object obj, Object obj2) {
        don donVar = (don) obj;
        don donVar2 = (don) obj2;
        don donVar3 = donVar;
        if (!donVar2.isEmpty()) {
            don donVar4 = donVar;
            if (!donVar.f27038a) {
                donVar4 = donVar.b();
            }
            donVar4.c();
            donVar3 = donVar4;
            if (!donVar2.isEmpty()) {
                donVar4.putAll(donVar2);
                donVar3 = donVar4;
            }
        }
        return donVar3;
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final Map<?, ?> a(Object obj) {
        return (don) obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final dok<?, ?> b() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final Map<?, ?> b(Object obj) {
        return (don) obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final boolean c(Object obj) {
        return !((don) obj).f27038a;
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final Object d(Object obj) {
        ((don) obj).f27038a = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    public final int e(Object obj) {
        don donVar = (don) obj;
        if (donVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = donVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
