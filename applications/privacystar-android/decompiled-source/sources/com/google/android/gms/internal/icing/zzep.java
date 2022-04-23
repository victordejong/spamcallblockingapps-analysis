package com.google.android.gms.internal.icing;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzep.class */
public final class zzep implements Comparable<zzep>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzei zzlg;
    private final Comparable zzlj;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzep(zzei zzeiVar, K k, V v) {
        this.zzlg = zzeiVar;
        this.zzlj = k;
        this.value = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzep(zzei zzeiVar, Map.Entry<K, V> entry) {
        this(zzeiVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzep zzepVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzepVar.getKey());
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
        return equals(this.zzlj, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzlj;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int i = 0;
        int hashCode = this.zzlj == null ? 0 : this.zzlj.hashCode();
        if (this.value != 0) {
            i = this.value.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzlg.zzcl();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzlj);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
