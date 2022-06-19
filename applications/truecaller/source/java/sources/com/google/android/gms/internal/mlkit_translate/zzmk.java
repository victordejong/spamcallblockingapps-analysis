package com.google.android.gms.internal.mlkit_translate;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmk.class */
public final class zzmk implements Comparable<zzmk>, Map.Entry<K, V> {
    private final Comparable zza;
    private V zzb;
    private final /* synthetic */ zzmf zzc;

    /* JADX WARN: Multi-variable type inference failed */
    public zzmk(zzmf zzmfVar, K k, V v) {
        this.zzc = zzmfVar;
        this.zza = k;
        this.zzb = v;
    }

    public zzmk(zzmf zzmfVar, Map.Entry<K, V> entry) {
        this(zzmfVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean zza(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzmk zzmkVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzmkVar.getKey());
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
        return zza(this.zza, entry.getKey()) && zza(this.zzb, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zza;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.zzb;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zza;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.zzb;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzc.zzf();
        V v2 = this.zzb;
        this.zzb = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        return C22128a.m8671R1(valueOf2.length() + valueOf.length() + 1, valueOf, ContainerUtils.KEY_VALUE_DELIMITER, valueOf2);
    }
}
