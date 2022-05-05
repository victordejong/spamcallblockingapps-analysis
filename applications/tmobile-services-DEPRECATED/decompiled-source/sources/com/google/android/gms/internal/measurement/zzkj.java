package com.google.android.gms.internal.measurement;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkj.class */
public final class zzkj implements Comparable<zzkj>, Map.Entry<K, V> {

    /* renamed from: f */
    private final Comparable f8612f;

    /* renamed from: g */
    private V f8613g;

    /* renamed from: h */
    private final /* synthetic */ zzke f8614h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzkj(zzke zzkeVar, K k, V v) {
        this.f8614h = zzkeVar;
        this.f8612f = k;
        this.f8613g = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkj(zzke zzkeVar, Map.Entry<K, V> entry) {
        this(zzkeVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m12137a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzkj zzkjVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzkjVar.getKey());
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
        return m12137a(this.f8612f, entry.getKey()) && m12137a(this.f8613g, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f8612f;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f8613g;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8612f;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f8613g;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f8614h.m12142r();
        V v2 = this.f8613g;
        this.f8613g = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8612f);
        String valueOf2 = String.valueOf(this.f8613g);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
