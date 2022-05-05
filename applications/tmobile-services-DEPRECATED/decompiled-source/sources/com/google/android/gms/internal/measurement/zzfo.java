package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfo.class */
final class zzfo<K, V> extends zzfg<Map.Entry<K, V>> {

    /* renamed from: h */
    private final transient zzfc<K, V> f8424h;

    /* renamed from: i */
    private final transient Object[] f8425i;

    /* renamed from: j */
    private final transient int f8426j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfo(zzfc<K, V> zzfcVar, Object[] objArr, int i, int i2) {
        this.f8424h = zzfcVar;
        this.f8425i = objArr;
        this.f8426j = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: c */
    final int mo12675c(Object[] objArr, int i) {
        return mo12679k().mo12675c(objArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f8424h.get(key));
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: d */
    public final zzfx<Map.Entry<K, V>> iterator() {
        return (zzfx) mo12679k().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: p */
    final zzfb<Map.Entry<K, V>> mo12671p() {
        return new zzfr(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8426j;
    }
}
