package com.google.android.gms.internal.firebase_remote_config;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjp.class */
public final class zzjp implements Comparable<zzjp>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzjk zzwy;
    private final Comparable zzxc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzjp(zzjk zzjkVar, K k, V v) {
        this.zzwy = zzjkVar;
        this.zzxc = k;
        this.value = v;
    }

    public zzjp(zzjk zzjkVar, Map.Entry<K, V> entry) {
        this(zzjkVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzjp zzjpVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzjpVar.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zzxc, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzxc;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zzxc;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.value;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzwy.zziu();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzxc);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
