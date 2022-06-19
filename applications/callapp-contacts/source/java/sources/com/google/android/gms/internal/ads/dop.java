package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dop.class */
final class dop implements dom {
    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: a */
    public final Object mo16271a() {
        return don.m16278a().m16276b();
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: a */
    public final Object mo16269a(Object obj, Object obj2) {
        don donVar = (don) obj;
        don donVar2 = (don) obj2;
        don donVar3 = donVar;
        if (!donVar2.isEmpty()) {
            don donVar4 = donVar;
            if (!donVar.f47324a) {
                donVar4 = donVar.m16276b();
            }
            donVar4.m16275c();
            donVar3 = donVar4;
            if (!donVar2.isEmpty()) {
                donVar4.putAll(donVar2);
                donVar3 = donVar4;
            }
        }
        return donVar3;
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: a */
    public final Map<?, ?> mo16270a(Object obj) {
        return (don) obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: b */
    public final dok<?, ?> mo16268b() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: b */
    public final Map<?, ?> mo16267b(Object obj) {
        return (don) obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: c */
    public final boolean mo16266c(Object obj) {
        return !((don) obj).f47324a;
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: d */
    public final Object mo16265d(Object obj) {
        ((don) obj).f47324a = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.dom
    /* renamed from: e */
    public final int mo16264e(Object obj) {
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
