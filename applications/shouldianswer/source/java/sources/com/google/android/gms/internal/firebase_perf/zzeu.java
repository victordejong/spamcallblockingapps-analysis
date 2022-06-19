package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzes;
import com.google.android.gms.internal.firebase-perf.zzev;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeu.class */
final class zzeu<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzes> zzrn;

    private zzeu(Map.Entry<K, zzes> entry) {
        this.zzrn = entry;
    }

    public /* synthetic */ zzeu(Map.Entry entry, zzev zzevVar) {
        this(entry);
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzrn.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzrn.getValue() == null) {
            return null;
        }
        return zzes.zzgv();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzfr) {
            return this.zzrn.getValue().zzh((zzfr) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzes zzgx() {
        return this.zzrn.getValue();
    }
}
