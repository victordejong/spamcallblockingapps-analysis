package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfor.class */
public class zzfor<K, V> extends fw2<K, V> implements Serializable {

    /* renamed from: g */
    final transient zzfon<K, ? extends zzfoe<V>> f34072g;

    /* renamed from: h */
    final transient int f34073h;

    public zzfor(zzfon<K, ? extends zzfoe<V>> zzfonVar, int i) {
        this.f34072g = zzfonVar;
        this.f34073h = i;
    }

    @Override // com.google.android.gms.internal.ads.tx2
    public final int zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.ew2, com.google.android.gms.internal.ads.tx2
    @Deprecated
    public final boolean zzh(K k, V v) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.tx2
    @Deprecated
    public final void zzi() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.ew2
    final Set<K> zzk() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.android.gms.internal.ads.ew2
    final /* bridge */ /* synthetic */ Collection zzn() {
        return new zzfoq(this);
    }

    @Override // com.google.android.gms.internal.ads.ew2
    final Map<K, Collection<V>> zzp() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.ads.ew2
    public final boolean zzr(Object obj) {
        return obj != null && super.zzr(obj);
    }

    @Override // com.google.android.gms.internal.ads.ew2, com.google.android.gms.internal.ads.tx2
    public final /* bridge */ /* synthetic */ Collection zzt() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.ew2, com.google.android.gms.internal.ads.tx2
    public final /* bridge */ /* synthetic */ Map zzu() {
        return this.f34072g;
    }
}
