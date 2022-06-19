package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cps.class */
final class cps extends cpc<Map.Entry<K, V>> {

    /* renamed from: a */
    private final /* synthetic */ cpp f13517a;

    public cps(cpp cppVar) {
        this.f13517a = cppVar;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return true;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f13517a.f13510d;
        cor.m10939a(i, i2);
        objArr = this.f13517a.f13508b;
        cpp cppVar = this.f13517a;
        Object obj = objArr[i * 2];
        objArr2 = this.f13517a.f13508b;
        cpp cppVar2 = this.f13517a;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[(i * 2) + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f13517a.f13510d;
        return i;
    }
}
