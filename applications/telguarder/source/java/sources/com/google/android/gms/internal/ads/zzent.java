package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzent.class */
public final class zzent implements Comparable<zzent>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzeno zzius;
    private final Comparable zziuw;

    /* JADX WARN: Multi-variable type inference failed */
    public zzent(zzeno zzenoVar, K k, V v) {
        this.zzius = zzenoVar;
        this.zziuw = k;
        this.value = v;
    }

    public zzent(zzeno zzenoVar, Map.Entry<K, V> entry) {
        this(zzenoVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzent zzentVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzentVar.getKey());
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
        return equals(this.zziuw, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zziuw;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.zziuw;
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
        this.zzius.zzbkt();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zziuw);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb.append(valueOf2);
        return sb.toString();
    }
}
