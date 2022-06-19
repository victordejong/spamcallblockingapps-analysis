package com.google.android.gms.internal.vision;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjb.class */
public final class zzjb implements Comparable<zzjb>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zziw zzaab;
    private final Comparable zzaaf;

    /* JADX WARN: Multi-variable type inference failed */
    public zzjb(zziw zziwVar, K k, V v) {
        this.zzaab = zziwVar;
        this.zzaaf = k;
        this.value = v;
    }

    public zzjb(zziw zziwVar, Map.Entry<K, V> entry) {
        this(zziwVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzjb zzjbVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzjbVar.getKey());
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
        return equals(this.zzaaf, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzaaf;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zzaaf;
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
        this.zzaab.zzia();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzaaf);
        String valueOf2 = String.valueOf(this.value);
        return C22128a.m8671R1(valueOf2.length() + valueOf.length() + 1, valueOf, ContainerUtils.KEY_VALUE_DELIMITER, valueOf2);
    }
}
