package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfor.class */
public class zzfor<K, V> extends zzfnh<K, V> implements Serializable {
    public final transient zzfon<K, ? extends zzfoe<V>> zzb;
    public final transient int zzc;

    public zzfor(zzfon<K, ? extends zzfoe<V>> zzfonVar, int i) {
        this.zzb = zzfonVar;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final int zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfng, com.google.android.gms.internal.ads.zzfpj
    @Deprecated
    public final boolean zzh(K k, V v) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    @Deprecated
    public final void zzi() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final Set<K> zzk() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final /* bridge */ /* synthetic */ Collection zzn() {
        return new zzfoq(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final Map<K, Collection<V>> zzp() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.ads.zzfng
    public final boolean zzr(Object obj) {
        return obj != null && super.zzr(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfng, com.google.android.gms.internal.ads.zzfpj
    public final /* bridge */ /* synthetic */ Collection zzt() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfng, com.google.android.gms.internal.ads.zzfpj
    public final /* bridge */ /* synthetic */ Map zzu() {
        return this.zzb;
    }
}
