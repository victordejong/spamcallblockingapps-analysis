package com.google.android.gms.internal.icing;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzge.class */
public final class zzge implements Comparable<zzge>, Map.Entry<K, V> {

    /* renamed from: f */
    private final Comparable f8084f;

    /* renamed from: g */
    private V f8085g;

    /* renamed from: h */
    private final /* synthetic */ zzfz f8086h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzge(zzfz zzfzVar, K k, V v) {
        this.f8086h = zzfzVar;
        this.f8084f = k;
        this.f8085g = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzge(zzfz zzfzVar, Map.Entry<K, V> entry) {
        this(zzfzVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m13622a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzge zzgeVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzgeVar.getKey());
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
        return m13622a(this.f8084f, entry.getKey()) && m13622a(this.f8085g, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f8084f;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f8085g;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8084f;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f8085g;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f8086h.m13627r();
        V v2 = this.f8085g;
        this.f8085g = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8084f);
        String valueOf2 = String.valueOf(this.f8085g);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
