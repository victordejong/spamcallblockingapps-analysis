package com.google.android.gms.internal.measurement;

import java.util.Collection;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzel.class */
abstract class zzel<K, V> implements zzfk<K, V> {
    @NullableDecl

    /* renamed from: f */
    private transient Map<K, Collection<V>> f8380f;

    /* renamed from: a */
    public boolean mo12691a(@NullableDecl Object obj) {
        for (Collection<V> collection : zza().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    abstract Map<K, Collection<V>> mo12690b();

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfk) {
            return zza().equals(((zzfk) obj).zza());
        }
        return false;
    }

    public int hashCode() {
        return zza().hashCode();
    }

    public String toString() {
        return zza().toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzfk
    public Map<K, Collection<V>> zza() {
        Map<K, Collection<V>> map = this.f8380f;
        if (map != null) {
            return map;
        }
        mo12690b();
        throw null;
    }
}
