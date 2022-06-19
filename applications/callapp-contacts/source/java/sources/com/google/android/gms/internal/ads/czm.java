package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czm.class */
final class czm extends cyz<Map.Entry<K, V>> {

    /* renamed from: a */
    private final /* synthetic */ czn f46804a;

    public czm(czn cznVar) {
        this.f46804a = cznVar;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return true;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f46804a.f46808d;
        cyg.m17063a(i, i2);
        objArr = this.f46804a.f46806b;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.f46804a.f46806b;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f46804a.f46808d;
        return i;
    }
}
