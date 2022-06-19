package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzae.class */
public final class zzae<K> extends zzw<K> {
    private final transient zzu<K, ?> zza;
    private final transient zzq<K> zzb;

    public zzae(zzu<K, ?> zzuVar, zzq<K> zzqVar) {
        this.zza = zzuVar;
        this.zzb = zzqVar;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zza(Object[] objArr, int i) {
        return zze().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    /* renamed from: zza */
    public final zzak<K> iterator() {
        return (zzak) zze().iterator();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw, com.google.android.gms.internal.mlkit_translate.zzl
    public final zzq<K> zze() {
        return this.zzb;
    }
}
