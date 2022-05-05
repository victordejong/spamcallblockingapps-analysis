package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
final class zzfq<K> extends zzfg<K> {

    /* renamed from: h */
    private final transient zzfc<K, ?> f8431h;

    /* renamed from: i */
    private final transient zzfb<K> f8432i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfq(zzfc<K, ?> zzfcVar, zzfb<K> zzfbVar) {
        this.f8431h = zzfcVar;
        this.f8432i = zzfbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: c */
    final int mo12675c(Object[] objArr, int i) {
        return mo12679k().mo12675c(objArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@NullableDecl Object obj) {
        return this.f8431h.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: d */
    public final zzfx<K> iterator() {
        return (zzfx) mo12679k().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    /* renamed from: k */
    public final zzfb<K> mo12679k() {
        return this.f8432i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8431h.size();
    }
}
