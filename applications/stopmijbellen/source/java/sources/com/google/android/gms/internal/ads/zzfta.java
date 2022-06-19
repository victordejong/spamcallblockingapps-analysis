package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfta.class */
public class zzfta<K, V> extends zzfrq<K, V> implements Serializable {
    public final transient zzfsw<K, ? extends zzfsn<V>> zzb;
    public final transient int zzc;

    public zzfta(zzfsw<K, ? extends zzfsn<V>> zzfswVar, int i) {
        this.zzb = zzfswVar;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final int zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final /* synthetic */ Collection zzf() {
        return new zzfsz(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final Map<K, Collection<V>> zzj() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final Set<K> zzl() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    @Deprecated
    public final void zzp() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp, com.google.android.gms.internal.ads.zzfts
    @Deprecated
    public final boolean zzq(K k, V v) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp, com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ Collection zzr() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp, com.google.android.gms.internal.ads.zzfts
    public final /* synthetic */ Map zzs() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfrp
    public final boolean zzu(@CheckForNull Object obj) {
        return obj != null && super.zzu(obj);
    }
}
