package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czm.class */
final class czm extends cyz<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ czn f26608a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czm(czn cznVar) {
        this.f26608a = cznVar;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f26608a.f26612d;
        cyg.a(i, i2);
        objArr = this.f26608a.f26610b;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.f26608a.f26610b;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f26608a.f26612d;
        return i;
    }
}
