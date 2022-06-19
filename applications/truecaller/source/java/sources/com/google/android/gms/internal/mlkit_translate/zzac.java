package com.google.android.gms.internal.mlkit_translate;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzac.class */
public final class zzac<K, V> extends zzw<Map.Entry<K, V>> {
    private final transient zzu<K, V> zza;
    private final transient Object[] zzb;
    private final transient int zzc = 0;
    private final transient int zzd;

    public zzac(zzu<K, V> zzuVar, Object[] objArr, int i, int i2) {
        this.zza = zzuVar;
        this.zzb = objArr;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.zza.get(key));
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zza(Object[] objArr, int i) {
        return zze().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    /* renamed from: zza */
    public final zzak<Map.Entry<K, V>> iterator() {
        return (zzak) zze().iterator();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw
    public final zzq<Map.Entry<K, V>> zzh() {
        return new zzab(this);
    }
}
